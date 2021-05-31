CREATE OR REPLACE TRIGGER &TRANSFORMPV_USER..TRG_R2R3_NULL_FLAVOUR_MAPPING
/*****************************************************************************************
Company             : Vitrana
Author              : Pavan Kumar
Version Number      : 1.0
Description         : This trigger having the code related to maintain DML operation history on corresponding table.
Last Modified Date  : 27-OCT-2015
******************************************************************************************/
BEFORE INSERT OR UPDATE
ON &TRANSFORMPV_USER..R2R3_NULL_FLAVOUR_MAPPING 
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE

    ln_operation_type     NUMBER;
    ln_Audit_ID NUMBER ;
    ln_PAGE_ID NUMBER ;
    ld_sysdate            DATE := sysdate;
    ld_effective_end_date DATE  := to_date('12/31/9999','MM/DD/YYYY HH24:MI:SS');
    lv_version_number NUMBER ;
    LV_NEW_VERSION_NUMBER NUMBER;
 BEGIN
     ln_Audit_ID := PKG_AUDIT_LOG.F_GET_AUDIT_ID ;

       BEGIN
         SELECT PAGE_ID INTO ln_PAGE_ID FROM E2B_CFG_AUDIT_TAB_RELATIONS WHERE TABLE_NAME = 'R2R3_NULL_FLAVOUR_MAPPING';
         EXCEPTION WHEN NO_DATA_FOUND THEN
            ln_PAGE_ID := NULL ;
         END ;
     IF INSERTING THEN
           ln_OPERATION_TYPE := 1;
       ELSIF UPDATING THEN
           ln_OPERATION_TYPE := 2;
       END IF;


 lv_version_number := PKG_AUDIT_LOG.F_GET_VERSION_NUMBER(LV_NEW_VERSION_NUMBER);





       UPDATE R2R3_NULL_FLAVOUR_MAP_HIST  SET
                              EFFECTIVE_END_DATE = ld_SYSDATE,
                              CURRENT_FLG          = 0
                         WHERE  CURRENT_FLG = 1 AND MAPPING_ID= :NEW.MAPPING_ID ;

       INSERT INTO R2R3_NULL_FLAVOUR_MAP_HIST (
              MAPPING_ID,
              PROFILE_ID,
              R2_DATA_ID,
              R3_DATA_ID,
              DELETED,
              DELETED_DATE,
              CREATED_BY,
              CREATED_DATE,
              MODIFIED_BY,
              MODIFIED_DATE,
              VERSION_NUMBER,
              AUDIT_ID,
              OPERATION_TYPE,
              EFFECTIVE_START_DATE,
              EFFECTIVE_END_DATE,
              CURRENT_FLG,
              INSERT_DATE)
       VALUES (              :NEW.MAPPING_ID,
              :NEW.PROFILE_ID,
              :NEW.R2_DATA_ID,
              :NEW.R3_DATA_ID,
              :NEW.DELETED,
              :NEW.DELETED_DATE,
              :NEW.CREATED_BY,
              :NEW.CREATED_DATE,
              :NEW.MODIFIED_BY,
              :NEW.MODIFIED_DATE,
              lv_version_number,
              ln_Audit_ID,
              CASE WHEN :NEW.DELETED <> :OLD.DELETED AND LN_OPERATION_TYPE = 2 THEN
                3 
                ELSE 
                LN_OPERATION_TYPE END,
              ld_SYSDATE,
              ld_EFFECTIVE_END_DATE,
              1,
              ld_SYSDATE);
 END;
/


