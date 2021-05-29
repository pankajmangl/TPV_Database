CREATE OR REPLACE TRIGGER &TRANSFORMPV_USER..TRG_ETL_CFG_USER_GROUPS
/*****************************************************************************************
Company             : Vitrana
Author              : Pavan Kumar
Version Number      : 1.0
Description         : This trigger having the code related to maintain DML operation history on corresponding table.
Last Modified Date  : 27-OCT-2015
******************************************************************************************/
   BEFORE INSERT OR UPDATE
   ON &TRANSFORMPV_USER..ETL_CFG_USER_GROUPS    FOR EACH ROW
DECLARE
   LN_OPERATION_TYPE       NUMBER;
   LN_AUDIT_ID             NUMBER;
   LN_PAGE_ID              NUMBER;
   LD_SYSDATE              DATE   := SYSDATE;
   LD_EFFECTIVE_END_DATE   DATE    := TO_DATE ('12/31/9999', 'MM/DD/YYYY HH24:MI:SS');
   LV_VERSION_NUMBER       NUMBER;
   LV_NEW_VERSION_NUMBER   NUMBER;
BEGIN
   LN_AUDIT_ID          := PKG_AUDIT_LOG.F_GET_AUDIT_ID;

   BEGIN
      SELECT PAGE_ID
        INTO LN_PAGE_ID
        FROM E2B_CFG_AUDIT_TAB_RELATIONS
       WHERE TABLE_NAME = 'ETL_CFG_USER_GROUPS';
   EXCEPTION
      WHEN NO_DATA_FOUND
      THEN
         LN_PAGE_ID    := NULL;
   END;

   

   LV_VERSION_NUMBER    :=
                    PKG_AUDIT_LOG.F_GET_VERSION_NUMBER (LV_NEW_VERSION_NUMBER);

   UPDATE ETL_CFG_USER_GROUPS_HIST
      SET EFFECTIVE_END_DATE = LD_SYSDATE,
          CURRENT_FLG = 0
    WHERE CURRENT_FLG = 1 AND ETL_GROUP_ID = :NEW.ETL_GROUP_ID;


    IF INSERTING
       THEN
          LN_OPERATION_TYPE    := 1;
          
          INSERT INTO ETL_CFG_USER_GROUPS_HIST
               (ETL_GROUP_ID, ETL_ID, GROUP_ID, DELETED,
                CREATED_BY, CREATED_DATE, MODIFIED_BY,
                MODIFIED_DATE, VERSION_NUMBER, AUDIT_ID,
                OPERATION_TYPE, EFFECTIVE_START_DATE, EFFECTIVE_END_DATE,
                CURRENT_FLG, INSERT_DATE
               )
        VALUES (:NEW.ETL_GROUP_ID, :NEW.ETL_ID, :NEW.GROUP_ID, :NEW.DELETED,
                :NEW.CREATED_BY, :NEW.CREATED_DATE, :NEW.MODIFIED_BY,
                :NEW.MODIFIED_DATE, LV_VERSION_NUMBER, LN_AUDIT_ID,
                LN_OPERATION_TYPE, LD_SYSDATE, LD_EFFECTIVE_END_DATE,
                1, LD_SYSDATE
               );
               
         P_ETL_CFG_USER_GROUPS_HIST(:NEW.ETL_GROUP_ID , LV_VERSION_NUMBER, LN_AUDIT_ID,LN_OPERATION_TYPE );
       ELSIF UPDATING
       THEN
          LN_OPERATION_TYPE    := 2;
          
          
          INSERT INTO ETL_CFG_USER_GROUPS_HIST
               (ETL_GROUP_ID, ETL_ID, GROUP_ID, DELETED,
                CREATED_BY, CREATED_DATE, MODIFIED_BY,
                MODIFIED_DATE, VERSION_NUMBER, AUDIT_ID,
                OPERATION_TYPE, EFFECTIVE_START_DATE, EFFECTIVE_END_DATE,
                CURRENT_FLG, INSERT_DATE
               )
        VALUES (:NEW.ETL_GROUP_ID, :NEW.ETL_ID, :NEW.GROUP_ID, :NEW.DELETED,
                :NEW.CREATED_BY, :NEW.CREATED_DATE, :NEW.MODIFIED_BY,
                :NEW.MODIFIED_DATE, LV_VERSION_NUMBER, LN_AUDIT_ID,
                CASE WHEN :NEW.DELETED <> :OLD.DELETED THEN
                3 
                ELSE 
                LN_OPERATION_TYPE END 
                , LD_SYSDATE, LD_EFFECTIVE_END_DATE,
                1, LD_SYSDATE
               );
          
          P_ETL_CFG_USER_GROUPS_HIST(:NEW.ETL_GROUP_ID , LV_VERSION_NUMBER, LN_AUDIT_ID,LN_OPERATION_TYPE );
               
       END IF;
     
END;
/


