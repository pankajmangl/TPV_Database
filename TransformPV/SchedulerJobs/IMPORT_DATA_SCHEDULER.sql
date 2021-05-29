Prompt Scheduler Job IMPORT_DATA_SCHEDULER;
--
-- ALERT_SCHEDULER  (Scheduler Job) 
--
BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => '&TRANSFORMPV_USER..IMPORT_DATA_SCHEDULER',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN PKG_E2B_TRANSFORMER.P_E2B_IMPORT_FILE; END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=minutely; interval=5;',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Job to Trigger Import e2b data.');
END;
/
