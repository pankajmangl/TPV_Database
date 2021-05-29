Prompt Table R2R3_NULL_FLAVOUR_MAP_HIST;
--
-- R2R3_NULL_FLAVOUR_MAP_HIST  (Table) 
--
CREATE TABLE &TRANSFORMPV_USER..R2R3_NULL_FLAVOUR_MAP_HIST
(
  MAPPING_ID            NUMBER(22),
  PROFILE_ID            NUMBER(22),
  R2_DATA_ID            NUMBER(22),
  R3_DATA_ID            NUMBER(22),
  DELETED               NUMBER(22),
  DELETED_DATE          DATE,
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