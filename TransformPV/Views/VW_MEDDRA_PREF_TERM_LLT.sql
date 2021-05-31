/* Formatted on 2016/01/19 14:01 (Formatter Plus v4.8.8) */
PROMPT View VW_MEDDRA_PREF_TERM_LLT;
--
-- VW_MEDDRA_PREF_TERM_LLT  (View) 
--
--  Dependencies: 
--   CFG_USERS (Table)
--   E2B_CFG_USERS (Table)
--
CREATE OR REPLACE FORCE VIEW &TRANSFORMPV_USER..VW_MEDDRA_PREF_TERM_LLT (LLT_CODE,
                                                                         LLT_NAME_ENGLISH,
                                                                         PT_CODE,
                                                                         E2B_CODE
                                                                        )
AS
   SELECT M.LLT_CODE, M.LLT_NAME_ENGLISH, M.PT_CODE, M.LLT_CODE E2B_CODE
     FROM &MEDDRA_OWNER..MEDDRA_PREF_TERM_LLT M
    WHERE DELETED IS NULL
/