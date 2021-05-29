CREATE OR REPLACE TRIGGER &TRANSFORMPV_USER..TRG_ETL_MASTER
/*****************************************************************************************
Company             : Vitrana
Author              : Pavan Kumar
Version Number      : 1.0
Description         : This trigger having the code related to maintain DML operation history on corresponding table.
Last Modified Date  : 27-OCT-2015
******************************************************************************************/
BEFORE INSERT OR UPDATE
ON &TRANSFORMPV_USER..ETL_MASTER 
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
   LN_OPERATION_TYPE       NUMBER;
   LN_AUDIT_ID             NUMBER;
   LN_PAGE_ID              NUMBER;
   LD_SYSDATE              DATE   := SYSDATE;
   LD_EFFECTIVE_END_DATE   DATE    := TO_DATE ('12/31/9999', 'MM/DD/YYYY HH24:MI:SS');
   LV_VERSION_NUMBER       NUMBER;
   LV_NEW_VERSION_NUMBER   NUMBER;
BEGIN
   LN_AUDIT_ID              := PKG_AUDIT_LOG.F_GET_AUDIT_ID;

   BEGIN
      SELECT PAGE_ID
        INTO LN_PAGE_ID
        FROM E2B_CFG_AUDIT_TAB_RELATIONS
       WHERE TABLE_NAME = 'ETL_MASTER';
   EXCEPTION
      WHEN NO_DATA_FOUND
      THEN
         LN_PAGE_ID    := NULL;
   END;

   IF INSERTING
   THEN
      LN_OPERATION_TYPE    := 1;
   ELSIF UPDATING
   THEN
      LN_OPERATION_TYPE    := 2;
   END IF;

   IF :OLD.CURRENT_VERSION IS NULL
   THEN
      :NEW.CURRENT_VERSION    := 1;
   ELSE
      :NEW.CURRENT_VERSION    := :OLD.CURRENT_VERSION + 1;
   END IF;

   LV_NEW_VERSION_NUMBER    := :NEW.CURRENT_VERSION;
   LV_VERSION_NUMBER        :=
                    PKG_AUDIT_LOG.F_GET_VERSION_NUMBER (LV_NEW_VERSION_NUMBER);

   UPDATE ETL_MASTER_HIST
      SET EFFECTIVE_END_DATE = LD_SYSDATE,
          CURRENT_FLG = 0
    WHERE CURRENT_FLG = 1 AND ETL_ID = :NEW.ETL_ID;

   INSERT INTO ETL_MASTER_HIST
               (ETL_ID, ETL_NAME, DESCRIPTION, ENABLED,
                DELETED_DATE, CREATED_DATE, MODIFIED_DATE,
                MAX_BATCHES, FREQUENCY, START_DATE,
                DAYS_IN_WEEK, DELETED, VERSION_NUMBER,
                AUDIT_ID, OPERATION_TYPE, EFFECTIVE_START_DATE,
                EFFECTIVE_END_DATE, CURRENT_FLG, INSERT_DATE, CREATED_BY, MODIFIED_BY
               )
        VALUES (:NEW.ETL_ID, :NEW.ETL_NAME, :NEW.DESCRIPTION, :NEW.ENABLED,
                :NEW.DELETED_DATE, :NEW.CREATED_DATE, :NEW.MODIFIED_DATE,
                :NEW.MAX_BATCHES, :NEW.FREQUENCY, :NEW.START_DATE,
                :NEW.DAYS_IN_WEEK, :NEW.DELETED, LV_VERSION_NUMBER,
                LN_AUDIT_ID, CASE WHEN :NEW.DELETED <> :OLD.DELETED AND LN_OPERATION_TYPE = 2 THEN
                3 
                ELSE 
                LN_OPERATION_TYPE END, LD_SYSDATE,
                LD_EFFECTIVE_END_DATE, 1, LD_SYSDATE, :NEW.CREATED_BY, :NEW.MODIFIED_BY
               );
END;
/


