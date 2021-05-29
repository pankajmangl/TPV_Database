Prompt Table CFG_COMMON_PROFILE;
--
-- CFG_COMMON_PROFILE  (Table) 
--
CREATE TABLE &TRANSFORMPV_USER..CFG_COMMON_PROFILE
(
  PROFILE_ID    NUMBER,
  PROFILE_NAME  VARCHAR2(100 CHAR),
  KEY           VARCHAR2(100 CHAR),
  VALUE         VARCHAR2(100 CHAR)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING
/


ALTER TABLE &TRANSFORMPV_USER..CFG_COMMON_PROFILE ADD (DELETED NUMBER DEFAULT 0, DELETED_DATE DATE)
/

ALTER TABLE &TRANSFORMPV_USER..CFG_COMMON_PROFILE
 ADD CONSTRAINT CFG_COMMON_PROFILE_PK
 PRIMARY KEY
 (PROFILE_ID)
/

ALTER TABLE &TRANSFORMPV_USER..CFG_COMMON_PROFILE
MODIFY(VALUE VARCHAR2(4000 CHAR))
/
