Prompt Package PKG_COMMON_UTILITIES;
--
-- PKG_COMMON_UTILITIES  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   DBMS_LOB (Synonym)
--   UTL_RAW (Synonym)
--   PKG_ETL_DYNAMIC (Package)
--   PKG_ETL_STG_DYNAMIC (Package)
--   PKG_LOGGER (Package)
--   SPLIT_TBL (Type)
--   SPLIT_TBL (Type)
--
CREATE OR REPLACE PACKAGE &TRANSFORMPV_USER..PKG_COMMON_UTILITIES
/* **********************************************************************
 Name     :   COMMON_UTILITIES
 Type     :   Package

 Description  :   This package is used to define common utilities required for ETL.

 Sources    :   n/a

 Source Tables  :   n/a
 Target Tables  :   n/a
 Business Logic :   n/a

 Parameters   :   n/a

 Return    :   n/a

 Updates    :   4-June-2014   [PS] v0.01 initial version, see description above.

 ***********************************************************************/
AS
   --PL/SQL TABLES
   TYPE T_STRING_TAB IS TABLE OF VARCHAR2 (2000)
      INDEX BY PLS_INTEGER;

   GV_SQL_TYP_TAB                   SPLIT_TBL;
   GV_ERRM                          VARCHAR2 (3000);
   GV_ID_NAME_SEPARATOR             VARCHAR2 (10)   := '^~';
   GV_ID_NAME_COMBO_SEPARATOR       VARCHAR2 (10)   := '^*~';
   --TYPE T_CASE_DETAILS IS TABLE OF GT_ETL_CASE_DETAILS%ROWTYPE;
   GC_QUALITY_ETL_NAME              VARCHAR2 (100)  := 'QUALITY_ETL';
   GC_ANALYTICS_ETL_NAME            VARCHAR2 (100)  := 'ANALYTICS_ETL';
   GC_LOV_TYPE_WF                   VARCHAR2 (500)  := 'WORKFLOW_STATE';
   GC_LOV_TYPE_AG_GRP               VARCHAR2 (500)  := 'AGE_GROUP';
   GC_LOV_TYPE_GENDER               VARCHAR2 (500)  := 'GENDER';
   GC_LOV_TYPE_REP_TYP              VARCHAR2 (500)  := 'REPORT_TYPE';
   GC_LOV_TYPE_INIT_FU              VARCHAR2 (500)  := 'INITIAL/FOLLOWUP';
   GC_LOV_TYPE_CAUSALITY            VARCHAR2 (500)  := 'CASE_CAUSALITY';
   GC_LOV_TYPE_LISTEDNESS           VARCHAR2 (500)  := 'LISTEDNESS';
   GC_LOV_TYPE_CASE_SERIOUS         VARCHAR2 (500)  := 'CASE_SERIOUS';
   GC_LOV_TYPE_SUSAR                VARCHAR2 (500)  := 'SUSAR';
   GC_LOV_TYPE_HCP_FLAG             VARCHAR2 (500)  := 'HCP_FLAG';
   GC_LOV_TYPE_DEMOTION             VARCHAR2 (500)  := 'ROUTING_DEMOTION';
   V_NO_OF_ROWS_PROCESSED           NUMBER;
   EXP_USER_ACCOUNT_DISABLED        EXCEPTION;
   EXP_USER_ACCOUNT_ADMIN_DISABLE   EXCEPTION;

   --FUNCTIONS
   FUNCTION F_SPLIT (P_LIST CLOB, P_DEL VARCHAR2 := ',')
      RETURN SPLIT_TBL PIPELINED;

   FUNCTION F_CLOB_TO_BLOB (PI_CLOB IN CLOB)
      RETURN BLOB;

   FUNCTION F_CLOB_TO_BLOB_T (P_CLOB CLOB)
      RETURN BLOB;

   PROCEDURE P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID IN NUMBER);

   FUNCTION F_GET_ERROR_MESSAGE (
      PI_ERROR_NUMBER   IN   NUMBER,
      PI_SQLERRM        IN   VARCHAR2
   )
      RETURN VARCHAR2;

   FUNCTION F_CONV_PLSQL_TO_SQL_TAB (PI_PLSQL_TAB IN T_STRING_TAB)
      RETURN SPLIT_TBL;
END PKG_COMMON_UTILITIES;
/


