CREATE OR REPLACE PACKAGE BODY &TRANSFORMPV_USER..PKG_LDAP
AS
/*****************************************************************************************
Company             : Vitrana
Author              : Pavan Sharma
Version Number      : 1.0
Description         : This package having code related to LDAP configuration.
Last Modified Date  : 06-DEC-2019
******************************************************************************************/
   /*************************************************************************************
	Description     : This procedure is used to update or delete LDAP server configuration.
	**************************************************************************************/
   PROCEDURE P_DELETE_LDAP (
      PI_SERVER_ID_LIST   IN   PKG_COMMON_UTILITIES.T_STRING_TAB,
      PI_USER_ID          IN   VARCHAR2
   )
   IS
      V_MSG            VARCHAR2 (4000);
      EXP_DEPENDENCY   EXCEPTION;
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID);
      PKG_COMMON_UTILITIES.GV_SQL_TYP_TAB    :=
             PKG_COMMON_UTILITIES.F_CONV_PLSQL_TO_SQL_TAB (PI_SERVER_ID_LIST);

      BEGIN
         SELECT LISTAGG( USER_NAME,', ')
               WITHIN GROUP (ORDER BY LDAP.SERVER_ID, USER_NAME )
         INTO   V_MSG
           FROM E2B_LDAP_SERVERS LDAP,
                E2B_CFG_USERS ECU,
                (SELECT COLUMN_VALUE SERVER_ID
                   FROM TABLE (PKG_COMMON_UTILITIES.GV_SQL_TYP_TAB)) T2
          WHERE LDAP.SERVER_ID = T2.SERVER_ID
            AND LDAP.DELETED = 0
            AND ECU.DELETED = 0
            AND LDAP.SERVER_ID = ECU.LDAP_SERVER_ID;

         IF LENGTH (TRIM (V_MSG)) > 0
         THEN
            RAISE EXP_DEPENDENCY;
         END IF;
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            NULL;
      END;

      FOR I IN PI_SERVER_ID_LIST.FIRST .. PI_SERVER_ID_LIST.LAST
      LOOP
         UPDATE E2B_LDAP_SERVERS
            SET DELETED = 1,
                MODIFIED_BY = PI_USER_ID,
                MODIFIED_DATE = SYSDATE,
                DUP_CHECK_NAME = UPPER (SERVER_NAME) || '_' || SERVER_ID
          WHERE SERVER_ID = PI_SERVER_ID_LIST (I);
      END LOOP;
   EXCEPTION
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
      THEN
         RAISE_APPLICATION_ERROR
                           (-20002,
                            PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE (20002,
                                                                      SQLERRM
                                                                     )
                           );
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_ADMIN_DISABLE
      THEN
         RAISE_APPLICATION_ERROR
                           (-20003,
                            PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE (20003,
                                                                      SQLERRM
                                                                     )
                           );
      WHEN EXP_DEPENDENCY THEN
         RAISE_APPLICATION_ERROR
                           (-20001,
                            'You can not delete the selected LDAP Server(s).One or more user(s) are associated. '||V_MSG
                           );
   END P_DELETE_LDAP;
   /**************************************************************************************
	Description     : This procedure is used to save the ldap configuration.
	**************************************************************************************/
   PROCEDURE P_SAVE_LDAP (
      PI_SERVER_ID         IN   NUMBER,
      PI_SERVER_ALIAS      IN   VARCHAR2,
      PI_SERVER_NAME       IN   VARCHAR2,
      PI_SERVER_PORT       IN   NUMBER,
      PI_BASE_DN           IN   VARCHAR2,
      PI_TIME_OUT_SEC      IN   NUMBER,
      PI_SEARCH_USER_DN    IN   VARCHAR2,
      PI_SEARCH_PASSWORD   IN   VARCHAR2,
      PI_SEARCH_KEY        IN   VARCHAR2,
      PI_SSL               IN   NUMBER,
      PI_ANONYMOUS         IN   NUMBER,
      PI_USER_ID           IN   VARCHAR2
   )
   IS
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID);

      IF PI_SERVER_ID IS NULL
      THEN
         INSERT INTO E2B_LDAP_SERVERS
                     (SERVER_ID, SERVER_ALIAS,
                      SERVER_NAME, SERVER_PORT, BASE_DN,
                      TIME_OUT_SEC, SEARCH_USER_DN,
                      SEARCH_PASSWORD, SEARCH_KEY, SSL,
                      ANONYMOUS, DELETED, CREATED_DATE, CREATED_BY,
                      MODIFIED_DATE, MODIFIED_BY, DUP_CHECK_NAME
                     )
              VALUES (LDAP_SERVER_ID_SEQ.NEXTVAL, PI_SERVER_ALIAS,
                      PI_SERVER_NAME, PI_SERVER_PORT, PI_BASE_DN,
                      PI_TIME_OUT_SEC, PI_SEARCH_USER_DN,
                      PI_SEARCH_PASSWORD, PI_SEARCH_KEY, PI_SSL,
                      PI_ANONYMOUS, 0, SYSDATE, PI_USER_ID,
                      SYSDATE, PI_USER_ID, UPPER (PI_SERVER_NAME)
                     );
      ELSE
         UPDATE E2B_LDAP_SERVERS
            SET SERVER_ALIAS = PI_SERVER_ALIAS,
                SERVER_NAME = PI_SERVER_NAME,
                SERVER_PORT = PI_SERVER_PORT,
                BASE_DN = PI_BASE_DN,
                TIME_OUT_SEC = PI_TIME_OUT_SEC,
                SEARCH_USER_DN = PI_SEARCH_USER_DN,
                SEARCH_PASSWORD =
                   DECODE (PI_SEARCH_PASSWORD,
                           NULL, SEARCH_PASSWORD,
                           PI_SEARCH_PASSWORD
                          ),
                SEARCH_KEY = PI_SEARCH_KEY,
                SSL = PI_SSL,
                ANONYMOUS = PI_ANONYMOUS,
                MODIFIED_DATE = SYSDATE,
                MODIFIED_BY = PI_USER_ID,
                DUP_CHECK_NAME = UPPER (PI_SERVER_NAME)
          WHERE SERVER_ID = PI_SERVER_ID;
      END IF;
   EXCEPTION
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
      THEN
         RAISE_APPLICATION_ERROR
                           (-20002,
                            PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE (20002,
                                                                      SQLERRM
                                                                     )
                           );
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_ADMIN_DISABLE
      THEN
         RAISE_APPLICATION_ERROR
                           (-20003,
                            PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE (20003,
                                                                      SQLERRM
                                                                     )
                           );
      WHEN DUP_VAL_ON_INDEX
      THEN
         RAISE_APPLICATION_ERROR
            (-20001,
             PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE (20001,
                                                          'This LDAP Server ('
                                                       || PI_SERVER_NAME
                                                       || ') already exists.'
                                                      )
            );
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR
            (-20001,
             PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE
                (20001,
                    'Following error occured while creating/modifing LDAP Server - '
                 || SQLERRM
                )
            );
   END P_SAVE_LDAP;
   /**************************************************************************************
	Description     : This procedure is used to get all the non deleted ldap server configuration.
	**************************************************************************************/
   PROCEDURE P_GET_LDAP (PO_RC_LDAP OUT SYS_REFCURSOR)
   IS
   BEGIN
      OPEN PO_RC_LDAP FOR
         SELECT   SERVER_ID, SERVER_ALIAS, SERVER_NAME, SERVER_PORT, BASE_DN,
                  TIME_OUT_SEC, SEARCH_USER_DN, SEARCH_PASSWORD, SEARCH_KEY,
                  SSL, ANONYMOUS
             FROM E2B_LDAP_SERVERS
            WHERE DELETED = 0
         ORDER BY MODIFIED_DATE DESC;
   END P_GET_LDAP;
END PKG_LDAP;
/