Prompt Package Body PKG_LOGGER;
CREATE OR REPLACE PACKAGE BODY &TRANSFORMPV_USER..PKG_LOGGER
AS
/*****************************************************************************************
Company             : Vitrana
Author              : Raju Kataria
Version Number      : 1.0
Description         : This package having code related to exception logging that's occur in database.
Last Modified Date  : 06-DEC-2019
******************************************************************************************/
   /**************************************************************************************
	Description     : This function is used to hadle oracle error code.
	*************************************************************************************/
   FUNCTION F_GET_ERROR_MESSAGE (PI_SQL_ERROR IN VARCHAR2)
      RETURN VARCHAR2
   AS
   BEGIN
      RETURN REPLACE ((REPLACE (PI_SQL_ERROR, CHR (10))),
                      'ORA-20',
                      CHR (10) || 'ORA-20'
                     );
   EXCEPTION
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR (-20001,
                                  'f_get_error_message' || '$' || SQLERRM
                                 );
   END F_GET_ERROR_MESSAGE;   
   /**************************************************************************************
	Description     : This function is used to concatenate procedure name, calling procedure parameters,
                         line number where error raised and actual oracle error message.
	**************************************************************************************/
   FUNCTION F_EXCEPTION_TEXT (
      PI_NAME_PROCEDURE   IN   VARCHAR2,
      PI_COMMENTS         IN   VARCHAR2 DEFAULT NULL
   )
      RETURN VARCHAR2

   AS
      L_PARAM_STRING   VARCHAR2 (30000);
   BEGIN
      IF PI_COMMENTS IS NOT NULL
      THEN
         L_PARAM_STRING    := PI_COMMENTS;
      END IF;

      RETURN    PI_NAME_PROCEDURE
             || '('
             || L_PARAM_STRING
             || '),'
             || F_GET_LINE_NUMBER ()
             || ', '
             || SQLERRM;
   EXCEPTION
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR (-20012,
                                  'F_EXCEPTION_TEXT' || '$' || SQLERRM
                                 );
   END F_EXCEPTION_TEXT;   
   /**************************************************************************************
	Description     : This function is used to return line number where the exception was raised from.
	**************************************************************************************/
   FUNCTION F_GET_LINE_NUMBER
      RETURN VARCHAR2

   AS
   BEGIN
      RETURN SUBSTR (DBMS_UTILITY.FORMAT_ERROR_BACKTRACE,
                     INSTR (UPPER (DBMS_UTILITY.FORMAT_ERROR_BACKTRACE),
                            'LINE'
                           )
                    );
   EXCEPTION
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR (-20003,
                                  'f_get_line_number' || '$' || SQLERRM
                                 );
   END F_GET_LINE_NUMBER;   
   /**************************************************************************************
	Description     : This procedure is used to log code level traces in a log table.
	**************************************************************************************/
   PROCEDURE P_LOG_TRACE (
      PI_PACKAGE_NAME   IN   VARCHAR2,
      PI_PROC_NAME      IN   VARCHAR2,
      PI_COMMENTS       IN   VARCHAR2,
      PI_STEP_NO        IN   NUMBER,
      PI_LOG_LEVEL      IN   NUMBER,
      PI_LOG_TYPE       IN   VARCHAR2
   )

   AS
      PRAGMA AUTONOMOUS_TRANSACTION;
      V_LOG_LEVEL   NUMBER          := 0;
      V_SQLCODE     VARCHAR2 (20) := PKG_CONTEXT_API.F_GET_PARAMETER ('CODE');
      V_SQLERRM     VARCHAR2 (4000)
                           := PKG_CONTEXT_API.F_GET_PARAMETER ('LOG_MESSAGE');
   BEGIN
      SELECT TO_NUMBER (VALUE)
        INTO V_LOG_LEVEL
        FROM ETL_CONSTANTS
       WHERE KEY = 'LOG_LEVEL';

      IF PI_LOG_LEVEL <= V_LOG_LEVEL
      THEN
         V_SQLCODE    :=
            CASE
               WHEN PI_LOG_TYPE = 'ERROR'
                  THEN V_SQLCODE
               WHEN PI_LOG_TYPE = 'WARNING'
                  THEN '1'
               ELSE '0'
            END;
         V_SQLERRM    :=
            CASE
               WHEN PI_LOG_TYPE = 'ERROR'
                  THEN V_SQLERRM
               WHEN PI_LOG_TYPE = 'WARNING'
                  THEN PI_COMMENTS
            END;

         INSERT INTO ETL_TRACE_LOG
                     (LOG_ID, LOG_LEVEL, LOG_TYPE_ID,
                      ETL_ID,
                      CASE_ID,
                      CASE_NUM,
                      STEP_NUMBER, PROC_NAME, PACKAGE_NAME, LOG_SQL_CODE,
                      LOG_MESSAGE,
                      COMMENTS, MESSAGE_ID, LOG_TIME,
                      ETL_EXECUTION_ID
                     )
              VALUES (LOG_ID_SEQ.NEXTVAL, PI_LOG_LEVEL, NULL,
                      PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_ID'),
                      PKG_CONTEXT_API.F_GET_PARAMETER ('CASE_ID'),
                      PKG_CONTEXT_API.F_GET_PARAMETER ('CASE_NUM'),
                      PI_STEP_NO, PI_PROC_NAME, PI_PACKAGE_NAME, V_SQLCODE,
                      V_SQLERRM || ', ' || F_GET_LINE_NUMBER (),
                      PI_COMMENTS, NULL, SYSTIMESTAMP,
                      PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_EXECUTION_ID')
                     );

         COMMIT;
      END IF;
   EXCEPTION
      WHEN OTHERS
      THEN
         ROLLBACK;
         V_SQLCODE    := SUBSTR (SQLCODE, 1, 10);
         V_SQLERRM    := SUBSTR (SQLERRM, 1, 100);
   END P_LOG_TRACE;  
   /**************************************************************************************
	Description     : This procedure is used to log ETL execution for monitoring purpose.
	**************************************************************************************/
   PROCEDURE P_ETL_EXEC_LOG (
      PI_START_END_FLAG        IN   VARCHAR2,
      PI_ETL_AREA              IN   VARCHAR2,
      PI_LOG_MESSAGE           IN   VARCHAR2 DEFAULT NULL,
      PI_PROC_ID               IN   NUMBER DEFAULT NULL,
      PI_NO_OF_ROW_PROCESSED   IN   NUMBER DEFAULT NULL,
      PI_STATUS                IN   NUMBER DEFAULT 0
   )

   IS
      PRAGMA AUTONOMOUS_TRANSACTION;
   --PI_STATUS => 1- Success, 0- Failed
   BEGIN
      /*LOG ETL START TIME AS SYSTIMESTAMP AND STATUS AS 'RUNNING'
      IN ETL_EXECUTION_LOG*/
      IF UPPER (PI_START_END_FLAG) = 'START'
      THEN
         INSERT INTO ETL_EXECUTION_LOG
                     (EXECUTION_ID,
                      EXECUTION_SEQ,
                      ETL_ID,
                      ETL_TYPE,
                      ETL_AREA, PROC_ID, PROC_START_TIME, LOG_MESSAGE,
                      LOG_TIME, STATUS,
                      BATCH_NO
                     )
              VALUES (PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_EXECUTION_ID'),
                      ETL_EXECUTION_LOG_SEQ.NEXTVAL,
                      PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_ID'),
                      PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_TYPE'),
                      PI_ETL_AREA, PI_PROC_ID, SYSTIMESTAMP, PI_LOG_MESSAGE,
                      SYSTIMESTAMP, PI_STATUS,
                      PKG_CONTEXT_API.F_GET_PARAMETER ('BATCH_NO')
                     );
      ELSIF UPPER (PI_START_END_FLAG) = 'END'
      THEN
         IF PI_ETL_AREA = 'END'
         THEN
            INSERT INTO ETL_EXECUTION_LOG
                        (EXECUTION_ID,
                         EXECUTION_SEQ,
                         ETL_ID,
                         ETL_TYPE,
                         ETL_AREA, PROC_ID, PROC_END_TIME,
                         LOG_MESSAGE, LOG_TIME, STATUS,
                         BATCH_NO
                        )
                 VALUES (PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_EXECUTION_ID'),
                         ETL_EXECUTION_LOG_SEQ.NEXTVAL,
                         PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_ID'),
                         UPPER (PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_TYPE')),
                         PI_ETL_AREA, PI_PROC_ID, SYSTIMESTAMP,
                         PI_LOG_MESSAGE, SYSTIMESTAMP, PI_STATUS,
                         PKG_CONTEXT_API.F_GET_PARAMETER ('BATCH_NO')
                        );
         ELSE
            UPDATE ETL_EXECUTION_LOG
               SET PROC_END_TIME = SYSTIMESTAMP,
                   NO_OF_ROWS_PROCESSED = PI_NO_OF_ROW_PROCESSED,
                   LOG_MESSAGE = PI_LOG_MESSAGE,
                   STATUS = PI_STATUS
             WHERE EXECUTION_ID =
                          PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_EXECUTION_ID')
               AND (PROC_ID = PI_PROC_ID OR PROC_END_TIME IS NULL)
               AND BATCH_NO = PKG_CONTEXT_API.F_GET_PARAMETER ('BATCH_NO');
         END IF;
      END IF;

      COMMIT;
   EXCEPTION
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR
                              (-20001,
                               PKG_LOGGER.F_EXCEPTION_TEXT (   $$PLSQL_UNIT
                                                            || '.P_ETL_EXEC_LOG'
                                                           )
                              );
   END P_ETL_EXEC_LOG; 
   /**************************************************************************************
	Description     : This procedure is used to get the ETL log for monitoring purpose. It takes input as ETL name.
	**************************************************************************************/
   PROCEDURE P_GET_EXECUTION_LOG (
      PI_ETL_NAME            IN       VARCHAR2,
      PI_ALL_OR_LAST_RUN     IN       VARCHAR2,
      PO_RC_LAST_RUN_TIMES   OUT      SYS_REFCURSOR,
      PO_RC_EXECUTION_LOG    OUT      SYS_REFCURSOR
   )
   IS
   BEGIN
      OPEN PO_RC_LAST_RUN_TIMES FOR
         SELECT ELW.*
           FROM ETL_LOAD_WINDOW ELW, ETL_MASTER EM
          WHERE EM.ETL_ID = ELW.ETL_ID
            AND UPPER (EM.ETL_NAME) = UPPER (PI_ETL_NAME);

      IF PI_ALL_OR_LAST_RUN = 'LAST'
      THEN
         OPEN PO_RC_EXECUTION_LOG FOR
            SELECT   *
                FROM VW_LATEST_ETL_RUN_MONITOR VLERM, ETL_MASTER EM
               WHERE EM.ETL_NAME = VLERM.ETL_NAME
                 AND UPPER (EM.ETL_NAME) = UPPER (PI_ETL_NAME)
            ORDER BY EXECUTION_ID DESC, EXECUTION_SEQ DESC;
      ELSIF PI_ALL_OR_LAST_RUN = 'ALL'
      THEN
         OPEN PO_RC_EXECUTION_LOG FOR
            SELECT EXECUTION_ID, PROC_START_TIME, PROC_END_TIME, STATUS,
                   ROUND (  (  CAST (PROC_END_TIME AS DATE)
                             - CAST (PROC_START_TIME AS DATE)
                            )
                          * 24
                          * 60
                          * 60,
                          2
                         ) AS TIMETAKEN,
                   LOG_MESSAGE
              FROM (SELECT EXECUTION_ID, EXECUTION_SEQ, ETL_NAME, ETL_TYPE,
                           ETL_AREA, PACKAGE_NAME, PROCEDURE_NAME, STATUS,
                           TIMETAKEN, NO_OF_ROWS_PROCESSED, LOG_MESSAGE,
                           LOG_TIME, BATCH_NO,
                           ROW_NUMBER () OVER (PARTITION BY EXECUTION_ID ORDER BY EXECUTION_ID DESC,
                            EXECUTION_SEQ DESC) RN,
                           MIN (PROC_START_TIME) OVER (PARTITION BY EXECUTION_ID)
                                                              PROC_START_TIME,
                           MAX (PROC_END_TIME) OVER (PARTITION BY EXECUTION_ID)
                                                                PROC_END_TIME
                      FROM VW_ALL_ETL_RUN_MONITOR)
             WHERE RN = 1
          ORDER BY EXECUTION_ID DESC, EXECUTION_SEQ DESC;
      END IF;
   END P_GET_EXECUTION_LOG;
END PKG_LOGGER;
/
