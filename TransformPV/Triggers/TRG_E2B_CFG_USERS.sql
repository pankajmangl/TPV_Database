CREATE OR REPLACE TRIGGER &TRANSFORMPV_USER..TRG_E2B_CFG_USERS
BEFORE INSERT OR UPDATE
ON &TRANSFORMPV_USER..E2B_CFG_USERS 
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
       WHERE TABLE_NAME = 'E2B_CFG_USERS';
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
   LV_VERSION_NUMBER        := LV_NEW_VERSION_NUMBER;
                    --PKG_AUDIT_LOG.F_GET_VERSION_NUMBER (LV_NEW_VERSION_NUMBER);

   UPDATE E2B_CFG_USERS_HIST
      SET EFFECTIVE_END_DATE = LD_SYSDATE,
          CURRENT_FLG = 0
    WHERE CURRENT_FLG = 1 AND USER_ID = :NEW.USER_ID;

   INSERT INTO E2B_CFG_USERS_HIST
               (USER_ID, USER_FULLNAME, USER_NAME,
                USER_EMAIL, ACCOUNT_DISABLED, ENTERPRISE_ID,
                PWD_CHANGE_ON_IST_LOGIN, E2BR3APP_PASSWORD,
                CREATED_DATE, CREATED_BY, MODIFIED_DATE,
                MODIFIED_BY, SAFETY_USER_ID, DELETED,
                LDAP_USER, LDAP_SERVER_ID, ESM_USER,
                GLOBAL_ADMIN, WORKFLOW_MGR, DUP_CHECK_NAME,
                VERSION_NUMBER, AUDIT_ID, OPERATION_TYPE,
                EFFECTIVE_START_DATE, EFFECTIVE_END_DATE, CURRENT_FLG,
                INSERT_DATE
               )
        VALUES (:NEW.USER_ID, :NEW.USER_FULLNAME, :NEW.USER_NAME,
                :NEW.USER_EMAIL, :NEW.ACCOUNT_DISABLED, :NEW.ENTERPRISE_ID,
                :NEW.PWD_CHANGE_ON_IST_LOGIN, :NEW.E2BR3APP_PASSWORD,
                :NEW.CREATED_DATE, :NEW.CREATED_BY, :NEW.MODIFIED_DATE,
                :NEW.MODIFIED_BY, :NEW.SAFETY_USER_ID, :NEW.DELETED,
                :NEW.LDAP_USER, :NEW.LDAP_SERVER_ID, :NEW.ESM_USER,
                :NEW.GLOBAL_ADMIN, :NEW.WORKFLOW_MGR, :NEW.DUP_CHECK_NAME,
                LV_VERSION_NUMBER, LN_AUDIT_ID, CASE WHEN :NEW.DELETED <> :OLD.DELETED AND LN_OPERATION_TYPE = 2 THEN
                3 
                ELSE 
                LN_OPERATION_TYPE END,
                LD_SYSDATE, LD_EFFECTIVE_END_DATE, 1,
                LD_SYSDATE
               );
END;
/


