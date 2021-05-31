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

SPOOL .\TransformPV_DB_Install_Log.log

DEFINE SYSTEM_USER = "&2"
DEFINE SYSTEM_USER_PASSWORD = "&3" hide
DEFINE DATABASE_SERVICE_NAME = "&4"
DEFINE TRANSFORMPV_USER = "&5"
DEFINE TRANSFORMPV_USER_PASSWORD = "&6" hide
DEFINE TABLESPACE_NAME = "&7"
DEFINE ARGUS_APP_USER = "&8"
DEFINE ESM_OWNER_USER = "&9"
DEFINE MEDDRA_OWNER = "&10"
DEFINE ARGUS_ROLE = "&11"

SET TERMOUT OFF

SET TERMOUT ON

prompt ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
prompt
prompt Connecting to &DATABASE_SERVICE_NAME. as &SYSTEM_USER
prompt 

Conn &SYSTEM_USER/&SYSTEM_USER_PASSWORD@&DATABASE_SERVICE_NAME

prompt If User failed to connect to Database, then stop here restart the tool.
prompt To stop processing click top right corner X icon or Press Ctrl-C and type exit to close session;
pause  Press Enter if successfully connected as SYSTEM@&DATABASE_SERVICE_NAME.

SELECT    'Starting time for this execution is:  '
       || TO_CHAR (SYSDATE, 'DD-MON-YYYY HH:MI:SS AM')
           start_time
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
prompt +++++++++++++++++++TransformPV Upgrade11++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade/TransformPV_Upgrade_All.SQL";
prompt +++++++++++++++++++TransformPV Upgrade12++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade12/TransformPV_Upgrade_All.SQL";
prompt +++++++++++++++++++TransformPV Upgrade13++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade13/TransformPV_Upgrade_All.SQL";
prompt +++++++++++++++++++TransformPV Upgrade14++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade14/PVTranslate_Build.SQL";
prompt +++++++++++++++++++TransformPV Upgrade15++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade15/TransformPV_Upgrade_All.SQL";
prompt +++++++++++++++++++TransformPV Upgrade16++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade16/TransformPV_Upgrade_All.SQL";
prompt +++++++++++++++++++TransformPV Upgrade20++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade20/TransformPV_Upgrade_All.SQL";
prompt +++++++++++++++++++TransformPV Upgrade20.1++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade20.1/TransformPV_Upgrade_All.SQL";
prompt +++++++++++++++++++TransformPV Upgrade21++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade21/TransformPV_Upgrade_21.SQL";
prompt +++++++++++++++++++TransformPV Upgrade21.1++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade21.1/TransformPV_Upgrade_21_1.SQL";
prompt +++++++++++++++++++TransformPV Upgrade22++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade22/TransformPV_Upgrade_22.SQL";



Conn &SYSTEM_USER/&SYSTEM_USER_PASSWORD@&DATABASE_SERVICE_NAME

prompt +++++++++++++++++++Creating Synonyms++++++++++++++++++++
prompt
@"&FOLDER_PATH/Upgrade14/SYNONYMS/SYNONYMS.SQL";
@"&FOLDER_PATH/Upgrade15/SYNONYMS/SYNONYMS.SQL";
@"&FOLDER_PATH/Upgrade20/SYNONYMS/SYNONYMS.SQL";
@"&FOLDER_PATH/Upgrade21/SYNONYMS/SYNONYMS.SQL";
@"&FOLDER_PATH/Upgrade21.1/Synonyms/Synonyms.sql";
@"&FOLDER_PATH/Upgrade22/GRANT/GRANT.sql";

EXEC DBMS_UTILITY.compile_schema(schema => UPPER('&TRANSFORMPV_USER'));

Conn &TRANSFORMPV_USER/&TRANSFORMPV_USER_PASSWORD@&DATABASE_SERVICE_NAME

@"&FOLDER_PATH/Upgrade21/SchedulerJobs/PV_ACK_SCHEDULER.SQL";
@"&FOLDER_PATH/Upgrade21.1/SchedulerJobs/PV_ACK_SCHEDULER.SQL";

SPOOL OFF;

SELECT    'End time for this execution is:  '
       || TO_CHAR (SYSDATE, 'DD-MON-YYYY HH:MI:SS AM')
           end_time
  FROM DUAL;
Pause Press Enter to exit  
Exit