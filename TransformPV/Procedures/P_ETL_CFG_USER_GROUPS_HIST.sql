CREATE OR REPLACE PROCEDURE &TRANSFORMPV_USER..P_ETL_CFG_USER_GROUPS_HIST (
   LV_GROUP_ID         NUMBER,
   LV_VERSION_NUMBER   NUMBER,
   LN_AUDIT_ID         NUMBER,
   LN_OPERATION_TYPE   NUMBER
)
AS
   LD_SYSDATE              DATE := SYSDATE;
   LD_EFFECTIVE_END_DATE   DATE
                           := TO_DATE ('12/31/9999', 'MM/DD/YYYY HH24:MI:SS');
   PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
   IF LN_OPERATION_TYPE = 2
   THEN
      INSERT INTO ETL_CFG_USER_GROUPS_HIST
                  (ETL_GROUP_ID, ETL_ID, GROUP_ID, DELETED, CREATED_BY,
                   CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, VERSION_NUMBER,
                   AUDIT_ID, OPERATION_TYPE, EFFECTIVE_START_DATE,
                   EFFECTIVE_END_DATE, CURRENT_FLG, INSERT_DATE)
         (SELECT ETL_GROUP_ID, ETL_ID, GROUP_ID, DELETED, CREATED_BY,
                 CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, LV_VERSION_NUMBER,
                 LN_AUDIT_ID, LN_OPERATION_TYPE, LD_SYSDATE,
                 LD_EFFECTIVE_END_DATE, 1, LD_SYSDATE
            FROM ETL_CFG_USER_GROUPS
           WHERE ETL_GROUP_ID <> LV_GROUP_ID );

   ELSIF LN_OPERATION_TYPE = 1
   THEN
   INSERT INTO ETL_CFG_USER_GROUPS_HIST
               (ETL_GROUP_ID, ETL_ID, GROUP_ID, DELETED,
                CREATED_BY, CREATED_DATE, MODIFIED_BY,
                MODIFIED_DATE, VERSION_NUMBER, AUDIT_ID,
                OPERATION_TYPE, EFFECTIVE_START_DATE, EFFECTIVE_END_DATE,
                CURRENT_FLG, INSERT_DATE
               )
        ( SELECT ETL_GROUP_ID, ETL_ID, GROUP_ID, DELETED,
                CREATED_BY, CREATED_DATE, MODIFIED_BY,
                MODIFIED_DATE, LV_VERSION_NUMBER, LN_AUDIT_ID,
                2, LD_SYSDATE, LD_EFFECTIVE_END_DATE,
                1, LD_SYSDATE
                FROM ETL_CFG_USER_GROUPS 
                WHERE ETL_GROUP_ID < LV_GROUP_ID --AND DELETED <> 1
               );
               
   END IF;
   
   COMMIT;
END;
/


