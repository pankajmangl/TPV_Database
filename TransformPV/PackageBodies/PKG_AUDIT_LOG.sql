CREATE OR REPLACE PACKAGE BODY &TRANSFORMPV_USER..PKG_AUDIT_LOG
/*******************************************************************************************************************************************
    Name           : PKG_AUDIT_LOG
    Type           : Package BODY
    Description    : This package includes code related to audit log
    Sources        : n/a
    Updates        : 18-Dec-2014   [PS] v0.01 initial version, see description above.
*******************************************************************************************************************************************/
AS

/*******************************************************************************************************************************************
    Name           : F_GET_DECODE_VALUE
    Type           : Function
    Description    : This function returns the decode value
*******************************************************************************************************************************************/

    FUNCTION F_GET_DECODE_VALUE (
       PI_SELECT_TABLE    IN   VARCHAR2,
       PI_SELECT_COLUMN   IN   VARCHAR2,
       PI_JOIN_FIELD      IN   VARCHAR2,
       PI_FILTER_VALUE    IN   VARCHAR2
    )
       RETURN VARCHAR2
    IS
       V_SQL_QRY   VARCHAR2(4000);
       V_RET_VAL   VARCHAR2 (4000);
    BEGIN
       IF PI_SELECT_TABLE IS NOT NULL AND PI_FILTER_VALUE IS NOT NULL
       THEN
          V_SQL_QRY := 'SELECT '
                            || PI_SELECT_COLUMN
                            || ' FROM '
                            || PI_SELECT_TABLE
                            || ' WHERE '
                            || PI_JOIN_FIELD
                            || ' = '''
                            || PI_FILTER_VALUE||''''
                       ;
    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','F_GET_DECODE_VALUE',SQLERRM,1,1,'TRACE');

          EXECUTE IMMEDIATE   V_SQL_QRY INTO V_RET_VAL;
       ELSE
          V_RET_VAL    := PI_FILTER_VALUE;
       END IF;

       --RETURN V_SQL_QRY;
       RETURN V_RET_VAL;
    END F_GET_DECODE_VALUE;


/*******************************************************************************************************************************************
    Name           : F_GET_VERSION_NUMBER
    Type           : Function
    Description    : This function returns the current version of auditing record.
*******************************************************************************************************************************************/

    FUNCTION F_GET_VERSION_NUMBER (PI_CURRENT_VERSION IN NUMBER)
       RETURN NUMBER
    IS
       LV_TRANSACTION_VERSION_ID   VARCHAR2 (100);
    BEGIN
       LV_TRANSACTION_VERSION_ID    :=
            DBMS_TRANSACTION.LOCAL_TRANSACTION_ID || 'F_GET_AUDIT_VERSION_NUMBER';

       IF GV_TRANSACTION_VERSION_ID IS NULL OR GV_TRANSACTION_VERSION_ID <> LV_TRANSACTION_VERSION_ID
       THEN
          GV_TRANSACTION_VERSION_ID    := LV_TRANSACTION_VERSION_ID;
          GV_VERSION_NUMBER    := PI_CURRENT_VERSION;
       END IF;

       RETURN GV_VERSION_NUMBER;
    END F_GET_VERSION_NUMBER;

/*******************************************************************************************************************************************
    Name           : F_GET_AUDIT_ID
    Type           : Function
    Description    : This function returns the audit id for newly and existing record.
*******************************************************************************************************************************************/

    FUNCTION F_GET_AUDIT_ID
       RETURN NUMBER
    IS
       LV_TRANSACTION_AUDIT_ID   VARCHAR2 (100);
    BEGIN
       LV_TRANSACTION_AUDIT_ID    :=
                        DBMS_TRANSACTION.LOCAL_TRANSACTION_ID || 'F_GET_AUDIT_ID';

       IF GV_TRANSACTION_AUDIT_ID IS NULL OR GV_TRANSACTION_AUDIT_ID <> LV_TRANSACTION_AUDIT_ID
       THEN
          GV_TRANSACTION_AUDIT_ID    := LV_TRANSACTION_AUDIT_ID;
          GV_AUDIT_ID          := SEQ_AUDIT_VER_NO.NEXTVAL;
       END IF;

       RETURN GV_AUDIT_ID;
    END F_GET_AUDIT_ID;

/*******************************************************************************************************************************************
    Name           : P_GET_AUDIT_LOG_TBL_DTL
    Type           : Procedure
    Description    : This procedure is used for getting the audit key, audit page,history table name.
*******************************************************************************************************************************************/

    PROCEDURE P_GET_AUDIT_LOG_TBL_DTL (PI_PAGE_ID IN NUMBER)
    IS
    BEGIN
    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','P_GET_AUDIT_LOG_TBL_DTL',SQLERRM,1,1,'TRACE');

       SELECT QSPM.PAGE_NAME, QCATR.HIST_TABLE_NAME, QCATR.PK_ID_COL,
              PK_DISPLAY_COL
         INTO GV_PAGE_NAME, GV_HIST_TABLE_NAME, GV_AUDIT_KEY_COL,
              GV_AUDIT_KEY_COL_NAME
         FROM E2B_CFG_AUDIT_TAB_RELATIONS QCATR, E2B_SYS_PAGE_MASTER QSPM
        WHERE QCATR.PAGE_ID = QSPM.PAGE_ID
          AND QCATR.PAGE_ID = PI_PAGE_ID
          AND QCATR.TABLE_TYPE = 1
          AND QCATR.DELETED = 0;

    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','P_GET_AUDIT_LOG_TBL_DTL',SQLERRM,2,1,'TRACE');

    END P_GET_AUDIT_LOG_TBL_DTL;

/*******************************************************************************************************************************************
    Name           : P_GETVERSIONHISTORY
    Type           : Procedure
    Description    : This procedure is used for getting the complete history on the basis of page id and others filters.
*******************************************************************************************************************************************/
    PROCEDURE P_GETVERSIONHISTORY (
       PI_PAGE_ID                 IN       NUMBER,
       PI_COL_ID                  IN       NUMBER,
       PI_VERSION_ID_LIST         IN       VARCHAR2,
       PI_VIEW_FLG                IN       VARCHAR2,
       PI_EFFECTIVE_START_DATE    IN       DATE,
       PI_EFFECTIVE_END_DATE      IN       DATE,
       PI_USER_ID                 IN       NUMBER,
       PO_RC_AUDIT_TBLS           OUT      SYS_REFCURSOR,
       PO_RC_AUDIT_USER           OUT      SYS_REFCURSOR,
       PO_RC_VERSION              OUT      SYS_REFCURSOR,
       PO_RC_VERSION_OLDNEW_VAL   OUT      SYS_REFCURSOR
    )
    IS
       V_SQL_STR                 VARCHAR2 (32000);
    BEGIN

       DELETE FROM GT_AUDIT_VERSION_DTL;
       DELETE FROM GT_VERSION_DTL_TEMP;

    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','P_GETVERSIONHISTORY',SQLERRM,1,1,'TRACE');

          OPEN PO_RC_AUDIT_TBLS FOR
             SELECT DISTINCT QCATR.PAGE_ID PAGE_ID, QSPM.PAGE_NAME PAGE_NAME
                        FROM E2B_CFG_AUDIT_TAB_RELATIONS QCATR,
                             E2B_SYS_PAGE_MASTER QSPM
                       WHERE QCATR.PAGE_ID = QSPM.PAGE_ID
                         AND QCATR.DELETED = 0
                         AND QSPM.DELETED = 0
                         AND QCATR.ENABLED = 1
                    ORDER BY QSPM.PAGE_NAME ;

          OPEN PO_RC_AUDIT_USER FOR
             SELECT USER_ID, USER_NAME
               FROM E2B_CFG_USERS
              WHERE DELETED = 0
              ORDER BY LOWER(USER_NAME);

    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','P_GETVERSIONHISTORY',SQLERRM,2,1,'TRACE');

       IF PI_VIEW_FLG = 'SEARCH'
       THEN
    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','P_GETVERSIONHISTORY',SQLERRM,3,1,'TRACE');

           P_GET_AUDIT_LOG_TBL_DTL (PI_PAGE_ID);
    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','P_GETVERSIONHISTORY',SQLERRM,4,1,'TRACE');

           V_SQL_STR    :=
                 'SELECT T1.'
              || GV_AUDIT_KEY_COL
              || ' COL_ID ,VERSION_NUMBER,AUDIT_ID,DECODE(OPERATION_TYPE,1,'
              || '''ADDED'''
              || ','
              || '''UPDATED'') OPERATION_TYPE , EFFECTIVE_START_DATE, EFFECTIVE_END_DATE,CURRENT_FLG,
                                          INSERT_DATE, T1.'
              || GV_AUDIT_KEY_COL_NAME
              || ' '
              || '|| CASE WHEN OPERATION_TYPE =1 THEN '':  ADDED'' ELSE '':  UPDATED'' END'
              || ' AUDITDATA,'
              || PI_PAGE_ID
              || ' PAGE_ID,'
              || ''''
              || GV_PAGE_NAME
              || ''''
              || ' PAGENAME, QCU.USER_ID USER_ID, QCU.USER_NAME USER_NAME FROM '
              || GV_HIST_TABLE_NAME
              || ' T1,E2B_CFG_USERS QCU '
              || ' WHERE TO_DATE(INSERT_DATE) BETWEEN '
              || CASE
                    WHEN PI_EFFECTIVE_START_DATE IS NOT NULL
                       THEN ' TO_DATE(' || '''' || TO_CHAR(PI_EFFECTIVE_START_DATE,'DD-MON-YYYY') || ''''
                            || ')'
                    ELSE 'TO_DATE(''01/01/1900'',''MM/DD/YYYY'')'
                 END
              || CASE
                    WHEN PI_EFFECTIVE_END_DATE IS NOT NULL
                       THEN    ' AND TO_DATE('
                            || ''''
                            || TO_CHAR(PI_EFFECTIVE_END_DATE,'DD-MON-YYYY')
                            || ''''
                            || ')'
                    ELSE 'AND TO_DATE(''12/31/9999'',''MM/DD/YYYY'')'
                 END
              || CASE
                    WHEN PI_USER_ID IS NOT NULL
                       THEN ' AND T1.MODIFIED_BY = ' || PI_USER_ID
                 END
              || ' AND T1.MODIFIED_BY = QCU.USER_ID'
              || (CASE
                     WHEN PI_COL_ID IS NOT NULL
                        THEN ' AND T1.' || GV_AUDIT_KEY_COL || ' = ' || PI_COL_ID
                  END
                 )
              || '  ORDER BY INSERT_DATE DESC, COL_ID, VERSION_NUMBER';

            PKG_LOGger.P_LOG_TRACE('PKG_AUDIT_LOG','P_GETVERSIONHISTORY',V_SQL_STR,5,1,'TRACE');

           OPEN PO_RC_VERSION FOR V_SQL_STR;

       END IF;

    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','P_GETVERSIONHISTORY',SQLERRM,6,1,'TRACE');


       IF PI_VIEW_FLG IN ('DETAIL', 'COMPARE') OR PI_COL_ID IS NOT NULL
       THEN
    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','P_GETVERSIONHISTORY',SQLERRM,7,1,'TRACE');

          P_GET_AUDIT_LOG_TBL_DTL (PI_PAGE_ID);
    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','P_GETVERSIONHISTORY',SQLERRM,8,1,'TRACE');

          P_GET_VERSION_VIEW (PI_PAGE_ID,
                              PI_COL_ID,
                              PI_VERSION_ID_LIST,
                              (CASE WHEN PI_COL_ID IS NOT NULL THEN
                              'DETAIL' ELSE PI_VIEW_FLG END),
                              PO_RC_VERSION_OLDNEW_VAL
                             );
    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','P_GETVERSIONHISTORY',SQLERRM,9,1,'TRACE');

       END IF;
    PKG_LOGGER.P_LOG_TRACE('PKG_AUDIT_LOG','P_GETVERSIONHISTORY',SQLERRM,10,1,'TRACE');
    EXCEPTION
      WHEN OTHERS
      THEN
         PKG_COMMON_UTILITIES.GV_ERRM    := SQLERRM;

         PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'.P_GETVERSIONHISTORY',SQLERRM,1,1,'ERROR');

         RAISE_APPLICATION_ERROR
                        (-20001,
                            $$PLSQL_UNIT|| '.P_GETVERSIONHISTORY'
                        );

    END P_GETVERSIONHISTORY;

/*******************************************************************************************************************************************
    Name           : F_GET_COL_LIST
    Type           : Function
    Description    : This function returns the column list of audit table.
*******************************************************************************************************************************************/

    FUNCTION F_GET_COL_LIST (PI_TABLE_NAME IN VARCHAR2)
       RETURN PKG_AUDIT_LOG.RC_STRING_2_COLS
    IS
       V_COL_LST        VARCHAR2 (10000);
       VR_COLUMN_LIST   PKG_AUDIT_LOG.RC_STRING_2_COLS;
    BEGIN
      SELECT LISTAGG(COLUMN_NAME,',') WITHIN GROUP (
              ORDER BY COLUMN_ID) COL_DATA_LST,
                LISTAGG(
                CASE
                  WHEN DATA_TYPE = 'DATE'
                  THEN 'TO_CHAR(T1.'
                    ||COLUMN_NAME
                    ||',''DD-MON-YYYY HH24:MI'') '
                    ||COLUMN_NAME
                  WHEN DATA_TYPE = 'NUMBER'
                  THEN 'TO_CHAR(T1.'
                    ||COLUMN_NAME
                    ||') '
                    ||COLUMN_NAME
                  ELSE 'T1.'||COLUMN_NAME
                END,',') WITHIN GROUP (
              ORDER BY COLUMN_ID) COL_DATA_LST1
              INTO VR_COLUMN_LIST
      FROM ALL_TAB_COLS
      WHERE TABLE_NAME = PI_TABLE_NAME;

       RETURN VR_COLUMN_LIST;
    END F_GET_COL_LIST;

/*******************************************************************************************************************************************
    Name           : P_CREATE_AUDIT_VERSION_SQL
    Type           : PROCEDURE
    Description    : This procedure returns the audit sql query on the basis of below parameters.
*******************************************************************************************************************************************/

PROCEDURE P_CREATE_AUDIT_VERSION_SQL (
   PI_HIST_TABLE_NAME     IN   VARCHAR2,
   PI_AUDIT_VERSION       IN   NUMBER,
   PI_AUDIT_KEY_COL       IN   VARCHAR2,
   PI_AUDIT_KEY_COL_VAL   IN   VARCHAR2,
   PI_TABLE_PK_COL        IN   VARCHAR2,
   PI_PARENT_TABLE1       IN   VARCHAR2 DEFAULT NULL,
   PI_PAR_CH_JOIN1        IN   VARCHAR2 DEFAULT NULL,
   PI_PARENT_TABLE2       IN   VARCHAR2 DEFAULT NULL,
   PI_PAR_CH_JOIN2        IN   VARCHAR2 DEFAULT NULL,
   PI_PARENT_TABLE3       IN   VARCHAR2 DEFAULT NULL,
   PI_PAR_CH_JOIN3        IN   VARCHAR2 DEFAULT NULL,
   PI_PARENT_TABLE4       IN   VARCHAR2 DEFAULT NULL,
   PI_PAR_CH_JOIN4        IN   VARCHAR2 DEFAULT NULL,
   PO_SQL_QUERY           OUT  VARCHAR2
   )
IS
   VR_COLUMN_LIST         PKG_AUDIT_LOG.RC_STRING_2_COLS;
   V_TABLE_LIST           VARCHAR2(2000);
   V_JOIN_CONDITIONS      VARCHAR2(2000);
   V_IS_CHILD_TABLE       NUMBER;
   V_PK_ID_COL            VARCHAR2(100);
BEGIN

SELECT PK_ID_COL, (CASE WHEN PARENT_TBL_ID IS NULL THEN 0 ELSE 1 END) INTO V_PK_ID_COL, V_IS_CHILD_TABLE FROM E2B_CFG_AUDIT_TAB_RELATIONS WHERE
HIST_TABLE_NAME =  PI_HIST_TABLE_NAME;


SELECT    DECODE (PI_PARENT_TABLE1, NULL, NULL, ',' || PI_PARENT_TABLE1)
       || DECODE (PI_PARENT_TABLE2, NULL, NULL, ',' || PI_PARENT_TABLE2)
       || DECODE (PI_PARENT_TABLE3, NULL, NULL, ',' || PI_PARENT_TABLE3)
       || DECODE (PI_PARENT_TABLE4, NULL, NULL, ',' || PI_PARENT_TABLE4)
  INTO V_TABLE_LIST
  FROM DUAL;

SELECT    DECODE (PI_PAR_CH_JOIN1, NULL, NULL, ' AND ' || PI_PAR_CH_JOIN1||' AND '||PI_PARENT_TABLE1||'.VERSION_NUMBER = '||PI_AUDIT_VERSION)
       || DECODE (PI_PAR_CH_JOIN2, NULL, NULL, ' AND ' || PI_PAR_CH_JOIN2||' AND '||PI_PARENT_TABLE2||'.VERSION_NUMBER = '||PI_AUDIT_VERSION)
       || DECODE (PI_PAR_CH_JOIN3, NULL, NULL, ' AND ' || PI_PAR_CH_JOIN3||' AND '||PI_PARENT_TABLE3||'.VERSION_NUMBER = '||PI_AUDIT_VERSION)
       || DECODE (PI_PAR_CH_JOIN4, NULL, NULL, ' AND ' || PI_PAR_CH_JOIN4||' AND '||PI_PARENT_TABLE4||'.VERSION_NUMBER = '||PI_AUDIT_VERSION)
  INTO V_JOIN_CONDITIONS
  FROM DUAL;

--, RANK() OVER (PARTITION BY VAL_ID ORDER BY VAL_WF_ID) RNK
   VR_COLUMN_LIST    := F_GET_COL_LIST (PI_HIST_TABLE_NAME);
   PO_SQL_QUERY       :=    ' FROM (SELECT T1.'||PI_TABLE_PK_COL||' PRIMARY_ID, T1.VERSION_NUMBER VER_NUM, T1.MODIFIED_BY MODIFIED_BY_USER, T1.INSERT_DATE MODIFIED_TIME, T1.OPERATION_TYPE OPERATION, '|| VR_COLUMN_LIST.STRING2||
                            (CASE WHEN V_IS_CHILD_TABLE = 0 THEN ', NULL ' ELSE
                                        ', RANK() OVER (PARTITION BY T1.'|| PI_AUDIT_KEY_COL|| ' ORDER BY T1.'||V_PK_ID_COL||') '
                            END)
                            ||' AS CHILD_RANK FROM '|| PI_HIST_TABLE_NAME|| ' T1 '|| V_TABLE_LIST ||
                                 ' WHERE T1.VERSION_NUMBER = '|| PI_AUDIT_VERSION|| V_JOIN_CONDITIONS|| '
                                   AND T1.'|| PI_AUDIT_KEY_COL|| ' = ''' || PI_AUDIT_KEY_COL_VAL|| '''
                                  ) T1 UNPIVOT INCLUDE NULLS (COL_VALUE FOR COL_NAME IN ('|| VR_COLUMN_LIST.STRING1|| '))';
EXCEPTION
      WHEN OTHERS
      THEN
         PKG_COMMON_UTILITIES.GV_ERRM    := SQLERRM;

         PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'.P_CREATE_AUDIT_VERSION_SQL',SQLERRM,1,1,'ERROR');

         RAISE_APPLICATION_ERROR
                        (-20001,
                            $$PLSQL_UNIT|| '.P_CREATE_AUDIT_VERSION_SQL'
                        );

END P_CREATE_AUDIT_VERSION_SQL;

--PROCEDURE P_CREATE_PARENT_LIST(PI_PAGE_ID IN NUMBER, PI_TABLE_ID IN NUMBER, PO_PARENT_TABLE_LIST OUT VARCHAR2, PO_PARENT_JOIN_LIST OUT VARCHAR2)
--IS
--BEGIN
--      SELECT *
--        FROM Q_CFG_AUDIT_TAB_RELATIONS
--       WHERE PAGE_ID = PI_PAGE_ID AND ENABLED = 1 ORDER BY TABLE_ID;

--END P_CREATE_PARENT_LIST;

/*******************************************************************************************************************************************
    Name           : P_GET_AUDIT_DETAILS
    Type           : PROCEDURE
    Description    : This procedure returns the audit version sql query on the basis of below parameters.
*******************************************************************************************************************************************/

    PROCEDURE P_GET_AUDIT_DETAILS (
       PI_VERSION_LIST            IN       VARCHAR2,
       PI_PAGE_ID                 IN       NUMBER,
       PI_AUDIT_KEY_VALUE         IN       NUMBER,
       PI_AUDIT_VIEW              IN       VARCHAR2,
       PO_AUDIT_VERSION_SQL       OUT      VARCHAR2
    )
    IS
       CURSOR C1_VERSIONS
       IS
          SELECT TRIM(COLUMN_VALUE) AS VERSION_NUMBER
            FROM TABLE (PKG_COMMON_UTILITIES.F_SPLIT (PI_VERSION_LIST, ','));

       CURSOR C2_TAB_RELAT
       IS
          SELECT   *
              FROM E2B_CFG_AUDIT_TAB_RELATIONS
             WHERE PAGE_ID = PI_PAGE_ID AND ENABLED = 1
          ORDER BY TABLE_ID;

       VT_VERSION_LIST          PKG_COMMON_UTILITIES.T_STRING_TAB;
       V_PREV_VERSION           VARCHAR2(1000);
       V_PARENT_TABLE_NAME      VARCHAR2(50);
       V_AUDIT_KEY_FILTER_COL   VARCHAR2(50);
       V_VERSION_SQL            VARCHAR2 (20000);
       V_INSERT_SQL             VARCHAR2 (32000);
       V_REF_SELECT_COLS        VARCHAR2 (4000);
       V_REF_TABLE_LIST         VARCHAR2 (4000);
       V_REF_WHERE_COND         VARCHAR2 (4000);
       V_REF_ORDER_CLAUSE       VARCHAR2 (4000);
       V_COALESCE_COL_LIST      VARCHAR2 (4000);
       V_MAX_ROW_VERSION        NUMBER;
       V_SQL_QRY1               VARCHAR2(20000);
    BEGIN
     PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_AUDIT_DETAILS',null,1,3,'Trace');

       IF PI_AUDIT_VIEW = 'DETAIL' THEN

            /*Get table details to check for previous version*/
            SELECT HIST_TABLE_NAME, AUDIT_KEY_FILTER_COL
              INTO V_PARENT_TABLE_NAME, V_AUDIT_KEY_FILTER_COL
              FROM E2B_CFG_AUDIT_TAB_RELATIONS
             WHERE PAGE_ID = PI_PAGE_ID AND ENABLED = 1 AND PARENT_TBL_ID IS NULL;

            /*Fetch previous version for OLD value and NEW Value Comparison*/
            BEGIN
               V_SQL_QRY1 :=  'SELECT VERSION_NUMBER FROM (SELECT DISTINCT VERSION_NUMBER FROM '
                                 || V_PARENT_TABLE_NAME
                                 || ' WHERE VERSION_NUMBER < '
                                 || TRIM(PI_VERSION_LIST)
                                 || ' AND '
                                 || V_AUDIT_KEY_FILTER_COL
                                 || '='
                                 || PI_AUDIT_KEY_VALUE
                                 || ' ORDER BY VERSION_NUMBER DESC) WHERE ROWNUM = 1'
                            ;

               EXECUTE IMMEDIATE  V_SQL_QRY1 INTO V_PREV_VERSION;
            EXCEPTION
               WHEN NO_DATA_FOUND
               THEN
                  NULL;
            END;
       END IF;
     PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_AUDIT_DETAILS',null,2,3,'Trace');

            /*Load version list into pl/sql table and execute loop for all versions in the list*/
                SELECT COLUMN_VALUE
                BULK COLLECT INTO VT_VERSION_LIST
                  FROM TABLE
                          (PKG_COMMON_UTILITIES.F_SPLIT
                                   (   (CASE
                                           WHEN V_PREV_VERSION IS NOT NULL
                                              THEN V_PREV_VERSION || ','
                                        END
                                       )
                                    || TRIM (PI_VERSION_LIST),
                                    ','
                                   )
                          );

        /*Loop for all audit versions*/

                delete from GT_AUDIT_VERSION_DTL;
                
       FOR C_VER IN VT_VERSION_LIST.FIRST .. VT_VERSION_LIST.LAST
       LOOP

        /*Loop for tables associated with page for which audit data needs to be fetched*/

          FOR C_TAB IN C2_TAB_RELAT
          LOOP
                    /*Create select query for each table in loop*/

             P_CREATE_AUDIT_VERSION_SQL (C_TAB.HIST_TABLE_NAME,
                                         VT_VERSION_LIST (C_VER),
                                         C_TAB.AUDIT_KEY_FILTER_COL,
                                         PI_AUDIT_KEY_VALUE,
                                         C_TAB.PK_ID_COL,
                                         NULL,
                                         NULL,
                                         NULL,
                                         NULL,
                                         NULL,
                                         NULL,
                                         NULL,
                                         NULL,
                                         V_VERSION_SQL
                                        );

             /*Create insert query to load data into intermediary table GT_AUDIT_VERSION_DTL for further processing*/
             V_INSERT_SQL    :=
                   'INSERT INTO GT_AUDIT_VERSION_DTL (VERSION_NUMBER, PRIMARY_KEY_COL, PRIMARY_KEY_VALUE,
                                                      COL_NAME, COL_VALUE, OPERATION_TYPE,
                                                      MODIFIED_DATE, CHILD_RANK, USER_ID, TABLE_NAME)
                    SELECT DISTINCT VER_NUM, '''
                || C_TAB.PK_ID_COL
                || ''', PRIMARY_ID, COL_NAME, COL_VALUE, OPERATION, MODIFIED_TIME, CHILD_RANK, MODIFIED_BY_USER,'''
                || C_TAB.HIST_TABLE_NAME
                || ''''
                || V_VERSION_SQL;

               PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_AUDIT_DETAILS',V_INSERT_SQL,3,3,'Trace');


             EXECUTE IMMEDIATE V_INSERT_SQL;

          END LOOP;

             /**/

--          V_COALESCE_COL_LIST := ' V'|| VT_VERSION_LIST (C_VER)|| '.COL_VALUE,'
--                                ||(CASE WHEN C_VER = 1 THEN ' V'|| VT_VERSION_LIST (C_VER)
--                                || '.COL_VALUE,'END) ||V_COALESCE_COL_LIST;


          V_COALESCE_COL_LIST := ' V'|| VT_VERSION_LIST (C_VER)|| '.COL_VALUE,'
                                ||(CASE WHEN C_VER = 1 THEN ' V'|| VT_VERSION_LIST (C_VER)
                                || '.COL_VALUE,' ELSE ' V'|| VT_VERSION_LIST (C_VER)|| '.COL_VALUE,' END) ;
          V_REF_SELECT_COLS    :=
                V_REF_SELECT_COLS
             || ', COALESCE('
             || RTRIM(V_COALESCE_COL_LIST,',')
             || ') V'
             || VT_VERSION_LIST (C_VER);

--          V_REF_SELECT_COLS := V_REF_SELECT_COLS
--             || ', '
--             || RTRIM(V_COALESCE_COL_LIST,',')
--             || ' V'
--             || VT_VERSION_LIST (C_VER);

          V_REF_TABLE_LIST     :=
                V_REF_TABLE_LIST
             || ', (SELECT GAVD.*, QCATR.TABLE_ID
                    FROM GT_AUDIT_VERSION_DTL GAVD, E2B_CFG_AUDIT_TAB_RELATIONS QCATR
                   WHERE  QCATR.PAGE_ID = '||PI_PAGE_ID||'
                          AND QCATR.HIST_TABLE_NAME = GAVD.TABLE_NAME
                          AND QCATR.DELETED = 0
                          AND QCATR.ENABLED = 1
                          AND VERSION_NUMBER = '
             || VT_VERSION_LIST (C_VER)
             || ') V'
             || VT_VERSION_LIST (C_VER);

          IF C_VER > 1
          THEN
             V_REF_WHERE_COND    :=
                   (CASE
                       WHEN V_REF_WHERE_COND IS NOT NULL
                          THEN V_REF_WHERE_COND || ' AND '
                       ELSE V_REF_WHERE_COND
                    END
                   )
                || '  V'
                || VT_VERSION_LIST (C_VER - 1)
                || '.TABLE_NAME(+) = V'
                || VT_VERSION_LIST (C_VER)
                || '.TABLE_NAME
               AND V'
                || VT_VERSION_LIST (C_VER - 1)
                || '.COL_NAME(+) = V'
                || VT_VERSION_LIST (C_VER)
                || '.COL_NAME
               AND V'
                || VT_VERSION_LIST (C_VER - 1)
                || '.PRIMARY_KEY_VALUE(+) = V'
                || VT_VERSION_LIST (C_VER)
                || '.PRIMARY_KEY_VALUE';
          END IF;

          V_REF_ORDER_CLAUSE := --' ORDER BY V'||VT_VERSION_LIST(1)||'.TABLE_ID, 'COALESCE (
          V_REF_ORDER_CLAUSE||' V'||VT_VERSION_LIST (C_VER)||'.PRIMARY_KEY_VALUE,'|| (CASE WHEN VT_VERSION_LIST.COUNT = 1 THEN '1' END);

       END LOOP;

            SELECT VERSION_NUMBER
              INTO V_MAX_ROW_VERSION
              FROM (SELECT   COUNT (1) CNT, VERSION_NUMBER
                        FROM GT_AUDIT_VERSION_DTL
                    GROUP BY VERSION_NUMBER
                    ORDER BY 1 DESC)
             WHERE ROWNUM = 1;

       --IF PI_AUDIT_VIEW = 'DETAIL' THEN
       V_REF_SELECT_COLS := V_REF_SELECT_COLS||', V'||(CASE WHEN PI_AUDIT_VIEW = 'DETAIL' THEN TRIM(PI_VERSION_LIST) ELSE V_MAX_ROW_VERSION END)||'.VERSION_NUMBER,
                                   DECODE (V'||VT_VERSION_LIST (VT_VERSION_LIST.COUNT)||'.OPERATION_TYPE, 1, ''ADDED'', 2, ''UPDATED'', 3, ''DELETED'') OPERATION_TYPE,
                                   TO_CHAR(V'||VT_VERSION_LIST (VT_VERSION_LIST.COUNT)||'.MODIFIED_DATE,''DD-MON-YYYY HH24:MI'') INSERT_DATE, (SELECT USER_NAME FROM E2B_CFG_USERS
                                       WHERE USER_ID = V'||(CASE WHEN PI_AUDIT_VIEW = 'DETAIL' THEN TRIM(PI_VERSION_LIST) ELSE V_MAX_ROW_VERSION END)||'.USER_ID) USER_NAME, V'||V_MAX_ROW_VERSION||'.TABLE_NAME, V'||V_MAX_ROW_VERSION||'.CHILD_RANK ';

               PO_AUDIT_VERSION_SQL     :=
                     'SELECT  V'|| V_MAX_ROW_VERSION||'.COL_NAME'
                  || (CASE WHEN V_PREV_VERSION IS NULL AND PI_AUDIT_VIEW = 'DETAIL' THEN ', NULL V0' END)||V_REF_SELECT_COLS
                  || ' FROM '
                  || LTRIM( V_REF_TABLE_LIST,',')
                  || (CASE
                         WHEN V_REF_WHERE_COND IS NOT NULL
                            THEN ' WHERE ' || V_REF_WHERE_COND
                      END
                     )
                  || ' ORDER BY V'||VT_VERSION_LIST(1)||'.TABLE_ID, COALESCE ('||RTRIM( V_REF_ORDER_CLAUSE,',')||')' ;


    EXCEPTION
      WHEN OTHERS
      THEN
         PKG_COMMON_UTILITIES.GV_ERRM    := SQLERRM;

         PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'.P_GET_AUDIT_DETAILS',SQLERRM,1,1,'ERROR');

         RAISE_APPLICATION_ERROR
                        (-20001,
                            $$PLSQL_UNIT|| '.P_GET_AUDIT_DETAILS'
                        );
    END P_GET_AUDIT_DETAILS;

/*******************************************************************************************************************************************
    Name           : P_GET_VERSION_VIEW
    Type           : PROCEDURE
    Description    : This procedure returns the version data of particular audit record.
*******************************************************************************************************************************************/
    PROCEDURE P_GET_VERSION_VIEW (
       PI_PAGE_ID           IN       NUMBER,
       PI_AUDIT_KEY_VALUE   IN       NUMBER,
       PI_VERSION_ID_LIST   IN       VARCHAR2,
       PI_VIEW_FLG          IN       VARCHAR2,
       PO_RC_VERSION_DATA   OUT      SYS_REFCURSOR
    )
    IS
       V_OUT_AUDIT_SQL      VARCHAR2 (32000);
       V_VERSION_COL_LIST   VARCHAR2 (2000);
       V_VERSION_COLS       VARCHAR2 (2000);
       V_INSERT_SQL         VARCHAR2 (32000);
       V_REF_CURSOR_QRY     VARCHAR2 (32000);
       V_LOOP_CNT           NUMBER           := 0;
       V_WHERE_COND         VARCHAR2(2000);
    BEGIN
       DELETE FROM GT_AUDIT_VERSION_DTL;
       DELETE FROM GT_VERSION_DTL_TEMP;

       P_GET_AUDIT_LOG_TBL_DTL (PI_PAGE_ID);

     PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW','PI_VIEW_FLG=> '||PI_VIEW_FLG||', PI_AUDIT_KEY_VALUE=>'||PI_AUDIT_KEY_VALUE||', PI_VERSION_ID_LIST=>'||PI_VERSION_ID_LIST,1,3,'Trace');

       IF PI_VIEW_FLG = 'DETAIL'
       THEN
          PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',null,2,3,'Trace');

          FOR I IN (SELECT TRIM(COLUMN_VALUE) AS AUDIT_VERSION
                      FROM TABLE (PKG_COMMON_UTILITIES.F_SPLIT (PI_VERSION_ID_LIST, ',')))
          LOOP
             PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',null,3,3,'Trace');

             P_GET_AUDIT_DETAILS (I.AUDIT_VERSION,
                                  PI_PAGE_ID,
                                  PI_AUDIT_KEY_VALUE,
                                  PI_VIEW_FLG,
                                  V_OUT_AUDIT_SQL
                                 );
                 PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',V_OUT_AUDIT_SQL,4,3,'Trace');


             V_INSERT_SQL    :=
                   ' INSERT INTO GT_VERSION_DTL_TEMP (COL_NAME, VERSION1, VERSION2, VERSION_NUMBER, OPERATION_TYPE, INSERT_DATE, USER_NAME, TABLE_NAME, CHILD_RANK, ROW_NUMBER) SELECT T1.*, ROWNUM FROM('
                || V_OUT_AUDIT_SQL
                || ') T1';
           PKG_LOGger.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',V_INSERT_SQL,5,3,'Trace');

          EXECUTE IMMEDIATE V_INSERT_SQL;
          END LOOP;
           PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',null,6,3,'Trace');

          V_VERSION_COL_LIST := ',PKG_AUDIT_LOG.F_GET_DECODE_VALUE(QCF.SELECT_TABLE, QCF.SELECT_COLUMN, QCF.JOIN_FIELD, VERSION1) VERSION1, DECODE(OPERATION_TYPE,''DELETED'',NULL,PKG_AUDIT_LOG.F_GET_DECODE_VALUE(QCF.SELECT_TABLE, QCF.SELECT_COLUMN, QCF.JOIN_FIELD, VERSION2) ) VERSION2 ';
           PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',null,7,3,'Trace');

          --V_WHERE_COND := ' WHERE VERSION2 IS NOT NULL ';

          V_WHERE_COND := NULL;

           PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',null,8,3,'Trace');

       ELSE
          FOR I IN (SELECT TRIM(COLUMN_VALUE) AS AUDIT_VERSION
                      FROM TABLE (PKG_COMMON_UTILITIES.F_SPLIT (PI_VERSION_ID_LIST, ',')))
          LOOP
             V_LOOP_CNT            := V_LOOP_CNT + 1;
             V_VERSION_COLS    :=
                                  V_VERSION_COLS || ', VERSION' || V_LOOP_CNT;
             V_VERSION_COL_LIST    :=
                                  V_VERSION_COL_LIST || ', PKG_AUDIT_LOG.F_GET_DECODE_VALUE(QCF.SELECT_TABLE, QCF.SELECT_COLUMN, QCF.JOIN_FIELD, VERSION' || V_LOOP_CNT||') VERSION' || V_LOOP_CNT;
          END LOOP;

PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',SQLERRM,9,3,'Trace');

          P_GET_AUDIT_DETAILS (PI_VERSION_ID_LIST,
                               PI_PAGE_ID,
                               PI_AUDIT_KEY_VALUE,
                               PI_VIEW_FLG,
                               V_OUT_AUDIT_SQL
                              );

PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',SQLERRM,10,3,'Trace');
          V_INSERT_SQL    :=
                ' INSERT INTO GT_VERSION_DTL_TEMP (COL_NAME'
             || V_VERSION_COLS
             || ', VERSION_NUMBER, OPERATION_TYPE, INSERT_DATE, USER_NAME, TABLE_NAME, CHILD_RANK, ROW_NUMBER) SELECT T1.*, ROWNUM FROM('
             || V_OUT_AUDIT_SQL
             || ') T1';

PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',SQLERRM,11,3,'Trace');

          EXECUTE IMMEDIATE V_INSERT_SQL;

PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',SQLERRM,12,3,'Trace');

       END IF;

PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',SQLERRM,13,3,'Trace');

       V_REF_CURSOR_QRY :=  'SELECT DISTINCT '''||GV_PAGE_NAME||''' AS PAGE_NAME, (CASE WHEN GVDT.CHILD_RANK IS NOT NULL THEN GUI_PARENT_TEXT||''(''||ROWNUM||'')'' ELSE  GUI_PARENT_TEXT END) AS GUI_PARENT_TEXT, QCF.FIELD_LABEL AS COL_NAME '
                                   || V_VERSION_COL_LIST
                                   || ', GVDT.VERSION_NUMBER, GVDT.OPERATION_TYPE, GVDT.INSERT_DATE, GVDT.USER_NAME, GVDT.TABLE_NAME, GVDT.ROW_NUMBER, GVDT.CHILD_RANK, QCF.FIELD_ID FROM GT_VERSION_DTL_TEMP GVDT , E2B_CMN_FIELDS QCF, E2B_CFG_AUDIT_TAB_RELATIONS QCATR '
                                   || (CASE WHEN V_WHERE_COND IS NOT NULL THEN V_WHERE_COND ||' AND ' ELSE ' WHERE ' END)|| ' GVDT.TABLE_NAME = QCATR.HIST_TABLE_NAME
                                                      AND QCATR.TABLE_NAME = QCF.TABLE_NAME
                                                      AND GVDT.COL_NAME = QCF.COLUMN_NAME
                                                      AND ((NVL(GVDT.VERSION1,-1) <> NVL(GVDT.VERSION2,-1) ) OR OPERATION_TYPE = ''DELETED'' )
                                                      AND QCF.SHOW_IN_AUDIT_LOG <> 0
                                                      AND GVDT.VERSION_NUMBER IN ('||PI_VERSION_ID_LIST||')
                                    ORDER BY VERSION_NUMBER DESC, GVDT.CHILD_RANK NULLS FIRST, QCF.FIELD_ID, ROW_NUMBER';

           PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',V_REF_CURSOR_QRY,14,3,'Trace');

--              V_REF_CURSOR_QRY :=  'SELECT '''||GV_PAGE_NAME||''' AS PAGE_NAME, TABLE_NAME AS COL_NAME'
--                                   || V_VERSION_COL_LIST
--                                   || ', VERSION_NUMBER, OPERATION_TYPE, INSERT_DATE, USER_NAME, TABLE_NAME, ROW_NUMBER FROM GT_VERSION_DTL_TEMP '
--                                   ||V_WHERE_COND||' ORDER BY ROW_NUMBER';
       OPEN PO_RC_VERSION_DATA FOR  V_REF_CURSOR_QRY;



    EXCEPTION
      WHEN OTHERS
      THEN
         PKG_COMMON_UTILITIES.GV_ERRM    := SQLERRM;

         PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_GET_VERSION_VIEW',SQLERRM,1,1,'ERROR');

         RAISE_APPLICATION_ERROR
                        (-20001,
                            $$PLSQL_UNIT|| 'P_GET_VERSION_VIEW'
                        );


    END P_GET_VERSION_VIEW;


END PKG_AUDIT_LOG;
/