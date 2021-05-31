/* Formatted on 2016/01/19 12:18 (Formatter Plus v4.8.8) */
PROMPT View VW_LM_REPORTER_TYPE;
--
-- VW_LM_REPORTER_TYPE  (View) 
--
CREATE OR REPLACE FORCE VIEW &TRANSFORMPV_USER..VW_LM_REPORTER_TYPE (RPTR_TYPE_ID,
                                                                     REPORTER_TYPE,
                                                                     PROTECTED,
                                                                     DISPLAY,
                                                                     E2B_CODE,
                                                                     REPORTER_TYPE_J,
                                                                     DELETED,
                                                                     ENTERPRISE_ID
                                                                    )
AS
   SELECT V.RPTR_TYPE_ID, V.REPORTER_TYPE, V.PROTECTED, V.DISPLAY, V.E2B_CODE,
          V.REPORTER_TYPE_J, V.DELETED, V.ENTERPRISE_ID
     FROM LM_REPORTER_TYPE V
    WHERE DISPLAY = 1
   UNION
   SELECT -100, 'Patient', 0, 1, 8, 'Patient', NULL, 1
     FROM DUAL
   UNION
   SELECT -101, 'Parent', 0, 1, 9, 'Parent', NULL, 1
     FROM DUAL
/