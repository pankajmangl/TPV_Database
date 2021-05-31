CREATE OR REPLACE PROCEDURE P_HIST_TABLE_CREATION (
   PI_CREATE_PRINT_FLAG   IN   VARCHAR2 DEFAULT 'PRINT'
)
IS
   LV_TBL_COLMS         VARCHAR2 (4000);

   CURSOR C1
   IS
      SELECT QCATR.TABLE_NAME, HIST_TABLE_NAME, PK_ID_COL,TABLE_SCHEMA_OWNER
        FROM E2B_CFG_AUDIT_TAB_RELATIONS QCATR, ALL_TABLES ALT
       WHERE DELETED = 0 AND UPPER (QCATR.HIST_TABLE_NAME) =
                                                       UPPER (ALT.TABLE_NAME)
                                                       AND ENABLED = 1;

   CURSOR C2
   IS
      SELECT QCATR.TABLE_NAME, HIST_TABLE_NAME, PK_ID_COL,TABLE_SCHEMA_OWNER
        FROM E2B_CFG_AUDIT_TAB_RELATIONS QCATR, ALL_TABLES ALT
       WHERE DELETED = 0 AND UPPER (QCATR.TABLE_NAME) =
                                                       UPPER (ALT.TABLE_NAME)
                                                       AND ENABLED =1;


   V_DROP_TABLE_SQL     VARCHAR2 (2000);
   V_CREATE_TABLE_SQL   VARCHAR2 (20000);
   V_LOOP_CNTR          NUMBER := 1;
BEGIN
 
   DBMS_OUTPUT.PUT_LINE ('/*Drop Table Script Starts*/');

   FOR I IN C1
   LOOP
      IF I.HIST_TABLE_NAME LIKE '%HIST'
      THEN
         V_DROP_TABLE_SQL    := 'DROP TABLE ' || I.HIST_TABLE_NAME ;

         IF PI_CREATE_PRINT_FLAG = 'PRINT'
         THEN
            DBMS_OUTPUT.PUT_LINE (V_DROP_TABLE_SQL || ';');
         ELSIF PI_CREATE_PRINT_FLAG = 'CREATE'
         THEN
            EXECUTE IMMEDIATE V_DROP_TABLE_SQL;
         END IF;
      END IF;
   END LOOP;

   DBMS_OUTPUT.PUT_LINE ('/*Drop Table Script Ends*/');
 
  DBMS_OUTPUT.PUT_LINE ('/*Create Table Script Starts*/');
 
   FOR I IN C2
   LOOP
      LV_TBL_COLMS          := NULL;

      SELECT --NULL
      LISTAGG(' '||COLUMN_NAME||' '||DATA_TYPE||(CASE WHEN DATA_TYPE='DATE' THEN NULL ELSE '('||DATA_LENGTH||')'END)||','||CHR(13) || CHR(10) )
                WITHIN GROUP(ORDER BY COLUMN_ID)
          INTO LV_TBL_COLMS
          FROM ALL_TAB_COLUMNS ATC
         WHERE UPPER (TABLE_NAME) = UPPER (I.TABLE_NAME)
         AND ATC.OWNER = I.TABLE_SCHEMA_OWNER 
         AND ATC.COLUMN_NAME <> 'CURRENT_VERSION'
      ORDER BY COLUMN_ID;

      V_CREATE_TABLE_SQL    :=
            'CREATE TABLE '
         || I.HIST_TABLE_NAME
         || '('
         || LV_TBL_COLMS
         || 'VERSION_NUMBER NUMBER,'
         || CHR (13)
         || CHR (10)
         || 'AUDIT_ID NUMBER,'
         || CHR (13)
         || CHR (10)
         || 'OPERATION_TYPE NUMBER,'
         || CHR (13)
         || CHR (10)
         || 'EFFECTIVE_START_DATE DATE,'
         || CHR (13)
         || CHR (10)
         || 'EFFECTIVE_END_DATE DATE,'
         || CHR (13)
         || CHR (10)
         || 'CURRENT_FLG NUMBER,'
         || CHR (13)
         || CHR (10)
         || 'INSERT_DATE DATE)';
        
        V_LOOP_CNTR:= V_LOOP_CNTR+1;
        
      IF PI_CREATE_PRINT_FLAG = 'PRINT'
      THEN
         DBMS_OUTPUT.PUT_LINE (V_CREATE_TABLE_SQL || ';');
      ELSIF PI_CREATE_PRINT_FLAG = 'CREATE'
      THEN
         EXECUTE IMMEDIATE V_CREATE_TABLE_SQL;
      END IF;
   END LOOP;
         DBMS_OUTPUT.PUT_LINE ('/*Create Table Script Ends*/');

END P_HIST_TABLE_CREATION;
/


