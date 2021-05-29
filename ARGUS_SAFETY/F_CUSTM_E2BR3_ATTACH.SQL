CREATE OR REPLACE FUNCTION &ARGUS_APP_USER..F_CUSTM_E2BR3_ATTACH (
   PI_CASE_ID             IN       NUMBER,
   PI_SAFETYREPORTID      IN       VARCHAR2,
   PI_R3_ATTACHMENT       IN       BLOB,
   PI_NOTES               IN       VARCHAR2,
   PI_CLASSIFICATION_ID   IN       NUMBER,
   PI_R3_FILENAME         IN       VARCHAR2,
   PI_R3_TYPE             IN       VARCHAR2,
   PI_DRAFT_REPORT_ID     IN       NUMBER,
   PO_STATUS              OUT      NUMBER
)
   RETURN VARCHAR2
IS
   V_CHK_EXIST      NUMBER          := 0;
   V_CASE_ID        NUMBER          := PI_CASE_ID;
   V_NOTES_MAX_SORT_ID    NUMBER           := 1;
   V_NOTES          VARCHAR2 (4000);
   V_PRODUCT_NAME   VARCHAR2 (500);
BEGIN
   IF V_CASE_ID IS NULL
   THEN
      BEGIN
         SELECT CASE_XREF
           INTO V_CASE_ID
           FROM (SELECT   CASE_XREF
                     FROM &ESM_OWNER_USER..SAFETYREPORT
                    WHERE SAFETYREPORTID = PI_SAFETYREPORTID
                 ORDER BY REPORT_ID DESC)
          WHERE ROWNUM = 1;
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            PO_STATUS    := 0;
            RETURN 'No Report Found agaist this SafetyReportID!';
      END;
   END IF;

   BEGIN
      SELECT 'Product: '||PROD_NAME
        INTO V_PRODUCT_NAME
        FROM CASE_PRODUCT CP, LM_PRODUCT LP
       WHERE CP.CASE_ID = V_CASE_ID
         AND NVL (CP.PRODUCT_ID, CP.PAT_EXPOSURE) = LP.PRODUCT_ID
         AND FIRST_SUS_PROD = 1;
   EXCEPTION
      WHEN OTHERS
      THEN
         NULL;
   END;

   IF UPPER (PI_R3_TYPE) = 'DRAFT'
   THEN
      MERGE INTO CASE_NOTES_ATTACH CNA
         USING (SELECT V_CASE_ID CASE_ID, PI_R3_ATTACHMENT R3_ATTACHMENT,
                       PI_CLASSIFICATION_ID CLASSIFICATION_ID
                  FROM DUAL) R3
         ON (    CNA.CASE_ID = R3.CASE_ID
             AND CNA.CLASSIFICATION = CLASSIFICATION_ID)
         WHEN MATCHED THEN
            UPDATE
               SET CNA.DATA = PI_R3_ATTACHMENT,
                   BLOBSIZE = DBMS_LOB.GETLENGTH (PI_R3_ATTACHMENT),
                   ENTRY_DATE = SYSDATE,
                   NOTES =
                         PI_NOTES
                      || NVL2 (V_PRODUCT_NAME, ',' || V_PRODUCT_NAME, NULL)
         WHEN NOT MATCHED THEN
            INSERT (CASE_ID, SEQ_NUM, BLOB_SEQ, DATA, BLOBSIZE, FILETYPE,
                    ENTRY_DATE, CLASSIFICATION, NOTES, ENTERPRISE_ID)
            VALUES (V_CASE_ID, S_CASE_NOTES_ATTACH.NEXTVAL, 1,
                    PI_R3_ATTACHMENT, DBMS_LOB.GETLENGTH (PI_R3_ATTACHMENT),
                    PI_R3_FILENAME, SYSDATE, R3.CLASSIFICATION_ID,
                       PI_NOTES
                    || NVL2 (V_PRODUCT_NAME, ',' || V_PRODUCT_NAME, NULL),
                    1);

      UPDATE SAFETYREPORT
         SET PROCESSED = 1
       WHERE REPORT_ID = PI_DRAFT_REPORT_ID;
   ELSE
      
	  BEGIN
         SELECT MAX(SORT_ID) INTO V_NOTES_MAX_SORT_ID FROM CASE_NOTES_ATTACH WHERE CASE_ID = V_CASE_ID;
		 
		 IF V_NOTES_MAX_SORT_ID IS NULL THEN
		   V_NOTES_MAX_SORT_ID    := 1;            
		 ELSE
		   V_NOTES_MAX_SORT_ID := V_NOTES_MAX_SORT_ID + 1;  
		 END IF;
		 
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            V_NOTES_MAX_SORT_ID    := 1;            
		 WHEN OTHERS THEN
            V_NOTES_MAX_SORT_ID    := 1;            
      END;
	  
      INSERT INTO CASE_NOTES_ATTACH
                  (CASE_ID, SEQ_NUM, BLOB_SEQ,
                   DATA, BLOBSIZE, SORT_ID,
                   FILETYPE, ENTRY_DATE, CLASSIFICATION,
                   NOTES,
                   ENTERPRISE_ID
                  )
           VALUES (V_CASE_ID, S_CASE_NOTES_ATTACH.NEXTVAL, 1,
                   PI_R3_ATTACHMENT, DBMS_LOB.GETLENGTH (PI_R3_ATTACHMENT), V_NOTES_MAX_SORT_ID,
                   PI_R3_FILENAME, SYSDATE, PI_CLASSIFICATION_ID,
                      PI_NOTES
                   || NVL2 (V_PRODUCT_NAME, ',' || V_PRODUCT_NAME, NULL),
                   1
                  );
   END IF;

   PO_STATUS    := 1;
   RETURN 'SUCCESS';
EXCEPTION
   WHEN OTHERS
   THEN
      PO_STATUS    := 0;
      V_NOTES      :=
                   'Following error occured while attaching R3 > ' || SQLERRM;
      RETURN 'Following error occured while attaching R3 > ' || SQLERRM;
END F_CUSTM_E2BR3_ATTACH;   
/
