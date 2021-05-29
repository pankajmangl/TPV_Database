Prompt Table E2B_CMN_FIELDS;
--
-- E2B_CMN_FIELDS  (Table) 
--
CREATE TABLE &TRANSFORMPV_USER..E2B_CMN_FIELDS
(
  FIELD_ID           NUMBER,
  TABLE_NAME         VARCHAR2(30 CHAR)          NOT NULL,
  COLUMN_NAME        VARCHAR2(30 CHAR)          NOT NULL,
  FIELD_LABEL        VARCHAR2(200 CHAR),
  DATA_TYPE          VARCHAR2(106 CHAR),
  DATA_LENGTH        NUMBER                     NOT NULL,
  NULLABLE           VARCHAR2(1 CHAR),
  COLUMN_ID          NUMBER,
  SHOW_IN_AUDIT_LOG  NUMBER,
  PRIMARY_KEY        NUMBER,
  SELECT_TABLE       VARCHAR2(2000 CHAR),
  JOIN_FIELD         VARCHAR2(4000 CHAR),
  SELECT_COLUMN      VARCHAR2(4000 CHAR),
  HIDDEN             NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/
