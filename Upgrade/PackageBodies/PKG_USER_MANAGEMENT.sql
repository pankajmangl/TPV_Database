CREATE OR REPLACE PACKAGE BODY &TRANSFORMPV_USER..PKG_USER_MANAGEMENT
/*******************************************************************************************************************************************
    NAME           : PKG_USER_CONFIG
    TYPE           : PACKAGE BODY
    DESCRIPTION    : PACKAGE BODY FOR INSERTING, UPDATING AND DELETING USER LEVEL IN DATABASE TABLE
    SOURCES        : N/A
    UPDATES        : 06-NOV-2014   [PS] V0.01 INITIAL VERSION, SEE DESCRIPTION ABOVE.
*******************************************************************************************************************************************/
AS
/*******************************************************************************************************************************************
    NAME           : P_DELETEUSERS
    TYPE           : PROCEDURE
    DESCRIPTION    : LOGICALLY DELETE USER LEVEL FROM DATABASE TABLE FOR THE USER LEVEL ID(S) PASSED TO PROCEDURE
    PARAMETERS     : PI_USER_LEVEL_ID_LIST
    RETURN         : N/A
    UPDATES        : 06-NOV-2014   [PS] V0.01 INITIAL VERSION, SEE DESCRIPTION ABOVE.
*******************************************************************************************************************************************/
   PROCEDURE P_DELETEUSERS (
      PI_USER_ID_LIST   IN   PKG_COMMON_UTILITIES.T_STRING_TAB,
      PI_USER_ID        IN   VARCHAR2
   )
   IS
      EXP_SUICIDE   EXCEPTION;
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID);

      FOR I IN PI_USER_ID_LIST.FIRST .. PI_USER_ID_LIST.LAST
      LOOP
         UPDATE E2B_CFG_USERS
            SET DELETED = 1,
                MODIFIED_BY = PI_USER_ID,
                MODIFIED_DATE = SYSDATE,
                DUP_CHECK_NAME = UPPER (USER_NAME) || PI_USER_ID_LIST (I)
          WHERE USER_ID = PI_USER_ID_LIST (I);

         IF PI_USER_ID_LIST (I) = PI_USER_ID
         THEN
            RAISE EXP_SUICIDE;
         END IF;
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
      WHEN EXP_SUICIDE
      THEN
         RAISE_APPLICATION_ERROR
                           (-20005,
                            PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE (20005,
                                                                      SQLERRM
                                                                     )
                           );
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR
               (-20001,
                   'Following error occured while deleting user account(s)- '
                || PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE (20001, SQLERRM)
               );
   END P_DELETEUSERS;

   /*******************************************************************************************************************************************
       NAME           : P_GETUSERDATA
       TYPE           : PROCEDURE
       DESCRIPTION    : RETURN ALL NON-DELETED ROWS FOR USER
       PARAMETERS     :       PI_USER_ID           IN       NUMBER,
                              PO_RC_USRDTL         OUT      SYS_REFCURSOR,
                              PO_RC_LDAP_SERVERS   OUT      SYS_REFCURSOR

       RETURN         : N/A
       UPDATES        : 06-NOV-2014   [PS] V0.01 INITIAL VERSION, SEE DESCRIPTION ABOVE.
   *******************************************************************************************************************************************/
   PROCEDURE P_GETUSERDATA (
      PI_USER_ID           IN       NUMBER,
      PO_RC_USRDTL         OUT      SYS_REFCURSOR,
      PO_RC_LDAP_SERVERS   OUT      SYS_REFCURSOR
   )
   IS
   BEGIN
      OPEN PO_RC_USRDTL FOR
         SELECT   E.USER_ID, E.USER_FULLNAME, E.USER_NAME, E.USER_EMAIL,
                  E.ACCOUNT_DISABLED, E.LDAP_USER, E.ESM_USER,
                  E.PWD_CHANGE_ON_IST_LOGIN, E.LDAP_SERVER_ID, E.R3_VIEW
             FROM E2B_CFG_USERS E
            WHERE E.USER_ID =
                             DECODE (PI_USER_ID,
                                     NULL, E.USER_ID,
                                     PI_USER_ID
                                    )
              AND E.DELETED = 0
         ORDER BY E.MODIFIED_DATE DESC, USER_NAME;

      OPEN PO_RC_LDAP_SERVERS FOR
         SELECT   SERVER_ID, SERVER_NAME
             FROM E2B_LDAP_SERVERS
            WHERE DELETED = 0
         ORDER BY SERVER_NAME;
   END P_GETUSERDATA;

 /*******************************************************************************************************************************************
       NAME           : P_SAVEUSRDTL
       TYPE           : PROCEDURE
       DESCRIPTION    : This procedure is used to save the user details in DB tables.
       PARAMETERS     :       PI_USER_ID                  IN   NUMBER,
                              PI_USERNAME                 IN   VARCHAR2,
                              PI_USER_FULLNAME            IN   VARCHAR2,
                              PI_USER_EMAIL               IN   VARCHAR2,
                              PI_USER_PASSWORD            IN   VARCHAR2,
                              PI_DISABLE                  IN   NUMBER,
                              PI_FORCE_PWD_CHNG_ONLOGIN   IN   NUMBER,
                              PI_LOGIN_USER_ID            IN   NUMBER,
                              PI_LDAP_ENABLED             IN   NUMBER,
                              PI_ADMIN                    IN   NUMBER,
                              PI_LDAP_SERVER_ID           IN   NUMBER

       RETURN         : N/A
       UPDATES        : 06-NOV-2014   [PS] V0.01 INITIAL VERSION, SEE DESCRIPTION ABOVE.
   *******************************************************************************************************************************************/
   PROCEDURE P_SAVEUSRDTL (
      PI_USER_ID                  IN   NUMBER,
      PI_USERNAME                 IN   VARCHAR2,
      PI_USER_FULLNAME            IN   VARCHAR2,
      PI_USER_EMAIL               IN   VARCHAR2,
      PI_USER_PASSWORD            IN   VARCHAR2,
      PI_DISABLE                  IN   NUMBER,
      PI_FORCE_PWD_CHNG_ONLOGIN   IN   NUMBER,
      PI_LOGIN_USER_ID            IN   NUMBER,
      PI_LDAP_ENABLED             IN   NUMBER,
      PI_ADMIN                    IN   NUMBER,
      PI_LDAP_SERVER_ID           IN   NUMBER,
      PI_R3_VIEW                  IN   NUMBER
   )
   IS
      V_Q_USER_ID   NUMBER (10);
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_LOGIN_USER_ID);

      IF PI_USER_ID IS NULL
      THEN
         INSERT INTO E2B_CFG_USERS
                     (USER_ID, USER_NAME, USER_FULLNAME,
                      USER_EMAIL,
                      E2BR3APP_PASSWORD,
                      PWD_CHANGE_ON_IST_LOGIN, ACCOUNT_DISABLED,
                      CREATED_BY, MODIFIED_BY, CREATED_DATE, MODIFIED_DATE,
                      DELETED, ENTERPRISE_ID, WORKFLOW_MGR, LDAP_USER,
                      ESM_USER, LDAP_SERVER_ID, DUP_CHECK_NAME, R3_VIEW
                     )
              VALUES (USER_ID_SEQ.NEXTVAL, PI_USERNAME, PI_USER_FULLNAME,
                      PI_USER_EMAIL,
                      (CASE
                          WHEN PI_LDAP_ENABLED = 0
                             THEN PI_USER_PASSWORD
                       END
                      ),
                      PI_FORCE_PWD_CHNG_ONLOGIN, PI_DISABLE,
                      PI_LOGIN_USER_ID, PI_LOGIN_USER_ID, SYSDATE, SYSDATE,
                      0, 1, DECODE(PI_ADMIN,1,1,0), PI_LDAP_ENABLED,
                      PI_ADMIN, PI_LDAP_SERVER_ID, UPPER (PI_USERNAME), PI_R3_VIEW
                     );
      ELSE
         UPDATE E2B_CFG_USERS
            SET USER_NAME = PI_USERNAME,
                USER_FULLNAME = PI_USER_FULLNAME,
                USER_EMAIL = PI_USER_EMAIL,
                E2BR3APP_PASSWORD =
                   DECODE (PI_USER_PASSWORD,
                           NULL, E2BR3APP_PASSWORD,
                           PI_USER_PASSWORD
                          ),
                PWD_CHANGE_ON_IST_LOGIN = PI_FORCE_PWD_CHNG_ONLOGIN,
                ACCOUNT_DISABLED = PI_DISABLE,
                MODIFIED_DATE = SYSDATE,
                MODIFIED_BY = PI_LOGIN_USER_ID,
                LDAP_USER = PI_LDAP_ENABLED,
                ESM_USER = PI_ADMIN,
                LDAP_SERVER_ID = PI_LDAP_SERVER_ID,
                DUP_CHECK_NAME = UPPER (PI_USERNAME),
                WORKFLOW_MGR = DECODE(PI_ADMIN,1,1,0),
                R3_VIEW = PI_R3_VIEW
          WHERE USER_ID = PI_USER_ID;
      END IF;
   EXCEPTION
      WHEN DUP_VAL_ON_INDEX
      THEN
         RAISE_APPLICATION_ERROR
             (-20001,
              PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE (20001,
                                                           'This User name ('
                                                        || PI_USERNAME
                                                        || ') already exist.'
                                                       )
             );
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
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR
            (-20001,
             PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE
                       (20002,
                           'Following error occured while creating new user- '
                        || SQLERRM
                       )
            );
   END P_SAVEUSRDTL;

/*******************************************************************************************************************************************
       NAME           : P_VALIDATE_LOGIN
       TYPE           : PROCEDURE
       DESCRIPTION    : This procedure is used to verify the user credentials for login into application.
       PARAMETERS     :       PI_USER_NAME             IN       VARCHAR2,
                              PI_USER_PWD              IN       VARCHAR2,
                              PO_RC_USER_INFO          OUT      SYS_REFCURSOR,
                              PO_RC_LDAP_SERVER_INFO   OUT      SYS_REFCURSOR

       RETURN         : N/A
       UPDATES        : 06-NOV-2014   [PS] V0.01 INITIAL VERSION, SEE DESCRIPTION ABOVE.
   *******************************************************************************************************************************************/
   PROCEDURE P_VALIDATE_LOGIN (
      PI_USER_NAME             IN       VARCHAR2,
      PI_USER_PWD              IN       VARCHAR2,
      PO_RC_USER_INFO          OUT      SYS_REFCURSOR,
      PO_RC_LDAP_SERVER_INFO   OUT      SYS_REFCURSOR
   )
   IS
      V_USER_ID                   NUMBER;
      V_USER_NAME                 VARCHAR2 (500);
      V_USER_FULLNAME             VARCHAR2 (500);
      V_GLOBAL_ADMIN              NUMBER;
      V_PWD_CHANGE_ON_IST_LOGIN   NUMBER;
      V_STATUS                    NUMBER;
      V_LDAP_USER                 NUMBER;
      V_LDAP_SERVER_ID            NUMBER;
      V_ESM_USER                  NUMBER;
      V_DELETED                   NUMBER;
      V_WORKFLOW_MGR              NUMBER;
      V_ACCOUNT_DISABLED          NUMBER;
      V_USER_PASSWORD             E2B_CFG_USERS.E2BR3APP_PASSWORD%TYPE;
      V_R3_VIEW                   NUMBER;  
   BEGIN
      SELECT USER_ID, USER_NAME, USER_FULLNAME, GLOBAL_ADMIN,
             PWD_CHANGE_ON_IST_LOGIN, LDAP_USER, LDAP_SERVER_ID,
             E2BR3APP_PASSWORD, ESM_USER, DELETED,
             (CASE
                 WHEN WORKFLOW_MGR IN (1, 2)
                    THEN 1
                 ELSE 0
              END
             ), ACCOUNT_DISABLED , R3_VIEW
        INTO V_USER_ID, V_USER_NAME, V_USER_FULLNAME, V_GLOBAL_ADMIN,
             V_PWD_CHANGE_ON_IST_LOGIN, V_LDAP_USER, V_LDAP_SERVER_ID,
             V_USER_PASSWORD, V_ESM_USER, V_DELETED,
             V_WORKFLOW_MGR, V_ACCOUNT_DISABLED , V_R3_VIEW
        FROM E2B_CFG_USERS
       WHERE UPPER (USER_NAME) = UPPER (PI_USER_NAME) AND DELETED = 0;

      IF     (   (V_LDAP_USER = 0 AND V_USER_PASSWORD = PI_USER_PWD)
              OR V_LDAP_USER = 1
             )
         AND NVL (V_ACCOUNT_DISABLED, 0) = 0
      THEN
         V_STATUS    := 1;
      ELSIF NVL (V_ACCOUNT_DISABLED, 0) = 1
      THEN
         V_STATUS    := 2;
      ELSE
         V_STATUS    := 0;
      END IF;

      OPEN PO_RC_USER_INFO FOR
         SELECT V_USER_ID USER_ID, V_USER_NAME USER_NAME,
                V_USER_FULLNAME USER_FULLNAME, V_GLOBAL_ADMIN GLOBAL_ADMIN,
                V_PWD_CHANGE_ON_IST_LOGIN PWD_CHANGE_ON_IST_LOGIN,
                V_LDAP_USER LDAP_USER, V_LDAP_SERVER_ID LDAP_SERVER_ID,
                V_STATUS STATUS, V_ESM_USER ESM_USER,
                V_WORKFLOW_MGR WORKFLOW_MGR , V_R3_VIEW R3_VIEW
           FROM DUAL;

      IF V_LDAP_SERVER_ID IS NOT NULL
      THEN
         OPEN PO_RC_LDAP_SERVER_INFO FOR
            SELECT *
              FROM E2B_LDAP_SERVERS
             WHERE SERVER_ID = V_LDAP_SERVER_ID AND DELETED = 0;
      END IF;
   EXCEPTION
      WHEN NO_DATA_FOUND
      THEN
         OPEN PO_RC_USER_INFO FOR
            SELECT NULL USER_ID, NULL USER_NAME, NULL USER_FULLNAME,
                   NULL GLOBAL_ADMIN, NULL PWD_CHANGE_ON_IST_LOGIN,
                   NULL LDAP_USER, NULL LDAP_SERVER_ID, -1 STATUS , -1 R3_VIEW
              FROM DUAL;
   END P_VALIDATE_LOGIN;

--   PROCEDURE P_UPDATE_USER_PASSWORD (
--      PI_USER_ID                   IN   NUMBER,
--      PI_UPDATED_PASSWORD          IN   VARCHAR2,
--      PI_PWD_CHANGE_ON_IST_LOGIN   IN   NUMBER
--   )
--   IS
--   BEGIN
--      UPDATE E2B_CFG_USERS
--         SET E2BR3APP_PASSWORD = PI_UPDATED_PASSWORD,
--             PWD_CHANGE_ON_IST_LOGIN = PI_PWD_CHANGE_ON_IST_LOGIN,
--             MODIFIED_BY = PI_USER_ID,
--             MODIFIED_DATE = SYSDATE
--       WHERE USER_ID = PI_USER_ID;
--   END P_UPDATE_USER_PASSWORD;
/*******************************************************************************************************************************************
       NAME           : P_CHANGE_USER_PASSWORD
       TYPE           : PROCEDURE
       DESCRIPTION    : This procedure is used to update the user's password in DB table.
       PARAMETERS     :       PI_USER_ID            IN   NUMBER,
                              PI_UPDATED_PASSWORD   IN   VARCHAR2,
                              PI_OLD_PASSWORD       IN   VARCHAR2

       RETURN         : N/A
       UPDATES        : 06-NOV-2014   [PS] V0.01 INITIAL VERSION, SEE DESCRIPTION ABOVE.
   *******************************************************************************************************************************************/
   PROCEDURE P_CHANGE_USER_PASSWORD (
      PI_USER_ID            IN   NUMBER,
      PI_UPDATED_PASSWORD   IN   VARCHAR2,
      PI_OLD_PASSWORD       IN   VARCHAR2
   )
   IS
      V_OLD_PASSWORD   E2B_CFG_USERS.E2BR3APP_PASSWORD%TYPE;
   BEGIN
      BEGIN
         PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID);
      EXCEPTION
         WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_ADMIN_DISABLE
         THEN
            NULL;
      END;

      SELECT E2BR3APP_PASSWORD
        INTO V_OLD_PASSWORD
        FROM E2B_CFG_USERS
       WHERE USER_ID = PI_USER_ID;

      IF V_OLD_PASSWORD <> PI_OLD_PASSWORD
      THEN
         RAISE NO_DATA_FOUND;
      END IF;

      UPDATE E2B_CFG_USERS
         SET E2BR3APP_PASSWORD = PI_UPDATED_PASSWORD,
             PWD_CHANGE_ON_IST_LOGIN = 0,
             MODIFIED_BY = PI_USER_ID,
             MODIFIED_DATE = SYSDATE
       WHERE USER_ID = PI_USER_ID;
   EXCEPTION
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
      THEN
         RAISE_APPLICATION_ERROR
                           (-20002,
                            PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE (20002,
                                                                      SQLERRM
                                                                     )
                           );
      WHEN NO_DATA_FOUND
      THEN
         RAISE_APPLICATION_ERROR
            (-20000,
             PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE
                                               (20000,
                                                'Old password doesn''t match!'
                                               )
            );
   END P_CHANGE_USER_PASSWORD;
END PKG_USER_MANAGEMENT;
/
