/* Formatted on 2016/01/19 12:17 (Formatter Plus v4.8.8) */
PROMPT View VW_LM_COUNTRIES;
--
-- VW_LM_COUNTRIES  (View) 
--
CREATE OR REPLACE VIEW &TRANSFORMPV_USER..VW_LM_COUNTRIES (COUNTRY_ID,
                                                           COUNTRY,
                                                           A2,
                                                           E2B_CODE,
                                                           A3,
                                                           NUM,
                                                           PROTECTED,
                                                           DELETED,
                                                           COUNTRY_GROUP_ID,
                                                           COUNTRY_GROUP,
                                                           COUNTRY_J,
                                                           ENTERPRISE_ID,
                                                           GROUP_2_COUNTRY
                                                          )
AS
   SELECT L.COUNTRY_ID, L.COUNTRY, L.A2, L.A2 E2B_CODE, L.A3, L.NUM,
          L.PROTECTED, L.DELETED, L.COUNTRY_GROUP_ID, L.COUNTRY_GROUP,
          L.COUNTRY_J, L.ENTERPRISE_ID, L.GROUP_2_COUNTRY
     FROM  &ARGUS_APP_USER..V$LM_COUNTRIES L
/