CREATE OR REPLACE TRIGGER &ESM_OWNER_USER..TRG_VITCST_SAFETREPORTY_R3VIEW
   AFTER INSERT OR UPDATE OF STATUS
   ON SAFETYREPORT
   REFERENCING NEW AS NEW OLD AS OLD
   FOR EACH ROW
DECLARE
   V_AGENCY_ID   NUMBER;
BEGIN
   IF :NEW.STATUS IN (102) 
   THEN
      IF :NEW.STATUS = 102
      THEN
         SELECT AGENCY_ID
           INTO V_AGENCY_ID
           FROM LM_REGULATORY_CONTACT
          WHERE AGENCY_NAME = :NEW.SENDER_AGENCY;
      ELSE
         V_AGENCY_ID    := :NEW.AGENCY_ID;
      END IF;

      INSERT INTO TRANSFORMPV.SAFETYREPORT_R3VIEW
                  (REPORT_ID, SAFETYREPORTID,
                   SAFETYREPORTVERSION,
                   RECEIVER_AGENCY,
                   CASE_XREF, AGENCY_ID, PROCESSED,
                   E2B,
                   FILENAME, ENTERPRISE_ID, DELETED, DELETED_DATE,
                   E2B_REPORT_STATUS
                  )
           VALUES (:NEW.REPORT_ID, :NEW.SAFETYREPORTID,
                   :NEW.SAFETYREPORTVERSION,
                   DECODE (:NEW.STATUS,
                           9, :NEW.RECEIVER_AGENCY, 102,
                           :NEW.SENDER_AGENCY
                          ),
                   :NEW.CASE_XREF, V_AGENCY_ID, 0,
                      '<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE ichicsr SYSTEM ""><ichicsr lang="en">'
                   || :NEW.E2B
                   || '</ichicsr>',
                   :NEW.FILENAME, :NEW.ENTERPRISE_ID, 0, NULL,
                   :NEW.STATUS
                  );
   END IF;
END;
/