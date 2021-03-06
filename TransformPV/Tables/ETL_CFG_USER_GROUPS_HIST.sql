Prompt Table ETL_CFG_USER_GROUPS_HIST;
--
-- ETL_CFG_USER_GROUPS_HIST  (Table) 
CREATE TABLE &TRANSFORMPV_USER..ETL_CFG_USER_GROUPS_HIST
(
  ETL_GROUP_ID          NUMBER(22),
  ETL_ID                NUMBER(22),
  GROUP_ID              NUMBER(22),
  DELETED               NUMBER(22),
  CREATED_BY            NUMBER(22),
  CREATED_DATE          DATE,
  MODIFIED_BY           NUMBER(22),
  MODIFIED_DATE         DATE,
  VERSION_NUMBER        NUMBER,
  AUDIT_ID              NUMBER,
  OPERATION_TYPE        NUMBER,
  EFFECTIVE_START_DATE  DATE,
  EFFECTIVE_END_DATE    DATE,
  CURRENT_FLG           NUMBER,
  INSERT_DATE           DATE
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/
