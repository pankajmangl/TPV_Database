CREATE OR REPLACE PACKAGE &TRANSFORMPV_USER..PKG_ETL_MAIN
/* **********************************************************************
    Name     :   ETL_MAIN
    Type     :   Package

    Description  :   Main Package for ETL.

    Sources    :   n/a

    Source Tables  :   n/a
    Target Tables  :   n/a
    Business Logic :   n/a

    Parameters   :   n/a

    Return    :   n/a

    Updates    :   04-June-2014   [PS] v0.01 initial version, see description above.

    ***********************************************************************/
AS
--   PROCEDURE P_ETL_MAIN (
--      PI_ETL_ID               IN   NUMBER,
--      PI_ETL_TYPE             IN   VARCHAR2,            --INITIAL/INCREMENTAL
--      PI_LOAD_DATA_CATEGORY   IN   VARCHAR2,
--      PI_ETL_EXEC_SEQ         IN   NUMBER,
--      PI_BATCH_NO             IN   NUMBER DEFAULT 1
--   );
   PROCEDURE P_ETL_START (PI_ETL_NAME IN VARCHAR2, PI_ETL_TYPE IN VARCHAR2);

   PROCEDURE P_SAVE_ETL_SCHEDULE (
      PI_ETL_NAME           IN   VARCHAR2,
      PI_FREQUENCY          IN   VARCHAR2,
      PI_DAYS_IN_WEEK       IN   VARCHAR2,
      PI_START_DATE         IN   DATE,
      PI_USER_ID            IN   NUMBER,
      PI_USER_GROUPS_LIST   IN   PKG_COMMON_UTILITIES.T_STRING_TAB,
      PI_DISABLED            IN   NUMBER
   );

   PROCEDURE P_GET_ETL_SCHEDULE (
      PI_ETL_NAME             IN       VARCHAR2,
      PO_RC_ETL_SCHEDULE      OUT      SYS_REFCURSOR,
      PO_RC_USER_GROUPS       OUT      SYS_REFCURSOR
   );
END PKG_ETL_MAIN;
/
