Prompt Package PKG_AUDIT_LOG;
--
-- PKG_AUDIT_LOG  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--   STANDARD (Package)
--   USER_TAB_COLS (Synonym)
--   DBMS_TRANSACTION (Synonym)
--   DBMS_OUTPUT (Synonym)
--   AUDIT_CATEGORY_TAB_MAPPING (Table)
--   AUDIT_VER_NO_SEQ (Sequence)
--   E2B_CFG_TRASFORM_PROFILES_HIST (Table)
--   E2B_CFG_USERS (Table)
--   E2B_R3_CFG_AGENCY_HIST (Table)
--   E2B_R3_CFG_SYSTEM_HIST (Table)
--   GT_AUDIT_LOG_PAGE_ENTITY (Table)
--   GT_AUDIT_LOG_REVISION_DETAILS (Table)
--
CREATE OR REPLACE PACKAGE &TRANSFORMPV_USER..PKG_AUDIT_LOG
AS
/* **********************************************************************
    Name     :   PKG_AUDIT_LOG
    Type     :   Package
    Description  : This package do the audit log for quadrant tables.
    Sources    :   n/a
    Source Tables  :   quadrant_tables
    Target Tables  :   n/a
    Business Logic :   n/a
    Parameters   :   n/a
    Return    :   n/a
    Updates    :   18-Dec-2014   [PS] v0.01 initial version, see description above.
***********************************************************************/
   FUNCTION F_GET_DECODE_VALUE (
      PI_SELECT_TABLE    IN   VARCHAR2,
      PI_SELECT_COLUMN   IN   VARCHAR2,
      PI_JOIN_FIELD      IN   VARCHAR2,
      PI_FILTER_VALUE    IN   VARCHAR2
   )
      RETURN VARCHAR2;

   FUNCTION F_GET_VERSION_NUMBER (PI_CURRENT_VERSION IN NUMBER)
      RETURN NUMBER;

   FUNCTION F_GET_AUDIT_ID
      RETURN NUMBER;

   GV_TRANSACTION_VERSION_ID   VARCHAR2 (100);
   GV_TRANSACTION_AUDIT_ID     VARCHAR2 (100);
   GV_VERSION_NUMBER           NUMBER;
   GV_AUDIT_ID                 NUMBER;
   GV_PAGE_NAME                VARCHAR2 (200);
   GV_HIST_TABLE_NAME          VARCHAR2 (200);
   GV_AUDIT_KEY_COL            VARCHAR2 (200);
   GV_AUDIT_KEY_COL_NAME       VARCHAR2 (200);
   GV_SEPRATOR_COL_VAL         VARCHAR2 (30)  := '|| ''$:#'' ||';
   GV_SEPRATOR_COL_NAME        VARCHAR2 (30)  := '$:#';

   TYPE RC_STRING_2_COLS IS RECORD (
      STRING1   VARCHAR2 (4000),
      STRING2   VARCHAR2 (4000)
   );

   PROCEDURE P_GET_AUDIT_LOG_TBL_DTL (PI_PAGE_ID IN NUMBER);

--   PROCEDURE P_GETAUDITTABLESDETAILS (
--      PI_PAGE_ID                IN       NUMBER,
--      PI_EFFECTIVE_START_DATE   IN       DATE,
--      PI_EFFECTIVE_END_DATE     IN       DATE,
--      PI_OPERATION_TYPE         IN       NUMBER,
--      PI_USER_ID                IN       NUMBER,
--      PO_RC_HIST_DETAILS        OUT      SYS_REFCURSOR,
--      PO_RC_AUDIT_TBLS          OUT      SYS_REFCURSOR,
--      PO_RC_AUDIT_USER          OUT      SYS_REFCURSOR
--   );
   PROCEDURE P_GETVERSIONHISTORY (
      PI_PAGE_ID                 IN       NUMBER,
      PI_COL_ID                  IN       NUMBER,
      PI_VERSION_ID_LIST                  VARCHAR2,
      PI_VIEW_FLG                IN       VARCHAR2,
      PI_EFFECTIVE_START_DATE    IN       DATE,
      PI_EFFECTIVE_END_DATE      IN       DATE,
      PI_USER_ID                 IN       NUMBER,
      PO_RC_AUDIT_TBLS           OUT      SYS_REFCURSOR,
      PO_RC_AUDIT_USER           OUT      SYS_REFCURSOR,
      PO_RC_VERSION              OUT      SYS_REFCURSOR,
      PO_RC_VERSION_OLDNEW_VAL   OUT      SYS_REFCURSOR
   );

   PROCEDURE P_CREATE_AUDIT_VERSION_SQL (
      PI_HIST_TABLE_NAME     IN       VARCHAR2,
      PI_AUDIT_VERSION       IN       NUMBER,
      PI_AUDIT_KEY_COL       IN       VARCHAR2,
      PI_AUDIT_KEY_COL_VAL   IN       VARCHAR2,
      PI_TABLE_PK_COL        IN       VARCHAR2,
      PI_PARENT_TABLE1       IN       VARCHAR2 DEFAULT NULL,
      PI_PAR_CH_JOIN1        IN       VARCHAR2 DEFAULT NULL,
      PI_PARENT_TABLE2       IN       VARCHAR2 DEFAULT NULL,
      PI_PAR_CH_JOIN2        IN       VARCHAR2 DEFAULT NULL,
      PI_PARENT_TABLE3       IN       VARCHAR2 DEFAULT NULL,
      PI_PAR_CH_JOIN3        IN       VARCHAR2 DEFAULT NULL,
      PI_PARENT_TABLE4       IN       VARCHAR2 DEFAULT NULL,
      PI_PAR_CH_JOIN4        IN       VARCHAR2 DEFAULT NULL,
      PO_SQL_QUERY           OUT      VARCHAR2
   );

   PROCEDURE P_GET_AUDIT_DETAILS (
      PI_VERSION_LIST        IN       VARCHAR2,
      PI_PAGE_ID             IN       NUMBER,
      PI_AUDIT_KEY_VALUE     IN       NUMBER,
      PI_AUDIT_VIEW          IN       VARCHAR2,
      PO_AUDIT_VERSION_SQL   OUT      VARCHAR2
   );

   PROCEDURE P_GET_VERSION_VIEW (
      PI_PAGE_ID           IN       NUMBER,
      PI_AUDIT_KEY_VALUE   IN       NUMBER,
      PI_VERSION_ID_LIST   IN       VARCHAR2,
      PI_VIEW_FLG          IN       VARCHAR2,
      PO_RC_VERSION_DATA   OUT      SYS_REFCURSOR
   );
END PKG_AUDIT_LOG;
/

