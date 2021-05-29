Prompt Package PKG_LOGGER;
--
-- PKG_LOGGER  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   DBMS_UTILITY (Synonym)
--   ETL_CONSTANTS (Table)
--   ETL_EXECUTION_LOG (Table)
--   ETL_EXECUTION_LOG_SEQ (Sequence)
--   ETL_LOAD_WINDOW (Table)
--   ETL_MASTER (Table)
--   ETL_TRACE_LOG (Table)
--   LOG_ID_SEQ (Sequence)
--   PKG_CONTEXT_API (Package)
--   VW_ALL_ETL_RUN_MONITOR (View)
--   VW_LATEST_ETL_RUN_MONITOR (View)
--
CREATE OR REPLACE PACKAGE &TRANSFORMPV_USER..PKG_LOGGER
/*
  Package Name : LOGGER
  Description: This package have the exception handling code to be used across the Quality Analytics Portal.
  This package will also produce the formatted error message
  SQL Error Number Range: 20001 TO 20020
  Created by:
  Created:
  */
AS
   FUNCTION F_GET_ERROR_MESSAGE (PI_SQL_ERROR IN VARCHAR2)
      RETURN VARCHAR2;

   FUNCTION F_EXCEPTION_TEXT (
      PI_NAME_PROCEDURE   VARCHAR2,
      PI_COMMENTS         VARCHAR2 DEFAULT NULL
   )
      RETURN VARCHAR2;

   FUNCTION F_GET_LINE_NUMBER
      RETURN VARCHAR2;

   PROCEDURE P_LOG_TRACE (
      PI_PACKAGE_NAME   IN   VARCHAR2,
      PI_PROC_NAME      IN   VARCHAR2,
      PI_COMMENTS       IN   VARCHAR2,
      PI_STEP_NO        IN   NUMBER,
      PI_LOG_LEVEL      IN   NUMBER,
      PI_LOG_TYPE       IN   VARCHAR2
   );

   PROCEDURE P_ETL_EXEC_LOG (
      PI_START_END_FLAG        IN   VARCHAR2,
      PI_ETL_AREA              IN   VARCHAR2,
      PI_LOG_MESSAGE           IN   VARCHAR2 DEFAULT NULL,
      PI_PROC_ID               IN   NUMBER DEFAULT NULL,
      PI_NO_OF_ROW_PROCESSED   IN   NUMBER DEFAULT NULL,
      PI_STATUS                IN   NUMBER DEFAULT 0
   );

   PROCEDURE P_GET_EXECUTION_LOG (
      PI_ETL_NAME            IN       VARCHAR2,
      PI_ALL_OR_LAST_RUN     IN       VARCHAR2,
      PO_RC_LAST_RUN_TIMES   OUT      SYS_REFCURSOR,
      PO_RC_EXECUTION_LOG    OUT      SYS_REFCURSOR
   );
END PKG_LOGGER;
/



