Prompt Create User &TRANSFORMPV_USER;
--
-- &TRANSFORMPV_USER  (User) 
--
DECLARE
V_CHK NUMBER:=0;
V_QRY VARCHAR2(500);
BEGIN
SELECT COUNT(1) INTO V_CHK FROM DBA_USERS WHERE USERNAME=UPPER('&TRANSFORMPV_USER');
IF V_CHK > 0 THEN
     EXECUTE IMMEDIATE 'DROP USER &TRANSFORMPV_USER CASCADE';
END IF;
END;
/

DECLARE
V_CHK NUMBER:=0;
V_QRY VARCHAR2(500);
BEGIN
SELECT COUNT(1) INTO V_CHK FROM DBA_ROLES WHERE ROLE='SELECT_ANY_PVTRANSFORM';
IF V_CHK > 0 THEN
	EXECUTE IMMEDIATE 'DROP ROLE SELECT_ANY_PVTRANSFORM';
	EXECUTE IMMEDIATE 'DROP ROLE UPDATE_ANY_PVTRANSFORM';
END IF;
END;
/

CREATE USER &TRANSFORMPV_USER
  IDENTIFIED BY &TRANSFORMPV_USER_PASSWORD
  DEFAULT TABLESPACE &TABLESPACE_NAME
  TEMPORARY TABLESPACE TEMP
  PROFILE DEFAULT
  ACCOUNT UNLOCK
  QUOTA UNLIMITED ON &TABLESPACE_NAME
/
  GRANT RESOURCE TO &TRANSFORMPV_USER
/
  GRANT CONNECT TO &TRANSFORMPV_USER
/
  -- 3 System Privileges for &TRANSFORMPV_USER 
  GRANT CREATE JOB TO &TRANSFORMPV_USER
/
  GRANT CREATE VIEW TO &TRANSFORMPV_USER
/
  GRANT CREATE MATERIALIZED VIEW TO &TRANSFORMPV_USER
/  
  GRANT CREATE TABLE TO &TRANSFORMPV_USER
/
  GRANT CREATE PROCEDURE TO &TRANSFORMPV_USER
/
  GRANT CREATE TYPE TO &TRANSFORMPV_USER
/
  GRANT CREATE TRIGGER TO &TRANSFORMPV_USER
/
  GRANT CREATE SYNONYM TO &TRANSFORMPV_USER
/  
  GRANT CREATE PUBLIC SYNONYM TO &TRANSFORMPV_USER
/
  GRANT CREATE SEQUENCE TO &TRANSFORMPV_USER
/
  GRANT SELECT ANY DICTIONARY TO &TRANSFORMPV_USER
/
grant create database link to &TRANSFORMPV_USER
/
grant debug any procedure to &TRANSFORMPV_USER
/

grant DEBUG CONNECT SESSION to &TRANSFORMPV_USER
/
GRANT CREATE ANY CONTEXT TO &TRANSFORMPV_USER
/
GRANT DROP ANY CONTEXT TO &TRANSFORMPV_USER
/
