Prompt Table R3_FACTORY_DATA;
--
-- R3_FACTORY_DATA  (Table) 
--
CREATE TABLE &TRANSFORMPV_USER..R3_FACTORY_DATA
(
  DATA_ID        NUMBER,
  SEQ_NUM        NUMBER,
  SORT_ID        NUMBER,
  ELEMENT_VALUE  VARCHAR2(500 CHAR),
  DELETED        NUMBER                         DEFAULT 0,
  DELETED_DATE   DATE,
  CREATED_BY     NUMBER,
  CREATED_DATE   DATE,
  MODIFIED_BY    NUMBER,
  MODIFIED_DATE  DATE,
  NAME           VARCHAR2(200 CHAR),
  DESCRIPTION    VARCHAR2(500 CHAR)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/

ALTER TABLE &TRANSFORMPV_USER..R3_FACTORY_DATA
 ADD CONSTRAINT R3_FACTORY_DATA_PK
 PRIMARY KEY
 (DATA_ID)
 /



