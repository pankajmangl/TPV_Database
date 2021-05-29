CREATE OR REPLACE PROCEDURE P_CREATE_TRIGGER_FILE
IS
   --F        UTL_FILE.FILE_TYPE;
   PO_SQL   VARCHAR2 (32000);
BEGIN
   --F    := UTL_FILE.FOPEN ('DATA_PUMP_DIR', 'ALL_AUDIT_TRIGGERS.SQL', 'W');
   FOR I IN (SELECT ALC.TABLE_NAME, ALC.HIST_TABLE_NAME, PK_ID_COL, PAGE_ID,
                    PK_DISPLAY_COL, TABLE_TYPE, TABLE_SCHEMA_OWNER
               FROM e2b_CFG_AUDIT_TAB_RELATIONS ALC, ALL_TABLES ALT
              WHERE PK_ID_COL IS NOT NULL
                AND ALC.ENABLED = 1
                AND UPPER (ALC.TABLE_NAME) = UPPER (ALT.TABLE_NAME)
                AND UPPER (ALC.TABLE_SCHEMA_OWNER) = UPPER (ALT.OWNER))
   LOOP
      P_TRIGGER_NAME ('TRG_' || SUBSTR (I.TABLE_NAME, 1, 25),
                      I.TABLE_NAME,
                      I.HIST_TABLE_NAME,
                      I.PK_ID_COL,
                      I.PAGE_ID,
                      I.PK_DISPLAY_COL,
                      I.TABLE_TYPE,
                      I.TABLE_SCHEMA_OWNER,
                      PO_SQL
                     );
      DBMS_OUTPUT.PUT_LINE (PO_SQL);
   --UTL_FILE.PUT_LINE (F, PO_SQL || CHR (10) || '/' || CHR (10));
   END LOOP;
--  UTL_FILE.FCLOSE (F);
END;
/


