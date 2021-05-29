Prompt Table CFG_E2B_DECODE_VIEW;
--
-- CFG_E2B_DECODE_VIEW  (Table) 
--
CREATE TABLE &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW
(
  DTD_ELEMENT           VARCHAR2(100 CHAR),
  R2_XPATH              VARCHAR2(100 CHAR),
  TABLE_NAME            VARCHAR2(100 CHAR),
  VAL_COLUMN_NAME       VARCHAR2(100 CHAR),
  ID_COLUMN_NAME        VARCHAR2(100 CHAR),
  ADDITIONAL_CONDITION  VARCHAR2(2000 CHAR),
  DELETED               NUMBER                  DEFAULT 0,
  ENABLED               NUMBER                  DEFAULT 1,
  DELETED_DATE          DATE,
  DECODE_VALUE          VARCHAR2(500 CHAR),
  E2B_CODE              VARCHAR2(200 CHAR)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/
COMMENT ON COLUMN &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW.DECODE_VALUE IS 'These will be used for static values like ''Yes''/''No'''
/


ALTER TABLE &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW
 ADD (DECODE_TYPE  VARCHAR2(100 CHAR))
/
