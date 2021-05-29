CREATE OR REPLACE TRIGGER &TRANSFORMPV_USER..TRG_R2_FACTORY_DATA
/*****************************************************************************************
Company             : Vitrana
Author              : Pavan Kumar
Version Number      : 1.0
Description         : This trigger having the code related to maintain DML operation history on corresponding table.
Last Modified Date  : 27-OCT-2015
******************************************************************************************/
BEFORE INSERT OR UPDATE
ON &TRANSFORMPV_USER..R2_FACTORY_DATA 
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
         SELECT PAGE_ID INTO ln_PAGE_ID FROM E2B_CFG_AUDIT_TAB_RELATIONS WHERE TABLE_NAME = 'R2_FACTORY_DATA';
         EXCEPTION WHEN NO_DATA_FOUND THEN
            ln_PAGE_ID := NULL ;
         END ;
     IF INSERTING THEN
           ln_OPERATION_TYPE := 1;
       ELSIF UPDATING THEN
           ln_OPERATION_TYPE := 2;
       END IF;


 lv_version_number := PKG_AUDIT_LOG.F_GET_VERSION_NUMBER(LV_NEW_VERSION_NUMBER);





       UPDATE R2_FACTORY_DATA_HIST  SET
                              EFFECTIVE_END_DATE = ld_SYSDATE,
                              CURRENT_FLG          = 0
                         WHERE  CURRENT_FLG = 1 AND DATA_ID= :NEW.DATA_ID ;

       INSERT INTO R2_FACTORY_DATA_HIST (
              DATA_ID,
              PROFILE_ID,
              SEQ_NUM,
              SORT_ID,
              ELEMENT_NUMBER,
              ELEMENT_VALUE,
              DELETED,
              DELETED_DATE,
              CREATED_BY,
              CREATED_DATE,
              MODIFIED_BY,
              MODIFIED_DATE,
              ELEMENT_NAME,
              ELEMENT_DESC,
              VERSION_NUMBER,
              AUDIT_ID,
              OPERATION_TYPE,
              EFFECTIVE_START_DATE,
              EFFECTIVE_END_DATE,
              CURRENT_FLG,
              INSERT_DATE)
       VALUES (              :NEW.DATA_ID,
              :NEW.PROFILE_ID,
              :NEW.SEQ_NUM,
              :NEW.SORT_ID,
              :NEW.ELEMENT_NUMBER,
              :NEW.ELEMENT_VALUE,
              :NEW.DELETED,
              :NEW.DELETED_DATE,
              :NEW.CREATED_BY,
              :NEW.CREATED_DATE,
              :NEW.MODIFIED_BY,
              :NEW.MODIFIED_DATE,
              :NEW.ELEMENT_NAME,
              :NEW.ELEMENT_DESC,
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


