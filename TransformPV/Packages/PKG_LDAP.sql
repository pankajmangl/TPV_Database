CREATE OR REPLACE PACKAGE &TRANSFORMPV_USER..PKG_LDAP
  /* **********************************************************************
  Name     :   PKG_LDAP
  Type     :   Package
  Description  :
  Sources    :   n/a
  Source Tables  :   n/a
  Target Tables  :   n/a
  Business Logic :   n/a
  Parameters   :   n/a
  Return    :   n/a
  Updates    :   04-June-2014   [PS] v0.01 initial version, see description above.
  ***********************************************************************/
AS

    PROCEDURE P_DELETE_LDAP (
          PI_SERVER_ID_LIST IN   PKG_COMMON_UTILITIES.T_STRING_TAB,
          PI_USER_ID        IN   VARCHAR2
       );
    PROCEDURE P_SAVE_LDAP(
        PI_SERVER_ID       IN NUMBER,
        PI_SERVER_ALIAS    IN VARCHAR2,
        PI_SERVER_NAME     IN VARCHAR2,
        PI_SERVER_PORT     IN NUMBER,
        PI_BASE_DN         IN VARCHAR2,
        PI_TIME_OUT_SEC    IN NUMBER,
        PI_SEARCH_USER_DN  IN VARCHAR2,
        PI_SEARCH_PASSWORD IN VARCHAR2,
        PI_SEARCH_KEY      IN VARCHAR2,
        PI_SSL             IN NUMBER,
        PI_ANONYMOUS       IN NUMBER,
        PI_USER_ID         IN VARCHAR2 );

    PROCEDURE P_GET_LDAP (
        PO_RC_LDAP    OUT      SYS_REFCURSOR
      );
END PKG_LDAP;
/
