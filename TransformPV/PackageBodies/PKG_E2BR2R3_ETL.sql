CREATE OR REPLACE PACKAGE BODY &TRANSFORMPV_USER..PKG_E2BR2R3_ETL
AS
/*****************************************************************************************
Company             : Vitrana
Author              : Raju Kataria
Version Number      : 1.0
Description         : This package having code related to user configuration.
Last Modified Date  : 06-DEC-2019
******************************************************************************************/   
 /***************************************************************************************
	Description     : This Procedure having code related to load Argus safety user data to 
				      transformpv application database.
	**************************************************************************************/
 PROCEDURE P_LOAD_USER_INFO
   IS
   BEGIN
      MERGE INTO E2B_CFG_USERS TGT
         USING (SELECT SRC.*
                  FROM SYN_CFG_USERS SRC, VW_USER_DIFF VUD
                 WHERE SRC.USER_ID = VUD.USER_ID) SRC
         ON (TGT.SAFETY_USER_ID = SRC.USER_ID)
         WHEN MATCHED THEN
            UPDATE
               SET TGT.USER_FULLNAME =
                                   NVL (SRC.USER_FULLNAME, TGT.USER_FULLNAME),
                   TGT.USER_NAME = NVL (SRC.USER_NAME, TGT.USER_NAME),
                   TGT.USER_EMAIL = NVL (SRC.USER_EMAIL, TGT.USER_EMAIL),
                   TGT.ACCOUNT_DISABLED =
                             NVL (SRC.ACCOUNT_DISABLED, TGT.ACCOUNT_DISABLED),
                   TGT.ENTERPRISE_ID = SRC.ENTERPRISE_ID,
                   TGT.MODIFIED_DATE = SYSDATE, TGT.MODIFIED_BY = 1,
                   TGT.DELETED = DECODE (SRC.DELETED, NULL, 0, 1),
                   --TGT.LDAP_USER = NVL (SRC.LDAP_USER, TGT.LDAP_USER),
                   TGT.ESM_USER = NVL (SRC.ESM_USER, 0),
                   TGT.GLOBAL_ADMIN =
                                     NVL (SRC.GLOBAL_ADMIN, TGT.GLOBAL_ADMIN),
                   TGT.WORKFLOW_MGR =
                                     NVL (SRC.WORKFLOW_MGR, TGT.WORKFLOW_MGR),
                   TGT.DUP_CHECK_NAME =
                                   UPPER (NVL (SRC.USER_NAME, TGT.USER_NAME))
         WHEN NOT MATCHED THEN
            INSERT (TGT.USER_ID, TGT.USER_FULLNAME, TGT.USER_NAME,
                    TGT.USER_EMAIL, TGT.ACCOUNT_DISABLED, TGT.ENTERPRISE_ID,
                    TGT.PWD_CHANGE_ON_IST_LOGIN, TGT.E2BR3APP_PASSWORD,
                    TGT.CREATED_DATE, TGT.CREATED_BY, TGT.MODIFIED_DATE,
                    TGT.MODIFIED_BY, TGT.SAFETY_USER_ID, TGT.DELETED,
                    --TGT.LDAP_USER,
                    TGT.ESM_USER, TGT.GLOBAL_ADMIN,
                    TGT.WORKFLOW_MGR, TGT.DUP_CHECK_NAME)
            VALUES (USER_ID_SEQ.NEXTVAL, SRC.USER_FULLNAME, SRC.USER_NAME,
                    SRC.USER_EMAIL, SRC.ACCOUNT_DISABLED, SRC.ENTERPRISE_ID,
                    1,
                    PKG_CONTEXT_API.F_GET_PARAMETER ('DEFAULT_USER_PASSWORD'),
                    SYSDATE, 1, SYSDATE, 1, SRC.USER_ID,
                    DECODE (SRC.DELETED, NULL, 0, 1), --SRC.LDAP_USER,
                    NVL (SRC.ESM_USER, 0), SRC.GLOBAL_ADMIN,
                    SRC.WORKFLOW_MGR, UPPER (SRC.USER_NAME));

		PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED    := SQL%ROWCOUNT;
   EXCEPTION
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR
                            (-20001,
                             PKG_LOGGER.F_EXCEPTION_TEXT (   $$PLSQL_UNIT
                                                          || '.P_LOAD_USER_INFO'
                                                         )
                            );
   END P_LOAD_USER_INFO;
END PKG_E2BR2R3_ETL;
/
