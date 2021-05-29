CREATE OR REPLACE PACKAGE BODY &TRANSFORMPV_USER..PKG_ETL_MAIN
AS
/*****************************************************************************************
Company             : Vitrana
Author              : Raju Kataria
Version Number      : 1.0
Description         : This package having code related to ETL Job create and schedule.
Last Modified Date  : 06-DEC-2019
******************************************************************************************/
   /*************************************************************************************
	Description     : This procedure having code schedule a job.
	**************************************************************************************/
   PROCEDURE P_SAVE_ETL_SCHEDULE (
      PI_ETL_NAME           IN   VARCHAR2,
      PI_FREQUENCY          IN   VARCHAR2,
      PI_DAYS_IN_WEEK       IN   VARCHAR2,
      PI_START_DATE         IN   DATE,
      PI_USER_ID            IN   NUMBER,
      PI_USER_GROUPS_LIST   IN   PKG_COMMON_UTILITIES.T_STRING_TAB,
      PI_DISABLED            IN   NUMBER
   )
   IS
      V_MAIN_JOB_NAME          VARCHAR2 (200)  := 'TRANSFORMPV_MAIN_ETL';
      V_JOB_STATE              VARCHAR2 (100) := NULL;
      V_ETL_ID                 NUMBER;
      V_GROUP_EXCLUDE_DELETE   VARCHAR2 (4000);
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS(PI_USER_ID);
      BEGIN
         SELECT NVL(STATE,'NOTNULL')
           INTO V_JOB_STATE
           FROM ALL_SCHEDULER_JOBS
          WHERE JOB_NAME = V_MAIN_JOB_NAME;
      EXCEPTION     
         WHEN NO_DATA_FOUND
         THEN
            NULL;
      END;

      IF V_JOB_STATE = 'RUNNING'
      THEN
         DBMS_SCHEDULER.STOP_JOB (JOB_NAME => V_MAIN_JOB_NAME);
         DBMS_SCHEDULER.DROP_JOB (JOB_NAME => V_MAIN_JOB_NAME);
      ELSIF V_JOB_STATE IS NOT NULL
      THEN
         DBMS_SCHEDULER.DROP_JOB (JOB_NAME => V_MAIN_JOB_NAME);
      END IF;

    IF PI_DISABLED=0 THEN
      DBMS_SCHEDULER.CREATE_JOB
         (JOB_NAME             => V_MAIN_JOB_NAME,
          JOB_TYPE             => 'PLSQL_BLOCK',
          JOB_ACTION           =>    'BEGIN PKG_ETL_MAIN.P_ETL_START('''
                                  || PI_ETL_NAME
                                  || ''',''INCREMENTAL''); END;',
          REPEAT_INTERVAL      =>    'FREQ='
                                  || PI_FREQUENCY
                                  || ';'
                                  || CASE
                                        WHEN PI_DAYS_IN_WEEK IS NOT NULL
                                           THEN    'BYDAY='
                                                || PI_DAYS_IN_WEEK
                                                || ';'
                                     END,
          START_DATE           => PI_START_DATE,
          ENABLED              => TRUE
         );
         END IF;

      UPDATE    ETL_MASTER EM
            SET EM.FREQUENCY = PI_FREQUENCY,
                EM.DAYS_IN_WEEK = PI_DAYS_IN_WEEK,
                EM.START_DATE = PI_START_DATE,
                EM.ENABLED = DECODE(PI_DISABLED, 1, 0, 1),
                MODIFIED_BY = PI_USER_ID
          WHERE UPPER (ETL_NAME) = UPPER (PI_ETL_NAME)
      RETURNING ETL_ID
           INTO V_ETL_ID;

      FOR LOOP_IDX IN PI_USER_GROUPS_LIST.FIRST .. PI_USER_GROUPS_LIST.LAST
      LOOP
         IF PI_USER_GROUPS_LIST (1) IS NULL
         THEN
            EXIT;
         ELSE
            V_GROUP_EXCLUDE_DELETE    :=
               V_GROUP_EXCLUDE_DELETE || ','
               || PI_USER_GROUPS_LIST (LOOP_IDX);

            INSERT INTO ETL_CFG_USER_GROUPS
                        (ETL_GROUP_ID, ETL_ID, GROUP_ID, DELETED, CREATED_BY,
                         CREATED_DATE, MODIFIED_BY, MODIFIED_DATE)
               SELECT ETL_USER_GROUP_SEQ.NEXTVAL, V_ETL_ID,
                      PI_USER_GROUPS_LIST (LOOP_IDX), 0, PI_USER_ID, SYSDATE,
                      PI_USER_ID, SYSDATE
                 FROM DUAL
                WHERE NOT EXISTS (
                         SELECT 1
                           FROM ETL_CFG_USER_GROUPS ECUG
                          WHERE ECUG.ETL_ID = V_ETL_ID
                            AND ECUG.GROUP_ID = PI_USER_GROUPS_LIST (LOOP_IDX)
                            AND DELETED = 0);
         END IF;
      END LOOP;

      UPDATE ETL_CFG_USER_GROUPS ECUG
         SET DELETED = 1,
             MODIFIED_BY = PI_USER_ID,
             MODIFIED_DATE = SYSDATE
       WHERE ECUG.ETL_ID = V_ETL_ID
         AND ECUG.GROUP_ID NOT IN (
                SELECT COLUMN_VALUE AS GROUP_ID
                  FROM TABLE
                          (PKG_COMMON_UTILITIES.F_SPLIT
                                        (TRIM (',' FROM V_GROUP_EXCLUDE_DELETE)
                                        )
                          ));

   EXCEPTION
         WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
         THEN
            RAISE_APPLICATION_ERROR (-20002,
                                     PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20002, SQLERRM)
                                 );
         WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_ADMIN_DISABLE
         THEN
            RAISE_APPLICATION_ERROR (-20003,
                                     PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20003, SQLERRM)
                                 );      
   END P_SAVE_ETL_SCHEDULE;
	/**************************************************************************************
	Description     : This procedure is used to get the saved ETL schedule details.
	**************************************************************************************/
   PROCEDURE P_GET_ETL_SCHEDULE (
      PI_ETL_NAME             IN       VARCHAR2,
      PO_RC_ETL_SCHEDULE      OUT      SYS_REFCURSOR,
      PO_RC_USER_GROUPS       OUT      SYS_REFCURSOR
   )
   IS
      V_ETL_ID   NUMBER;
   BEGIN
      SELECT ETL_ID
        INTO V_ETL_ID
        FROM ETL_MASTER
       WHERE UPPER (ETL_NAME) = UPPER (PI_ETL_NAME);

--      OPEN PO_RC_ETL_USER_GROUPS FOR
--         SELECT *
--           FROM ETL_CFG_USER_GROUPS ECUG
--          WHERE ETL_ID = V_ETL_ID AND DELETED = 0;

      OPEN PO_RC_USER_GROUPS FOR
         SELECT *
           FROM SYN_CFG_GROUPS
          WHERE DELETED IS NULL
       ORDER BY GROUP_NAME;

      OPEN PO_RC_ETL_SCHEDULE FOR
         SELECT    EM.ETL_ID, EM.ETL_NAME, EM.DESCRIPTION,
                   DECODE(EM.ENABLED, 0, 1, 0) DISABLED, EM.DELETED_DATE, EM.CREATED_DATE INSERT_DATE,
                   EM.MODIFIED_DATE UPDATE_DATE, EM.MAX_BATCHES, EM.FREQUENCY,
                   EM.START_DATE, EM.DAYS_IN_WEEK, EM.DELETED,
                   LISTAGG ( ECUG.GROUP_ID|| (CASE WHEN CG.GROUP_NAME IS NOT NULL THEN PKG_COMMON_UTILITIES.GV_ID_NAME_SEPARATOR|| CG.GROUP_NAME END), PKG_COMMON_UTILITIES.GV_ID_NAME_COMBO_SEPARATOR )
                WITHIN GROUP (ORDER BY CG.GROUP_NAME) USERGROUP
            FROM ETL_MASTER EM,
              ETL_CFG_USER_GROUPS ECUG,
              SYN_CFG_GROUPS CG
            WHERE EM.ETL_ID   = ECUG.ETL_ID(+)
            AND EM.ETL_NAME   = PI_ETL_NAME
            AND ECUG.GROUP_ID = CG.GROUP_ID(+)
            AND ECUG.DELETED(+) = 0
            AND CG.DELETED IS NULL
            GROUP BY EM.ETL_ID,
              EM.ETL_NAME,
              EM.DESCRIPTION,
              EM.ENABLED,
              EM.DELETED_DATE,
              EM.CREATED_DATE,
              EM.MODIFIED_DATE,
              EM.MAX_BATCHES,
              EM.FREQUENCY,
              EM.START_DATE,
              EM.DAYS_IN_WEEK,
              EM.DELETED;

   END P_GET_ETL_SCHEDULE;
   /**************************************************************************************
	Description     : This procedure is used to initialize/load all required ETL configuration on database session,
                      so it can be available end to end during ETL execution.
	**************************************************************************************/
   PROCEDURE P_INIT_SESSION_VARS
   IS
      /*INITIALIZE ALL SESSION VARIABLES.*/
      V_ETL_NAME      VARCHAR2 (100);
      V_ETL_ENABLED   NUMBER;
      V_DATE_FROM     DATE;
      V_DATE_TO       DATE;
   BEGIN
      PKG_CONTEXT_API.P_SET_PARAMETER ('CODE', '0');
      PKG_CONTEXT_API.P_SET_PARAMETER ('LOG_MESSAGE', NULL);

      SELECT ENABLED, ETL_NAME
        INTO V_ETL_ENABLED, V_ETL_NAME
        FROM ETL_MASTER
       WHERE ETL_ID = PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_ID');

      PKG_CONTEXT_API.P_SET_PARAMETER ('ETL_NAME', V_ETL_NAME);
      PKG_CONTEXT_API.P_SET_PARAMETER ('ETL_ENABLED', V_ETL_ENABLED);

      IF NVL (V_ETL_ENABLED, 0) = 0
      THEN
         PKG_CONTEXT_API.P_SET_PARAMETER ('CODE', '-1');
         PKG_CONTEXT_API.P_SET_PARAMETER
                               ('LOG_MESSAGE',
                                   PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_NAME')
                                || ' NOT ENABLED!'
                               );
         RETURN;
      END IF;

      --Load all constants in session
      FOR I IN (SELECT KEY, VALUE
                  FROM ETL_CONSTANTS)
      LOOP
         PKG_CONTEXT_API.P_SET_PARAMETER (I.KEY, I.VALUE);
      END LOOP;

      FOR I IN (SELECT KEY, VALUE
                  FROM CFG_COMMON_PROFILE)
      LOOP
         PKG_CONTEXT_API.P_SET_PARAMETER (I.KEY, I.VALUE);
      END LOOP;

      SELECT DATE_FROM, DATE_TO
        INTO V_DATE_FROM, V_DATE_TO
        FROM ETL_LOAD_WINDOW
       WHERE ETL_ID = PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_ID');

      PKG_CONTEXT_API.P_SET_PARAMETER
                      ('LOAD_WINDOW_FROM',
                       TO_CHAR (V_DATE_FROM,
                                PKG_CONTEXT_API.F_GET_PARAMETER ('DATE_FORMAT')
                               )
                      );
      PKG_CONTEXT_API.P_SET_PARAMETER
                      ('LOAD_WINDOW_TO',
                       TO_CHAR (V_DATE_TO,
                                PKG_CONTEXT_API.F_GET_PARAMETER ('DATE_FORMAT')
                               )
                      );
   EXCEPTION
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR
                         (-20001,
                          PKG_LOGGER.F_EXCEPTION_TEXT (   $$PLSQL_UNIT
                                                       || '.P_INIT_SESSION_VARS'
                                                      )
                         );
   END P_INIT_SESSION_VARS;
	 /**************************************************************************************
	Description     : This procedure is used to update status for cases being processed by ETL.
	**************************************************************************************/
--   PROCEDURE P_UPDATE_ETL_CASE_DETAILS (
--      PI_CASE_ID   IN   NUMBER,
--      PI_MESSAGE   IN   VARCHAR2
--   )
--   IS
--   BEGIN
--      IF PKG_CONTEXT_API.F_GET_PARAMETER ('CODE') NOT IN ('0', '1')
--      THEN
--         ROLLBACK;
--      END IF;

   --      UPDATE ETL_CASE_DETAILS
--         SET STATUS =
--                DECODE (PKG_CONTEXT_API.F_GET_PARAMETER ('CODE'),
--                        '0', 4,
--                        '1', 3,
--                        2
--                       ),
--             MESSAGE = PKG_CONTEXT_API.F_GET_PARAMETER ('LOG_MESSAGE')
--       WHERE BATCH_NO = PKG_CONTEXT_API.F_GET_PARAMETER ('BATCH_NO')
--         AND ETL_ID = PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_ID')
--         AND STATUS = 1;

   --      COMMIT;
--   EXCEPTION
--      WHEN OTHERS
--      THEN
--         RAISE_APPLICATION_ERROR
--                   (-20001,
--                    PKG_LOGGER.F_EXCEPTION_TEXT (   $$PLSQL_UNIT
--                                                 || '.P_UPDATE_ETL_CASE_DETAILS'
--                                                )
--                   );
--   END P_UPDATE_ETL_CASE_DETAILS;
   /**************************************************************************************
	Description     : This procedure is used to execute all procedures configured in ETG_CFG_PROCS table to extract data from source to staging.
	**************************************************************************************/
   PROCEDURE P_LOAD_STAGE
   IS
      V_CFG_PROC_ID   NUMBER;
   BEGIN
      IF PKG_CONTEXT_API.F_GET_PARAMETER ('CODE') <> 0
      THEN
         RETURN;
      END IF;

      FOR I IN (SELECT   CFG_PROC_ID,
                            DECODE (PACKAGE_NAME,
                                    NULL, NULL,
                                    PACKAGE_NAME || '.'
                                   )
                         || PROCEDURE_NAME AS PROC_NAME
                    FROM ETL_CFG_PROCS
                   WHERE ETL_ID = PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_ID')
                     AND ENABLED = 1
                     AND DELETED_DATE IS NULL
                     AND UPPER (ETL_MODULE) = 'STAGING'
                     AND UPPER (PROC_TYPE) = 'CASE'
                ORDER BY EXECUTION_ORDER)
      LOOP
         V_CFG_PROC_ID                                  := I.CFG_PROC_ID;
         PKG_LOGGER.P_ETL_EXEC_LOG ('START',
                                    'STAGING',
                                    'Process Started',
                                    I.CFG_PROC_ID
                                   );

         EXECUTE IMMEDIATE 'BEGIN ' || I.PROC_NAME || '; END;';

         PKG_LOGGER.P_ETL_EXEC_LOG
                                 ('END',
                                  'STAGING',
                                  'Process Finished',
                                  V_CFG_PROC_ID,
                                  PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED,
                                  1
                                 );
         PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED    := NULL;
      END LOOP;
   EXCEPTION
      WHEN OTHERS
      THEN
         PKG_LOGGER.P_ETL_EXEC_LOG
                                ('END',
                                 'STAGING',
                                 'Process Finished',
                                 V_CFG_PROC_ID,
                                 PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED,
                                 2
                                );
         PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED    := NULL;
         RAISE_APPLICATION_ERROR (-20001,
                                  PKG_LOGGER.F_EXCEPTION_TEXT (   $$PLSQL_UNIT
                                                               || '.P_LOAD_STAGE'
                                                              )
                                 );
   END P_LOAD_STAGE;
   /**************************************************************************************
	Description     : This procedure is used to execute all procedures configured in ETL_CFG_PROCS table to load configuration tables.
                      It takes ETL module as input and execute corresponding procedures.
	**************************************************************************************/
   PROCEDURE P_LOAD_CONFIG (PI_ETL_MODULE IN VARCHAR2)
   IS
      V_CFG_PROC_ID   NUMBER;
   BEGIN
      IF PKG_CONTEXT_API.F_GET_PARAMETER ('CODE') <> 0
      THEN
         RETURN;
      END IF;

      FOR I IN (SELECT   CFG_PROC_ID,
                            DECODE (PACKAGE_NAME,
                                    NULL, NULL,
                                    PACKAGE_NAME || '.'
                                   )
                         || PROCEDURE_NAME AS PROC_NAME
                    FROM ETL_CFG_PROCS
                   WHERE ETL_ID = PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_ID')
                     AND ENABLED = 1
                     AND DELETED_DATE IS NULL
                     AND UPPER (ETL_MODULE) = PI_ETL_MODULE
                     AND UPPER (PROC_TYPE) = 'CONFIG'
                ORDER BY EXECUTION_ORDER)
      LOOP
         V_CFG_PROC_ID                                  := I.CFG_PROC_ID;
         PKG_LOGGER.P_ETL_EXEC_LOG ('START',
                                    PI_ETL_MODULE,
                                    'Process Started',
                                    I.CFG_PROC_ID
                                   );

         EXECUTE IMMEDIATE 'BEGIN ' || I.PROC_NAME || '; END;';

         PKG_LOGGER.P_ETL_EXEC_LOG
                                 ('END',
                                  PI_ETL_MODULE,
                                  'Process Finished',
                                  I.CFG_PROC_ID,
                                  PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED,
                                  1
                                 );
         PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED    := NULL;
      END LOOP;
   EXCEPTION
      WHEN OTHERS
      THEN
         PKG_LOGGER.P_ETL_EXEC_LOG
                                ('END',
                                 PI_ETL_MODULE,
                                 'Process Finished',
                                 V_CFG_PROC_ID,
                                 PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED,
                                 2
                                );
         PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED    := NULL;
         RAISE_APPLICATION_ERROR
                                (-20001,
                                 PKG_LOGGER.F_EXCEPTION_TEXT (   $$PLSQL_UNIT
                                                              || '.P_LOAD_CONFIG'
                                                             )
                                );
   END P_LOAD_CONFIG;
   /**************************************************************************************
	Description     : This procedure is used to execute all procedures configured in ETL_CFG_PROCS table to load target tables.
	**************************************************************************************/
   PROCEDURE P_LOAD_TARGET
   IS
      V_CFG_PROC_ID   NUMBER;
   BEGIN
      IF PKG_CONTEXT_API.F_GET_PARAMETER ('CODE') <> 0
      THEN
         RETURN;
      END IF;

      /*VALIDATE RULES AND LOAD QUALITY MART TABLES*/
      --PKG_CONTEXT_API.P_SET_PARAMETER ('CASE_ID', PI_CASE_ID);
      FOR I IN (SELECT   CFG_PROC_ID,
                            DECODE (PACKAGE_NAME,
                                    NULL, NULL,
                                    PACKAGE_NAME || '.'
                                   )
                         || PROCEDURE_NAME AS PROC_NAME
                    FROM ETL_CFG_PROCS
                   WHERE ETL_ID = PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_ID')
                     AND ENABLED = 1
                     AND DELETED_DATE IS NULL
                     AND UPPER (ETL_MODULE) = 'TARGET'
                     AND UPPER (PROC_TYPE) = 'CASE'
                ORDER BY EXECUTION_ORDER)
      LOOP
         V_CFG_PROC_ID                                  := I.CFG_PROC_ID;
         PKG_LOGGER.P_ETL_EXEC_LOG ('START',
                                    'TARGET',
                                    'Process Started',
                                    I.CFG_PROC_ID
                                   );

         EXECUTE IMMEDIATE 'BEGIN ' || I.PROC_NAME || '; END;';

         PKG_LOGGER.P_ETL_EXEC_LOG
                                 ('END',
                                  'TARGET',
                                  'Process Finished',
                                  I.CFG_PROC_ID,
                                  PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED,
                                  1
                                 );
         PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED    := NULL;
      END LOOP;
   EXCEPTION
      WHEN OTHERS
      THEN
         PKG_LOGGER.P_ETL_EXEC_LOG
                                ('END',
                                 'TARGET',
                                 'Process Finished',
                                 V_CFG_PROC_ID,
                                 PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED,
                                 2
                                );
         PKG_COMMON_UTILITIES.V_NO_OF_ROWS_PROCESSED    := NULL;
         RAISE_APPLICATION_ERROR
                                (-20001,
                                 PKG_LOGGER.F_EXCEPTION_TEXT (   $$PLSQL_UNIT
                                                              || '.P_LOAD_TARGET'
                                                             )
                                );
   END P_LOAD_TARGET;
   /**************************************************************************************
	Description     : This procedure is used to load cases assigned to a particular batch into a global temporary table. It can also be used for any
                      process needs to be done before ETL process starts.
	**************************************************************************************/
   PROCEDURE P_ETL_PRE_PROCESS
   IS
   BEGIN
      IF PKG_CONTEXT_API.F_GET_PARAMETER ('CODE') <> 0
      THEN
         RETURN;
      END IF;
--      DELETE      GT_ETL_CASE_DETAILS;

   --      INSERT INTO GT_ETL_CASE_DETAILS
--                  (ETL_TYPE, ETL_ID, CASE_ID, CASE_NUMBER, INIT_RECV_DATE,
--                   STATUS, MESSAGE, BATCH_NO, DELETE_FLAG, ROUTING_SEQ)
--         SELECT ETL_TYPE, ETL_ID, CASE_ID, CASE_NUMBER, INIT_RECV_DATE,
--                STATUS, MESSAGE, BATCH_NO, DELETE_FLAG, ROUTING_SEQ
--           FROM ETL_CASE_DETAILS
--          WHERE BATCH_NO = PKG_CONTEXT_API.F_GET_PARAMETER ('BATCH_NO')
--            AND ETL_ID = PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_ID')
--            AND STATUS = 0;

   --      UPDATE ETL_CASE_DETAILS
--         SET STATUS = 1
--       WHERE BATCH_NO = PKG_CONTEXT_API.F_GET_PARAMETER ('BATCH_NO')
--         AND ETL_ID = PKG_CONTEXT_API.F_GET_PARAMETER ('ETL_ID')
--         AND STATUS = 0;

   --      COMMIT;
   EXCEPTION
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR
                           (-20001,
                            PKG_LOGGER.F_EXCEPTION_TEXT (   $$PLSQL_UNIT
                                                         || '.P_ETL_PRE_PROCESS'
                                                        )
                           );
   END P_ETL_PRE_PROCESS;
   /**************************************************************************************
	Description     : This procedure is used to initiate ETL process in a defined order after all initialization and pre-processing is done.
	**************************************************************************************/
   PROCEDURE P_ETL_PROCESS
   IS
      --VT_CASE_DETAILS   PKG_COMMON_UTILITIES.T_CASE_DETAILS;
      V_ERROR_MSG   VARCHAR2 (4000);
   BEGIN
      IF PKG_CONTEXT_API.F_GET_PARAMETER ('CODE') <> 0
      THEN
         RETURN;
      END IF;

      IF PKG_CONTEXT_API.F_GET_PARAMETER ('LOAD_DATA_CATEGORY') = 'CONFIG'
      THEN
         P_LOAD_CONFIG ('STAGING');
         P_LOAD_CONFIG ('TARGET');
      ELSIF PKG_CONTEXT_API.F_GET_PARAMETER ('LOAD_DATA_CATEGORY') = 'CASE'
      THEN
         P_LOAD_STAGE;
         P_LOAD_TARGET;
      END IF;
   EXCEPTION
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR
                               (-20001,
                                PKG_LOGGER.F_EXCEPTION_TEXT (   $$PLSQL_UNIT
                                                             || '.P_ETL_PROCESS'
                                                            )
                               );
   END P_ETL_PROCESS;
   /**************************************************************************************
	Description     : This procedure is the entry point for ETL process, starting with session variables clean-up, configuration initialization,
                         and set-up ETL START/END for monitoring.
	**************************************************************************************/
   PROCEDURE P_ETL_MAIN (
      PI_ETL_ID               IN   NUMBER,
      PI_ETL_TYPE             IN   VARCHAR2,
      PI_LOAD_DATA_CATEGORY   IN   VARCHAR2,
      PI_ETL_EXEC_SEQ         IN   NUMBER,
      PI_BATCH_NO             IN   NUMBER DEFAULT 1
   )
   IS
   BEGIN
      PKG_LOGGER.P_ETL_EXEC_LOG ('START',
                                 'LOAD START - ' || PI_LOAD_DATA_CATEGORY,
                                 'ETL Batch Processing started!',
                                 NULL,
                                 NULL,
                                 1
                                );
      PKG_CONTEXT_API.P_SET_PARAMETER ('LOAD_DATA_CATEGORY',
                                       PI_LOAD_DATA_CATEGORY
                                      );
      PKG_CONTEXT_API.P_SET_PARAMETER ('BATCH_NO', PI_BATCH_NO);
      P_INIT_SESSION_VARS;
      P_ETL_PRE_PROCESS;
      P_ETL_PROCESS;
      PKG_CONTEXT_API.P_SET_PARAMETER ('CODE', '0');
      PKG_CONTEXT_API.P_SET_PARAMETER ('LOG_MESSAGE', 'Success');
--      P_UPDATE_ETL_CASE_DETAILS (NULL, '');
      PKG_LOGGER.P_ETL_EXEC_LOG ('END',
                                    'LOAD  - '
                                 || PI_LOAD_DATA_CATEGORY
                                 || ' COMPLETED SUCCESSFULLY',
                                 'ETL Batch Processing Completed!',
                                 NULL,
                                 NULL,
                                 1
                                );
   EXCEPTION
      WHEN OTHERS
      THEN
         PKG_LOGGER.P_ETL_EXEC_LOG ('END',
                                       'LOAD  - '
                                    || PI_LOAD_DATA_CATEGORY
                                    || ' COMPLETED SUCCESSFULLY',
                                    'ETL Process Finished with Failure!',
                                    NULL,
                                    NULL,
                                    2
                                   );
         PKG_CONTEXT_API.P_SET_PARAMETER ('CODE', SQLCODE);
         PKG_CONTEXT_API.P_SET_PARAMETER ('LOG_MESSAGE', SQLERRM);
         PKG_LOGGER.P_LOG_TRACE ($$PLSQL_UNIT,
                                 'P_ETL_MAIN',
                                 'Failed',
                                 500,
                                 1,
                                 'ERROR'
                                );
         ROLLBACK;
--         P_UPDATE_ETL_CASE_DETAILS (NULL, '');
   END P_ETL_MAIN;   
   /**************************************************************************************
	Description     : This procedure is the main procedure to execute the ETL. stating with setup the session variables, configuration load.
						 It takes input as etl_name and etl_type
	**************************************************************************************/
   PROCEDURE P_ETL_START (PI_ETL_NAME IN VARCHAR2, PI_ETL_TYPE IN VARCHAR2)
   IS
      V_DATE_FROM          DATE;
      V_DATE_TO            DATE;
      V_HOURS_DIFF         NUMBER;
      V_ETL_ID             NUMBER;
      V_MAX_BATCHES        NUMBER;
      V_ETL_EXECUTION_ID   NUMBER;
   BEGIN
      PKG_CONTEXT_API.CLEAR_ALL_CONTEXT;

      SELECT ETL_EXECUTION_ID_SEQ.NEXTVAL
        INTO V_ETL_EXECUTION_ID
        FROM DUAL;

      SELECT ETL_ID, NVL (MAX_BATCHES, 1)
        INTO V_ETL_ID, V_MAX_BATCHES
        FROM ETL_MASTER
       WHERE UPPER (ETL_NAME) = UPPER (PI_ETL_NAME);

      SELECT DATE_FROM, DATE_TO, HOURS_DIFF
        INTO V_DATE_FROM, V_DATE_TO, V_HOURS_DIFF
        FROM ETL_LOAD_WINDOW
       WHERE ETL_ID = V_ETL_ID;

      PKG_CONTEXT_API.P_SET_PARAMETER ('BATCH_NO', 1);
      PKG_CONTEXT_API.P_SET_PARAMETER ('ETL_EXECUTION_ID', V_ETL_EXECUTION_ID);
      PKG_CONTEXT_API.P_SET_PARAMETER ('ETL_TYPE', PI_ETL_TYPE);
      PKG_CONTEXT_API.P_SET_PARAMETER ('ETL_ID', V_ETL_ID);
      PKG_LOGGER.P_ETL_EXEC_LOG ('START',
                                 'START',
                                 'Initiating ETL Process!',
                                 NULL,
                                 NULL,
                                 1
                                );

      IF UPPER (PI_ETL_TYPE) = 'INITIAL' OR V_DATE_FROM IS NULL
      THEN
         UPDATE ETL_LOAD_WINDOW
            SET DATE_FROM = TO_DATE ('01011900', 'DDMMYYYY'),
                DATE_TO = SYSDATE
          WHERE ETL_ID = V_ETL_ID;
      ELSE
         UPDATE ETL_LOAD_WINDOW
            SET DATE_FROM = (V_DATE_TO - 1) - (V_HOURS_DIFF / 24),
                DATE_TO = SYSDATE
          WHERE ETL_ID = V_ETL_ID;
      END IF;

      PKG_LOGGER.P_ETL_EXEC_LOG ('START',
                                 'CONFIG LOAD',
                                 'Process started for config data load!',
                                 NULL,
                                 NULL,
                                 0
                                );
      PKG_ETL_MAIN.P_ETL_MAIN (V_ETL_ID,
                               PI_ETL_TYPE,
                               'CONFIG',
                               V_ETL_EXECUTION_ID,
                               1
                              );

      IF PKG_CONTEXT_API.F_GET_PARAMETER ('CODE') IN ('0', '1')
      THEN
         PKG_LOGGER.P_ETL_EXEC_LOG
                                 ('END',
                                  'CONFIG LOAD',
                                  'Config data load successfully completed!',
                                  NULL,
                                  NULL,
                                  1
                                 );
      ELSE
         PKG_LOGGER.P_ETL_EXEC_LOG ('END',
                                    'CONFIG LOAD',
                                    'Config data load Failed!',
                                    NULL,
                                    NULL,
                                    2
                                   );
         RETURN;
      END IF;

      PKG_LOGGER.P_ETL_EXEC_LOG ('END',
                                 'END',
                                 'ETL Process Finished Successfully!',
                                 NULL,
                                 NULL,
                                 1
                                );
   EXCEPTION
      WHEN OTHERS
      THEN
         RAISE;
   END P_ETL_START;
END PKG_ETL_MAIN;
/
