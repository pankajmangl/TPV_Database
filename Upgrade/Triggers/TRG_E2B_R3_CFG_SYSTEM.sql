CREATE OR REPLACE TRIGGER &TRANSFORMPV_USER..TRG_E2B_R3_CFG_SYSTEM
/*****************************************************************************************
Company             : Vitrana
Author              : Saddam Khan
Version Number      : 1.1
Description         : This trigger having the code related to maintain DML operation history on corresponding table.
Last Modified Date  : 05-DEC-2017
*****************************************************************************************/
BEFORE INSERT OR UPDATE
ON &TRANSFORMPV_USER..E2B_R3_CFG_SYSTEM
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
   LN_OPERATION_TYPE       NUMBER;
   LN_AUDIT_ID             NUMBER;
   LN_PAGE_ID              NUMBER;
   LD_SYSDATE              DATE   := SYSDATE;
   LD_EFFECTIVE_END_DATE   DATE
                           := TO_DATE ('12/31/9999', 'MM/DD/YYYY HH24:MI:SS');
   LV_VERSION_NUMBER       NUMBER;
   LV_NEW_VERSION_NUMBER   NUMBER;
BEGIN
   LN_AUDIT_ID              := PKG_AUDIT_LOG.F_GET_AUDIT_ID;

   BEGIN
      SELECT PAGE_ID
        INTO LN_PAGE_ID
        FROM E2B_CFG_AUDIT_TAB_RELATIONS
       WHERE TABLE_NAME = 'E2B_R3_CFG_SYSTEM';
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

   UPDATE E2B_R3_CFG_SYSTEM_HIST
      SET EFFECTIVE_END_DATE = LD_SYSDATE,
          CURRENT_FLG = 0
    WHERE CURRENT_FLG = 1 AND APPLICATION_ID = :NEW.APPLICATION_ID;

   INSERT INTO E2B_R3_CFG_SYSTEM_HIST
               (APPLICATION, BFC_IN_FOLDER, BFC_OUT_FOLDER,
                BFC_BKP_FOLDER, ERROR_FOLDER, LOG_FOLDER,
                ACK_IDENTIFIER, CREATED_BY, CREATED_DATE,
                MODIFIED_BY, MODIFIFED_DATE, DELETED,
                DELETED_DATE, HTML_FOLDER,
                PDF_TEMPLATE_FOLDER, APPLICATION_ID,
                VERSION_NUMBER, AUDIT_ID, OPERATION_TYPE,
                EFFECTIVE_START_DATE, EFFECTIVE_END_DATE, CURRENT_FLG,
                INSERT_DATE,BINARY_FOLDER
               )
        VALUES (:NEW.APPLICATION, :NEW.BFC_IN_FOLDER, :NEW.BFC_OUT_FOLDER,
                :NEW.BFC_BKP_FOLDER, :NEW.ERROR_FOLDER, :NEW.LOG_FOLDER,
                :NEW.ACK_IDENTIFIER, :NEW.CREATED_BY, :NEW.CREATED_DATE,
                :NEW.MODIFIED_BY, :NEW.MODIFIFED_DATE, :NEW.DELETED,
                :NEW.DELETED_DATE, :NEW.HTML_FOLDER,
                :NEW.PDF_TEMPLATE_FOLDER, :NEW.APPLICATION_ID,
                LV_VERSION_NUMBER, LN_AUDIT_ID, CASE WHEN :NEW.DELETED <> :OLD.DELETED AND LN_OPERATION_TYPE = 2 THEN
                3
                ELSE
                LN_OPERATION_TYPE END,
                LD_SYSDATE, LD_EFFECTIVE_END_DATE, 1,
                LD_SYSDATE,:NEW.BINARY_FOLDER
               );
END;
/
	