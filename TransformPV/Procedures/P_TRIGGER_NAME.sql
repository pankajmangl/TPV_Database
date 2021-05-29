CREATE OR REPLACE PROCEDURE P_TRIGGER_NAME(
    PI_TRIGGERNAME    IN VARCHAR2,
    PI_TABLE_NAME IN VARCHAR2,
    PI_HIST_TABLE_NAME IN VARCHAR2,
    PI_FK_COL IN VARCHAR2,
    PI_PAGE_ID  IN VARCHAR2, PI_FORIEGNKEY_COLID_NAME IN VARCHAR2, PI_TABLE_TYPE IN VARCHAR2,
    PI_SCHEMA_OWNER IN VARCHAR2,
    PO_SQL OUT VARCHAR2)
IS
/* **********************************************************************
    Name     :   P_TRIGGER_NAME
    Type     :   Procedure
    Description  :   This is procedure to create script for Trigger for history tables
    Sources    :   n/a
    Source Tables  :   n/a
    Target Tables  :   n/a
    Business Logic :   n/a
    Parameters   :     PI_TRIGGERNAME, PI_TABLE_NAME, PO_SQL
    Return    :   n/a
    Updates    :   03-September-2014   [PS] v0.01 initial version, see description above.
***********************************************************************/

  V_COL_LIST VARCHAR2(5000);
  V_VALUE_LIST VARCHAR2(5000);
  V_UPD_WHERE VARCHAR2(4000) ;
  V_UPD_STATEMENT VARCHAR2(10000);
  V_STR VARCHAR2(2000);
  V_STR_VRSN_NO VARCHAR2(1000);
  V_UPD_AUDIT_LOG VARCHAR2(1000);
  V_SQL CLOB ;
BEGIN
    
          FOR I IN
          (SELECT A.COLUMN_NAME
          FROM ALL_CONS_COLUMNS A,
            ALL_CONSTRAINTS B
          WHERE A.CONSTRAINT_NAME = B.CONSTRAINT_NAME
          AND A.TABLE_NAME        = B.TABLE_NAME
          AND A.TABLE_NAME        = PI_HIST_TABLE_NAME
          AND B.CONSTRAINT_TYPE   = 'P'
          ORDER BY POSITION
          )
          LOOP
            V_UPD_WHERE :=
            (
              CASE
              WHEN V_UPD_WHERE IS NOT NULL THEN
                V_UPD_WHERE || ' AND '
              END) || I.COLUMN_NAME ||' = :NEW.'||I.COLUMN_NAME;
          END LOOP;

    
    V_UPD_STATEMENT := 'UPDATE '|| PI_HIST_TABLE_NAME ||'  SET
                              EFFECTIVE_END_DATE = ld_SYSDATE,
                              CURRENT_FLG          = 0
                         WHERE  CURRENT_FLG = 1 AND ' ||(CASE WHEN V_UPD_WHERE IS NOT NULL THEN V_UPD_WHERE  ELSE PI_FK_COL||'= :NEW.'||PI_FK_COL  END)||' ;' ;

    /* THE SELECT CLUASE BRING COLUMN NAME FROM TABLES*/
    SELECT 'INSERT INTO '||PI_HIST_TABLE_NAME||' (' || CHR(13)||CHR(10)|| LISTAGG( '              ' || COLUMN_NAME, ', ' || CHR(13)||CHR(10))
    WITHIN GROUP (ORDER BY COLUMN_ID)||')' ,CHR(13)||CHR(10) || '       VALUES (' ||LISTAGG( '              ' || ':NEW.'||COLUMN_NAME, ','|| CHR(13)||CHR(10)) WITHIN GROUP (ORDER BY COLUMN_ID) ||')'
    INTO V_COL_LIST, V_VALUE_LIST
       FROM (SELECT
             COLUMN_NAME, COLUMN_ID
             FROM ALL_TAB_COLS
             WHERE TABLE_NAME = PI_TABLE_NAME
             AND COLUMN_NAME <> 'CURRENT_VERSION');

    /* COMMON COLUMNS ARE REPLACED WITH NEW COLUMNS FOR INSERTION OF STATIC VALUES*/
    V_COL_LIST := REPLACE(V_COL_LIST,')')||', '
                          || CHR(13)||CHR(10) || '              VERSION_NUMBER,'
                          || CHR(13)||CHR(10) || '              AUDIT_ID,'
                          || CHR(13)||CHR(10) || '              OPERATION_TYPE,'
                          || CHR(13)||CHR(10) || '              EFFECTIVE_START_DATE,'
                          || CHR(13)||CHR(10) || '              EFFECTIVE_END_DATE,'
                          || CHR(13)||CHR(10) || '              CURRENT_FLG,'
                          || CHR(13)||CHR(10) || '              INSERT_DATE) ';

    V_VALUE_LIST := REPLACE(V_VALUE_LIST,')')||', '
    || CHR(13)||CHR(10) || '              lv_version_number, '
    || CHR(13)||CHR(10) || '              '||'ln_Audit_ID,'
    || CHR(13)||CHR(10) || '              ln_OPERATION_TYPE,'
    || CHR(13)||CHR(10) || '              ld_SYSDATE,'
    || CHR(13)||CHR(10) || '              ld_EFFECTIVE_END_DATE,'
    || CHR(13)||CHR(10) || '              1,'
    || CHR(13)||CHR(10) || '              ld_SYSDATE);';
    
    IF PI_TABLE_TYPE = 1 THEN 
    
--       V_STR_VRSN_NO := '
--         SELECT MAX(VERSION_NUMBER)
--                INTO lv_version_number
--          FROM '||PI_HIST_TABLE_NAME||
--          ' WHERE '||PI_FK_COL||' = '||':NEW.'||PI_FK_COL||';';

       V_STR_VRSN_NO := '   IF :OLD.CURRENT_VERSION IS NULL 
                            THEN 
                            :NEW.CURRENT_VERSION := 1;
                            ELSE 
                            :NEW.CURRENT_VERSION := :OLD.CURRENT_VERSION+1;
                            END IF;
                            LV_NEW_VERSION_NUMBER :=:NEW.CURRENT_VERSION; 
                            ';
      
--       V_UPD_AUDIT_LOG := ' UPDATE Q_AUDIT_LOG SET EFFECTIVE_END_DATE = ld_SYSDATE,
--                            CURRENT_FLG          = 0 
--                            WHERE CURRENT_FLG = 1
--                            AND PK_COL_VAL = '||':NEW.'||PI_FK_COL
--                            ||' AND CATEGORY_ID = ln_PAGE_ID ;';
--      V_STR := 'INSERT INTO Q_AUDIT_LOG ('
--        || CHR(13)||CHR(10) || '              VERSION_NUMBER,'
--        || CHR(13)||CHR(10) || '              AUDIT_ID,'
--        || CHR(13)||CHR(10) || '              SEQ_NUM,'
--        || CHR(13)||CHR(10) || '              OPERATION_TYPE,'
--        || CHR(13)||CHR(10) || '              EFFECTIVE_START_DATE,'
--        || CHR(13)||CHR(10) || '              EFFECTIVE_END_DATE,'
--        || CHR(13)||CHR(10) || '              CURRENT_FLG,'
--        || CHR(13)||CHR(10) || '              INSERT_DATE,'
--        || CHR(13)||CHR(10) || '              AUDIT_DATA,'
--        || CHR(13)||CHR(10) || '              CATEGORY_ID,'
--        || CHR(13)||CHR(10) || '              USER_ID,'
--        || CHR(13)||CHR(10) || '              PK_COL_VAL)'
--        || CHR(13)||CHR(10) || '               VALUES('
--        || CHR(13)||CHR(10) || '               lv_version_number, '
--        || CHR(13)||CHR(10) || '              ln_Audit_ID,'
--        || CHR(13)||CHR(10) || '              AUDIT_SEQ_NUM_SEQ.NEXTVAL,'
--        || CHR(13)||CHR(10) || '              ln_OPERATION_TYPE,'
--        || CHR(13)||CHR(10) || '              ld_SYSDATE,'
--        || CHR(13)||CHR(10) || '              ld_EFFECTIVE_END_DATE,'
--        || CHR(13)||CHR(10) || '              1,'
--        || CHR(13)||CHR(10) || '              ld_SYSDATE,'
--        || CHR(13)||CHR(10) || '              :NEW.'||PI_FORIEGNKEY_COLID_NAME||','
--        || CHR(13)||CHR(10) || '              ln_PAGE_ID,'
--        || CHR(13)||CHR(10) || '              :NEW.MODIFIED_BY,' 
--        || CHR(13)||CHR(10) || '              :NEW.'||PI_FK_COL||');';
        
       
    
      
    END IF ;

    PO_SQL :=
'/* ************************************************************************************************************
Name           : ' || PI_TRIGGERNAME ||  CHR(13)||CHR(10)||
       'Type           : Trigger '|| CHR(13)||CHR(10)||
       'Description    : This is trigger used to insert or update data into history tables'|| CHR(13)||CHR(10)||
       'Source Tables  : ' || PI_TABLE_NAME ||  CHR(13)||CHR(10)||
       'Target Tables  : ' || PI_HIST_TABLE_NAME || CHR(13)||CHR(10)||
       'Business Logic : n/a '|| CHR(13)||CHR(10)||
       'Updates        : 03-September-2014   [PS] v0.01 initial version, see description above.
****************************************************************************************************************/'||
    CHR(10)||CHR(13)||'CREATE OR REPLACE TRIGGER ' || PI_TRIGGERNAME || CHR(13)||CHR(10)||
    ' BEFORE INSERT OR UPDATE ON '|| PI_TABLE_NAME || ' FOR EACH ROW
    '|| CHR(13)||CHR(10)||'DECLARE
    '|| CHR(13)||CHR(10)||
'   ln_operation_type     NUMBER;
    ln_Audit_ID NUMBER ;
    ln_PAGE_ID NUMBER ;
    ld_sysdate            DATE := sysdate;
    ld_effective_end_date DATE := to_date(''12/31/9999'',''MM/DD/YYYY HH24:MI:SS'');
    lv_version_number NUMBER ;
    LV_NEW_VERSION_NUMBER NUMBER;' || CHR(13)||CHR(10)||
    
   
    --V_MAX_VERSION_NUMBER NUMBER := 0;

/* ************************************************************************************************************
Name           : ' || PI_TRIGGERNAME ||  CHR(13)||CHR(10)||
       'Type           : Trigger '|| CHR(13)||CHR(10)||
       'Description    : This is trigger used to insert or update data into history tables'|| CHR(13)||CHR(10)||
       'Source Tables  : ' || PI_TABLE_NAME ||  CHR(13)||CHR(10)||
       'Target Tables  : ' || PI_TABLE_NAME || '_HIST' || CHR(13)||CHR(10)||
       'Business Logic : n/a '|| CHR(13)||CHR(10)||
       'Updates        : 03-September-2014   [PS] v0.01 initial version, see description above.
****************************************************************************************************************/

  ' BEGIN
     ln_Audit_ID := PKG_AUDIT_LOG.F_GET_AUDIT_ID ;
     
       BEGIN
         SELECT PAGE_ID INTO ln_PAGE_ID FROM E2B_CFG_AUDIT_TAB_RELATIONS WHERE TABLE_NAME = '||''''||PI_TABLE_NAME||''''||';'|| '
         EXCEPTION WHEN NO_DATA_FOUND THEN 
            ln_PAGE_ID := NULL ;
         END ;
     IF INSERTING THEN
           ln_OPERATION_TYPE := 1;
       ELSIF UPDATING THEN
           ln_OPERATION_TYPE := 2;
       END IF; 
       ' ||  CHR(13)||CHR(10)
            ||CHR(13)||CHR(10)||V_STR_VRSN_NO||' lv_version_number := PKG_AUDIT_LOG.F_GET_VERSION_NUMBER(LV_NEW_VERSION_NUMBER); '||CHR(13)||CHR(10)||CHR(13)||CHR(10)||
     V_UPD_AUDIT_LOG||CHR(13)||CHR(10)||CHR(13)||CHR(10)
||
     '       ' ||V_STR||CHR(13)
||CHR(13)||CHR(10)||

       '       ' || V_UPD_STATEMENT||CHR(13)||CHR(10)||CHR(13)||CHR(10)

     ||'       ' || V_COL_LIST || V_VALUE_LIST||CHR(13)||CHR(10)

||

    ' END;'|| CHR(10);
    --PO_SQL := null ;
     --insert into test1 values(length(V_SQL));
END P_TRIGGER_NAME;
/


