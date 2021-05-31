CREATE OR REPLACE PACKAGE &TRANSFORMPV_USER..PKG_USER_MANAGEMENT
/*******************************************************************************************************************************************
    Name           :   PKG_USER_MANAGEMENT
    Type           :   Package
    Description    :   Package header for inserting, updating and deleting user level in database table
    Sources        :   n/a
    Source Tables  :   n/a
    Target Tables  :   n/a
    Business Logic :   n/a
    Parameters     :   n/a
    Return         :   n/a
    Updates        :   06-Nov-2014   [PS] v0.01 initial version, see description above.
*******************************************************************************************************************************************/
AS
   PROCEDURE P_DELETEUSERS (
      PI_USER_ID_LIST   IN   PKG_COMMON_UTILITIES.T_STRING_TAB,
      PI_USER_ID        IN   VARCHAR2
   );

   PROCEDURE P_GETUSERDATA (
      PI_USER_ID          IN       NUMBER,
      PO_RC_USRDTL        OUT      SYS_REFCURSOR,
      PO_RC_LDAP_SERVERS  OUT      SYS_REFCURSOR
   );

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
   );

   PROCEDURE P_VALIDATE_LOGIN (
      PI_USER_NAME             IN       VARCHAR2,
      PI_USER_PWD              IN       VARCHAR2,
      PO_RC_USER_INFO          OUT      SYS_REFCURSOR,
      PO_RC_LDAP_SERVER_INFO   OUT      SYS_REFCURSOR
   );

--   PROCEDURE P_UPDATE_USER_PASSWORD (
--      PI_USER_ID                   IN   NUMBER,
--      PI_UPDATED_PASSWORD          IN   VARCHAR2,
--      PI_PWD_CHANGE_ON_IST_LOGIN   IN   NUMBER
--   );

   PROCEDURE P_CHANGE_USER_PASSWORD (
      PI_USER_ID                   IN   NUMBER,
      PI_UPDATED_PASSWORD          IN   VARCHAR2,
      PI_OLD_PASSWORD              IN   VARCHAR2
   );
END PKG_USER_MANAGEMENT;
/
