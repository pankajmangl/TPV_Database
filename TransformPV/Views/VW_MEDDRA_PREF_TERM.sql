/* Formatted on 2016/01/19 14:01 (Formatter Plus v4.8.8) */
PROMPT View VW_MEDDRA_PREF_TERM;
--
-- VW_MEDDRA_PREF_TERM  (View) 
--
CREATE OR REPLACE FORCE VIEW &TRANSFORMPV_USER..VW_MEDDRA_PREF_TERM (PT_CODE,
                                                                         PT_NAME_ENGLISH,
                                                                         PT_SOC_CODE,
                                                                         E2B_CODE
                                                                        )
AS
   SELECT M.PT_CODE, M.PT_NAME_ENGLISH, M.PT_SOC_CODE, M.PT_CODE E2B_CODE
     FROM &MEDDRA_OWNER..MEDDRA_PREF_TERM M
    WHERE DELETED IS NULL
/