PROMPT View VW_USER_DIFF;
--
-- VW_USER_DIFF  (View) 
--
--  Dependencies: 
--   CFG_USERS (Table)
--   E2B_CFG_USERS (Table)
--
/* Formatted on 2015/03/02 12:04 (Formatter Plus v4.8.8) */
CREATE OR REPLACE FORCE VIEW &TRANSFORMPV_USER..VW_USER_DIFF (USER_ID,
                                           USER_FULLNAME,
                                           USER_NAME,
                                           USER_EMAIL,
                                           ACCOUNT_DISABLED,
                                           ENTERPRISE_ID,
                                           DELETED,                                     
                                           ESM_USER,
                                           GLOBAL_ADMIN,
                                           WORKFLOW_MGR
                                          )
AS
SELECT C.USER_ID, C.USER_FULLNAME, C.USER_NAME, C.USER_EMAIL,
       C.ACCOUNT_DISABLED, C.ENTERPRISE_ID,
       DECODE (C.DELETED, NULL, 0, 1) DELETED, 
       NVL(C.ESM_USER,0) ESM_USER, C.GLOBAL_ADMIN, C.WORKFLOW_MGR
  FROM SYN_CFG_USERS C
 WHERE AGSERVICE IN( 0,2)
   AND C.DELETED IS NULL
   AND EXISTS (
          SELECT 1
            FROM SYN_CFG_USER_GROUPS C1,
                 SYN_CFG_GROUPS C2,
                 ETL_CFG_USER_GROUPS ECUG
           WHERE C.USER_ID = C1.USER_ID
             AND C1.GROUP_ID = C2.GROUP_ID
             AND C2.DELETED IS NULL
             AND C1.DELETED IS NULL
             AND C2.GROUP_ID = ECUG.GROUP_ID
             AND ECUG.DELETED = 0)
MINUS
SELECT C.SAFETY_USER_ID, C.USER_FULLNAME, C.USER_NAME, C.USER_EMAIL,
       C.ACCOUNT_DISABLED, C.ENTERPRISE_ID, C.DELETED, NVL(C.ESM_USER,0), C.GLOBAL_ADMIN, C.WORKFLOW_MGR
  FROM E2B_CFG_USERS C
/


