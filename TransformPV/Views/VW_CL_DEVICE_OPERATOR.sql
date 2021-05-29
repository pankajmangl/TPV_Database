PROMPT View VW_CL_DEVICE_OPERATOR;
--
-- VW_CL_DEVICE_OPERATOR  (View) 
--
CREATE OR REPLACE VIEW &TRANSFORMPV_USER..VW_CL_DEVICE_OPERATOR (ID,
                                                    E2B_CODE,
                                                    DEV_OPER,
                                                    DELETED
                                                   )
AS
   SELECT C.ID, C.ID E2B_CODE, C.DEV_OPER, C.DELETED
     FROM  &ARGUS_APP_USER..CL_DEVICE_OPERATOR C
    WHERE DELETED IS NULL
/
