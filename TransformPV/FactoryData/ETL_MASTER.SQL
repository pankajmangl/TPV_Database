Insert into &TRANSFORMPV_USER..ETL_MASTER
   (ETL_ID, ETL_NAME, DESCRIPTION, ENABLED, DELETED_DATE, 
    CREATED_DATE, MODIFIED_DATE, MAX_BATCHES, FREQUENCY, START_DATE, 
    DAYS_IN_WEEK, DELETED, CURRENT_VERSION, CREATED_BY, MODIFIED_BY)
 Values
   (1, 'E2B_R2_R3', 'To sync between Argus and TransformPV schema for required tables', 1, NULL, 
    SYSDATE, SYSDATE, 1, 'Monthly', SYSDATE, 
    NULL, 0, 1, 1, 1);
