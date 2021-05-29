Set define ON; 
SET ECHO OFF;
SET FEEDBACK ON;
SET TIMING OFF;
SET VERIFY OFF;
SET HEADING OFF;
SET FEEDBACK OFF;
SET SERVEROUTPUT ON
SET LINESIZE 150				



DEFINE FOLDER_PATH = "&1"
DEFINE FOLDER_PATH = "&FOLDER_PATH\Database"

SPOOL .\TransformPV_DB_Install_Log.log

DEFINE SYSTEM_USER = "system"
DEFINE SYSTEM_USER_PASSWORD = "Val4you3232" hide
DEFINE DATABASE_SERVICE_NAME = "tpvdb2a81x"
DEFINE TRANSFORMPV_USER = "TPV_VAL_14052021"
DEFINE TRANSFORMPV_USER_PASSWORD = "password" hide
DEFINE TABLESPACE_NAME = "transformpv_tblspc"
DEFINE ARGUS_APP_USER = "argus_app"
DEFINE ESM_OWNER_USER = "esm_owner"
DEFINE MEDDRA_OWNER = "MEDDRA_231"
DEFINE ARGUS_ROLE = "argus_role"
DEFINE CODE_VERSION = "2.2.1"
SET TERMOUT OFF

SET TERMOUT ON

prompt ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
prompt
prompt Connecting to &DATABASE_SERVICE_NAME. as &SYSTEM_USER
prompt 

Conn &SYSTEM_USER/&SYSTEM_USER_PASSWORD@&DATABASE_SERVICE_NAME

pause Press Enter to continue...

prompt If User failed to connect to Database, then stop here restart the tool.
prompt To stop processing click top right corner X icon or Press Ctrl-C and type exit to close session;
pause  Press Enter if successfully connected as SYSTEM@&DATABASE_SERVICE_NAME.

SELECT 'Starting time (GMT) for this execution is: '|| 
		TO_CHAR(SYS_EXTRACT_UTC(SYSTIMESTAMP),'DD-MON-YYYY HH24:MI:SS.FF3')START_DATE 
	FROM DUAL;
  
prompt +++++++++++++++++++Creating &TRANSFORMPV_USER User++++++++++++++++++++
@"&FOLDER_PATH/TransformPV/Users/TransformPV.sql";

pause Press Enter to continue...  

Conn &SYSTEM_USER/&SYSTEM_USER_PASSWORD@&DATABASE_SERVICE_NAME

@"&FOLDER_PATH/ARGUS_SAFETY/F_CUSTM_E2BR3_ATTACH.SQL";
@"&FOLDER_PATH/ARGUS_SAFETY/GrantsToTransformPV.SQL";
@"&FOLDER_PATH/ESM_OWNER/GrantsToTransformPV.SQL";
prompt +++++++++++++++++++TransformPV++++++++++++++++++++
prompt
@"&FOLDER_PATH/TransformPV/TransformPV_Build_All.SQL";

Conn &TRANSFORMPV_USER/&TRANSFORMPV_USER_PASSWORD@&DATABASE_SERVICE_NAME

@"&FOLDER_PATH/TransformPV/Roles/roles.sql";

prompt Compiling Schema Objects

EXEC DBMS_UTILITY.compile_schema(schema => UPPER('&TRANSFORMPV_USER'));

SELECT 'End time (GMT) for this execution is: '|| 
		TO_CHAR(SYS_EXTRACT_UTC(SYSTIMESTAMP),'DD-MON-YYYY HH24:MI:SS.FF3')START_DATE 
	FROM DUAL; 
  
SPOOL OFF;

  
Pause Press Enter to exit  
Exit