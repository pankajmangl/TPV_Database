PROMPT View VW_LATEST_ETL_RUN_MONITOR;
--
-- VW_LATEST_ETL_RUN_MONITOR  (View) 
--
--  Dependencies: 
--   ETL_CFG_PROCS (Table)
--   ETL_EXECUTION_LOG (Table)
--   ETL_MASTER (Table)
--
CREATE OR REPLACE VIEW &TRANSFORMPV_USER..VW_LATEST_ETL_RUN_MONITOR (EXECUTION_ID,
                                                        EXECUTION_SEQ,
                                                        ETL_NAME,
                                                        ETL_TYPE,
                                                        ETL_AREA,
                                                        PACKAGE_NAME,
                                                        PROCEDURE_NAME,
                                                        STATUS,
                                                        TIMETAKEN,
                                                        NO_OF_ROWS_PROCESSED,
                                                        PROC_START_TIME,
                                                        PROC_END_TIME,
                                                        LOG_MESSAGE,
                                                        LOG_TIME,
                                                        BATCH_NO
                                                       )
AS
   SELECT   E.EXECUTION_ID, E.EXECUTION_SEQ, EM.ETL_NAME, E.ETL_TYPE,
            E.ETL_AREA, ECP.PACKAGE_NAME, ECP.PROCEDURE_NAME,
            DECODE (E.STATUS,
                    2, 'Failed!',
                    0, 'Pending',
                    NULL, 'Pending',
                    1, 'Success!'
                   ) STATUS,
            (E.PROC_END_TIME - E.PROC_START_TIME) TIMETAKEN,
            E.NO_OF_ROWS_PROCESSED, E.PROC_START_TIME, E.PROC_END_TIME,
            E.LOG_MESSAGE, E.LOG_TIME, E.BATCH_NO
       FROM ETL_EXECUTION_LOG E, ETL_CFG_PROCS ECP, ETL_MASTER EM
      WHERE E.PROC_ID = ECP.CFG_PROC_ID(+)
        AND E.ETL_ID = EM.ETL_ID
        AND EXECUTION_ID = (SELECT MAX (EXECUTION_ID)
                              FROM ETL_EXECUTION_LOG)
   ORDER BY EXECUTION_ID DESC, EXECUTION_SEQ DESC
/


