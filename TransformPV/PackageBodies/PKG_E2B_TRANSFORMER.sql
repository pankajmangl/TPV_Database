CREATE OR REPLACE PACKAGE BODY &TRANSFORMPV_USER..PKG_E2B_TRANSFORMER
AS
   /* **********************************************************************
   name     :   PKG_E2B_TRANSFORMER
   type     :   package
   description  :   This package is used to define transformation logics
   sources    :   n/a
   source tables  :   n/a
  target tables  :   n/a
   business logic :   n/a
   parameters   :   n/a
   return    :   n/a
   updates    :   04-June-2014   [PS] v0.01 initial version, see description above.
   ***********************************************************************/

/******************************************************************************************************
       Name            : P_GET_E2B_DECODE
       Type            : Procedure
       Description     : This Procedure is used to get the code and decode value of e2b code.
       Parameters      :   PI_AGENCY_ID         IN       NUMBER,
                          

       Return          :  PO_RC_ELEMENT_LIST   OUT      SYS_REFCURSOR,
                          PO_RC_CODE_DECODE    OUT      SYS_REFCURSOR
   *****************************************************************************************************************/
   
   PROCEDURE P_GET_E2B_DECODE (
      PI_AGENCY_ID         IN       NUMBER,
      PO_RC_ELEMENT_LIST   OUT      SYS_REFCURSOR,
      PO_RC_CODE_DECODE    OUT      SYS_REFCURSOR
   )
   IS
      V_CNT   NUMBER           := 0;
      V_QRY   VARCHAR2 (20000);
   BEGIN
      DELETE FROM GT_DECODE_VIEW_LIST;

      OPEN PO_RC_ELEMENT_LIST FOR
         SELECT CEDVR.DTD_ELEMENT, CEDVR.DECODE_TYPE, 'R3' R2_R3_FLAG
           FROM CFG_E2B_DECODE_VIEW_R3 CEDVR, E2B_R3_CFG_AGENCY ERCA
          WHERE CEDVR.DELETED = 0
            AND CEDVR.ENABLED = 1
            AND ERCA.DELETED = 0
            AND ERCA.ENABLED = 1
            AND CEDVR.ENABLED = 1
            AND E2B_PROFILE_ID = CEDVR.PROFILE_ID
            AND ERCA.AGENCY_ID = PI_AGENCY_ID
         UNION ALL
         SELECT DTD_ELEMENT, DECODE_TYPE, 'R2' R2_R3_FLAG
           FROM CFG_E2B_DECODE_VIEW
          WHERE DELETED = 0 AND ENABLED = 1;

      FOR TBL_LST IN (SELECT DISTINCT TABLE_NAME, VAL_COLUMN_NAME,
                                      ID_COLUMN_NAME, ADDITIONAL_CONDITION,
                                      E2B_CODE, DECODE_VALUE, DECODE_TYPE
                                 FROM CFG_E2B_DECODE_VIEW_R3 CEDVR,
                                      E2B_R3_CFG_AGENCY ERCA
                                WHERE CEDVR.DELETED = 0
                                  AND CEDVR.ENABLED = 1
                                  AND ERCA.DELETED = 0
                                  AND ERCA.ENABLED = 1
                                  AND CEDVR.ENABLED = 1
                                  AND E2B_PROFILE_ID = CEDVR.PROFILE_ID
                                  AND ERCA.AGENCY_ID = PI_AGENCY_ID)
      LOOP
         IF TBL_LST.TABLE_NAME IS NOT NULL
         THEN
            V_QRY    :=
                  'SELECT ''R3'' R2_R3_FLAG,'''
               || TBL_LST.DECODE_TYPE
               || ''' DECODE_TYPE,'
               || TBL_LST.VAL_COLUMN_NAME
               || ', TO_CHAR(E2B_CODE) E2B_CODE
          FROM (SELECT '
               || TBL_LST.VAL_COLUMN_NAME
               || ', TO_CHAR(E2B_CODE) E2B_CODE,
                       ROW_NUMBER () OVER (PARTITION BY E2B_CODE ORDER BY '
               || TBL_LST.ID_COLUMN_NAME
               || ') RN FROM SYN_'
               || TBL_LST.TABLE_NAME
               || '
                 WHERE '
               || (CASE
                      WHEN TBL_LST.ADDITIONAL_CONDITION IS NOT NULL
                         THEN TBL_LST.ADDITIONAL_CONDITION || ' AND '
                   END
                  )
               || ' E2B_CODE IS NOT NULL )
         WHERE RN = 1';
         ELSE
            V_QRY    :=
                  'SELECT ''R3'' R2_R3_FLAG,'''
               || TBL_LST.DECODE_TYPE
               || ''' DECODE_TYPE, E2B_VALUE, E2B_CODE
              FROM (SELECT ROWNUM RN, COLUMN_VALUE E2B_CODE
                      FROM TABLE (PKG_COMMON_UTILITIES.F_SPLIT ('''
               || TBL_LST.E2B_CODE
               || ''',''|''))) T0,
                   (SELECT ROWNUM RN, COLUMN_VALUE E2B_VALUE
                      FROM TABLE (PKG_COMMON_UTILITIES.F_SPLIT ('''
               || TBL_LST.DECODE_VALUE
               || ''',''|''))) T1
             WHERE T0.RN = T1.RN ';
         END IF;

         PKG_LOGGER.P_LOG_TRACE ('PKG_E2B_TRANSFORMER',
                                 'P_GET_E2B_DECODE - R3',
                                 V_QRY,
                                 1,
                                 3,
                                 'TRACE'
                                );

         EXECUTE IMMEDIATE    'INSERT INTO GT_DECODE_VIEW_LIST (
           R2_R3_FLAG, DECODE_TYPE, E2B_VALUE,
            E2B_CODE)'
                           || V_QRY;
      END LOOP;

      FOR TBL_LST IN (SELECT *
                        FROM CFG_E2B_DECODE_VIEW
                       WHERE DELETED = 0 AND ENABLED = 1)
      LOOP
         SELECT (CASE
                    WHEN COUNT (1) > 0
                       THEN 1
                    ELSE 0
                 END)
           INTO V_CNT
           FROM SYN_CFG_SAME_E2B_CODE
          WHERE NVL (AGENCY_ID, 0) = NVL (PI_AGENCY_ID, 0)
            AND DTD_ELEMENT = UPPER (TBL_LST.DTD_ELEMENT);

         IF V_CNT = 0
         THEN
            SELECT (CASE
                       WHEN COUNT (1) > 0
                          THEN 2
                       ELSE 0
                    END)
              INTO V_CNT
              FROM SYN_CFG_SAME_E2B_CODE
             WHERE DTD_ELEMENT = UPPER (TBL_LST.DTD_ELEMENT);
         END IF;

         IF     TBL_LST.TABLE_NAME IS NOT NULL
            AND TBL_LST.DECODE_TYPE NOT IN ('MEDDRA', 'COUNTRY')
         THEN
            V_QRY    :=
                  'SELECT ''R2'' R2_R3_FLAG,'''
               || TBL_LST.DECODE_TYPE
               || ''' DECODE_TYPE,'''
               || TBL_LST.DTD_ELEMENT
               || ''','
               || TBL_LST.VAL_COLUMN_NAME
               || ', TO_CHAR(E2B_CODE) E2B_CODE
               FROM (SELECT '
               || TBL_LST.VAL_COLUMN_NAME
               || ', TO_CHAR(E2B_CODE) E2B_CODE,
                       ROW_NUMBER () OVER (PARTITION BY E2B_CODE ORDER BY '
               || TBL_LST.ID_COLUMN_NAME
               || ') RN FROM SYN_'
               || TBL_LST.TABLE_NAME
               || '
                 WHERE '
               || (CASE
                      WHEN TBL_LST.ADDITIONAL_CONDITION IS NOT NULL
                         THEN TBL_LST.ADDITIONAL_CONDITION || ' AND '
                   END
                  )
               || 'E2B_CODE IS NOT NULL AND TO_CHAR(E2B_CODE) NOT IN (SELECT E2B_CODE
                                          FROM SYN_CFG_SAME_E2B_CODE WHERE upper(DTD_ELEMENT) = '''
               || UPPER (TBL_LST.R2_XPATH)
               || ''''
               || (CASE
                      WHEN V_CNT = 1
                         THEN ' AND AGENCY_ID = ' || PI_AGENCY_ID
                   END
                  )
               || '))
         WHERE RN = 1
        UNION
        SELECT ''R2'' R2_R3_FLAG,'''
               || TBL_LST.DECODE_TYPE
               || ''' DECODE_TYPE,'''
               || TBL_LST.DTD_ELEMENT
               || ''','
               || TBL_LST.VAL_COLUMN_NAME
               || ', TO_CHAR(T0.E2B_CODE) E2B_CODE
          FROM SYN_CFG_SAME_E2B_CODE T0, SYN_'
               || TBL_LST.TABLE_NAME
               || ' T1
         WHERE UPPER(DTD_ELEMENT) = '''
               || UPPER (TBL_LST.R2_XPATH)
               || ''' AND T0.E2B_CODE = T1.E2B_CODE AND T0.AE_PREF_ID = T1.'
               || TBL_LST.ID_COLUMN_NAME
               || ''
               || (CASE
                      WHEN V_CNT = 1
                         THEN ' AND AGENCY_ID = ' || PI_AGENCY_ID
                   END
                  );
         ELSE
            V_QRY    :=
                  'SELECT ''R2'' R2_R3_FLAG,'''
               || TBL_LST.DECODE_TYPE
               || ''' DECODE_TYPE,'''
               || TBL_LST.DTD_ELEMENT
               || ''','
               || ' E2B_VALUE, E2B_CODE
              FROM (SELECT ROWNUM RN, COLUMN_VALUE E2B_CODE
                      FROM TABLE (PKG_COMMON_UTILITIES.F_SPLIT ('''
               || TBL_LST.E2B_CODE
               || ''',''|''))) T0,
                   (SELECT ROWNUM RN, COLUMN_VALUE E2B_VALUE
                      FROM TABLE (PKG_COMMON_UTILITIES.F_SPLIT ('''
               || TBL_LST.DECODE_VALUE
               || ''',''|''))) T1
             WHERE T0.RN = T1.RN ';
         END IF;

         PKG_LOGGER.P_LOG_TRACE ('PKG_E2B_TRANSFORMER',
                                 'R2_DECODE - R2',
                                 V_QRY,
                                 1,
                                 3,
                                 'TRACE'
                                );

         EXECUTE IMMEDIATE    'INSERT INTO GT_DECODE_VIEW_LIST (  R2_R3_FLAG,
                                                               DECODE_TYPE,
                                                               DTD_ELEMENT,
                                                               E2B_VALUE,
                                                               E2B_CODE)'
                           || V_QRY;
      END LOOP;

      OPEN PO_RC_CODE_DECODE FOR
         SELECT G.DECODE_TYPE, G.R2_R3_FLAG, G.E2B_VALUE DECODE_VALUE,
                G.E2B_CODE CODE_VALUE, DTD_ELEMENT
           FROM GT_DECODE_VIEW_LIST G;
   END P_GET_E2B_DECODE;

/******************************************************************************************************
       Name            : P_GET_UNPROCESSED_RECORDS
       Type            : Procedure
       Description     : This Procedure is used to get the details of unprocessed e2b reports.
       Parameters      :   
                          

       Return          :  PO_RC_UNPROCESSED_RECORDS   OUT   SYS_REFCURSOR
   *****************************************************************************************************************/   
   PROCEDURE P_GET_UNPROCESSED_RECORDS (
      PO_RC_UNPROCESSED_RECORDS   OUT   SYS_REFCURSOR
   )
   IS
   BEGIN
      OPEN PO_RC_UNPROCESSED_RECORDS FOR
         SELECT E2B, RECEIVER_AGENCY, REPORT_ID, SAFETYREPORTID, CASE_XREF,
                XML_MSG_DTD, SR3.AGENCY_ID
           FROM SAFETYREPORT_R3VIEW SR3, SYN_CFG_RECEIVER CR
          WHERE SR3.AGENCY_ID = CR.AGENCY_ID AND NVL (PROCESSED, 0) <> 1;
   END P_GET_UNPROCESSED_RECORDS;

/******************************************************************************************************
       Name            : P_UPDATE_R3_TO_SAFETY
       Type            : Procedure
       Description     : This Procedure is used to attach the e2b r3 report to the case.
       Parameters      :  PI_R3_XML             IN   CLOB,
                          PI_PROCESS_STATUS     IN   NUMBER,
                          PI_REPORT_ID          IN   NUMBER,
                         PI_SAFETYREPORTID     IN   VARCHAR2,
                          PI_E2BR3_TYPE         IN   VARCHAR2,
                          PI_R3_FILENAME        IN   VARCHAR2,
                          PI_R3_HTML            IN   BLOB,
                          PI_AGENCY_ID          IN   NUMBER,
                          PI_R3_HTML_FILENAME   IN   VARCHAR2  
                          

       Return          :  
   *****************************************************************************************************************/    
    PROCEDURE P_UPDATE_R3_TO_SAFETY (
      PI_R3_XML             IN   CLOB,
      PI_PROCESS_STATUS     IN   NUMBER,
      PI_REPORT_ID          IN   NUMBER,
      PI_SAFETYREPORTID     IN   VARCHAR2,
      PI_E2BR3_TYPE         IN   VARCHAR2,
      PI_R3_FILENAME        IN   VARCHAR2,
      PI_R3_HTML            IN   BLOB,
      PI_AGENCY_ID          IN   NUMBER,
      PI_R3_HTML_FILENAME   IN   VARCHAR2
   )
   IS
      V_CHK_EXIST             NUMBER          := 0;
      V_R3_XML_BLOB           BLOB            := NULL;
      V_R3_HTML_BLOB          BLOB            := NULL;
      V_NOTES                 VARCHAR2 (1000);
      V_MESSAGE               VARCHAR2 (4000);
      V_STATUS                NUMBER;
      V_CASE_ID               NUMBER;
      V_E2BR3_PROFILE         VARCHAR2 (500);
      V_DRAFT_E2B_CLASS_ID    NUMBER;
      V_DRAFT_HTML_CLASS_ID   NUMBER;
      V_FINAL_E2B_CLASS_ID    NUMBER;
      V_FINAL_HTML_CLASS_ID   NUMBER;
      V_E2B_REPORT_STATUS     NUMBER;
      V_E2BR3_TYPE            VARCHAR2 (500)  := PI_E2BR3_TYPE;
      V_AGENCY_NAME           VARCHAR2 (500);
      V_IMP_ATTACHMENT_CLASS_ID NUMBER;
   BEGIN
      IF PI_AGENCY_ID IS NOT NULL
      THEN
         SELECT AGENCY_NAME
           INTO V_AGENCY_NAME
           FROM SYN_LM_REGULATORY_CONTACT
          WHERE AGENCY_ID = PI_AGENCY_ID;
      END IF;

      IF UPPER (V_E2BR3_TYPE) = 'DRAFT'
      THEN
         UPDATE    SAFETYREPORT_R3VIEW
               SET PROCESSED = PI_PROCESS_STATUS
             WHERE REPORT_ID = PI_REPORT_ID
               AND SAFETYREPORTID = PI_SAFETYREPORTID
         RETURNING CASE_XREF, E2B_REPORT_STATUS
              INTO V_CASE_ID, V_E2B_REPORT_STATUS;

         IF V_E2B_REPORT_STATUS = 102
         THEN
            V_E2BR3_TYPE       := 'DOWNGRADE';
            V_E2BR3_PROFILE    := 'E2BR3_REPORT';
         ELSE
            V_E2BR3_PROFILE    := 'E2BR3_DRAFT_REPORT';
         END IF;
      ELSE
         V_E2BR3_PROFILE    := 'E2BR3_REPORT';
      END IF;

      IF PI_PROCESS_STATUS = 2
      THEN
         V_NOTES    :=
               'E2B R3, '
            || V_AGENCY_NAME
            || ', '
            || INITCAP (NVL (V_E2BR3_TYPE, 'Upgrade'))
            || ', Failed';
      ELSE
--         PKG_LOGGER.P_LOG_TRACE ('TRANSFORMER',
--                                 'UPDATE TO SAFETY',
--                                 DBMS_LOB.GETLENGTH (PI_R3_XML),
--                                 1,
--                                 1,
--                                 'TRACE'
--                                );
         IF DBMS_LOB.GETLENGTH (PI_R3_XML) > 0
         THEN
            V_R3_XML_BLOB    :=
                            PKG_COMMON_UTILITIES.F_CLOB_TO_BLOB_T (PI_R3_XML);
         END IF;

--         PKG_LOGGER.P_LOG_TRACE ('TRANSFORMER',
--                                 'UPDATE TO SAFETY',
--                                 DBMS_LOB.GETLENGTH (V_R3_XML_BLOB),
--                                 1,
--                                 1,
--                                 'TRACE'
--                                );
         V_NOTES    :=
                CASE WHEN V_E2BR3_TYPE = 'IMPORT_ATTACHMENT' THEN
                NVL (PI_R3_HTML_FILENAME,
                                  PI_SAFETYREPORTID || '.PDF'
                                 )
                ELSE
               'E2B R3, Agency:'
            || V_AGENCY_NAME
            || TO_CHAR (SYSDATE, 'DD-MON-YYYY')
            || ', '
            || INITCAP (NVL (V_E2BR3_TYPE, 'Upgrade'))
                END;

      END IF;

      SELECT FINAL_E2B_CLASS_ID, FINAL_HTML_CLASS_ID,IMP_ATTACHMENT_CLASS_ID
        INTO V_FINAL_E2B_CLASS_ID, V_FINAL_HTML_CLASS_ID, V_IMP_ATTACHMENT_CLASS_ID
        FROM E2B_R3_CFG_AGENCY
       WHERE AGENCY_ID = PI_AGENCY_ID;

      IF V_R3_XML_BLOB IS NOT NULL
      THEN
         V_MESSAGE    :=
            F_CUSTM_E2BR3_ATTACH
                             (V_CASE_ID,
                              PI_SAFETYREPORTID,
                              V_R3_XML_BLOB,
                              V_NOTES,
                              (CASE
                                  WHEN V_E2BR3_TYPE = 'DRAFT'
                                     THEN V_DRAFT_E2B_CLASS_ID
                                  ELSE V_FINAL_E2B_CLASS_ID
                               END
                              ),
                              NVL (PI_R3_FILENAME,
                                   PI_SAFETYREPORTID || '.XML'),
                              V_E2BR3_TYPE,
                              PI_REPORT_ID,
                              V_STATUS
                             );
      END IF;

      IF PI_R3_HTML IS NOT NULL
      THEN
         V_MESSAGE    :=
            F_CUSTM_E2BR3_ATTACH
                            (V_CASE_ID,
                             PI_SAFETYREPORTID,
                             PI_R3_HTML,                     --V_R3_HTML_BLOB,
                             V_NOTES,
                             (CASE
                                 WHEN V_E2BR3_TYPE = 'DRAFT'
                                    THEN V_DRAFT_HTML_CLASS_ID
                                 WHEN V_E2BR3_TYPE = 'IMPORT_ATTACHMENT'
                                    THEN V_IMP_ATTACHMENT_CLASS_ID
                                 ELSE V_FINAL_HTML_CLASS_ID
                              END
                             ),
                             NVL (PI_R3_HTML_FILENAME,
                                  PI_SAFETYREPORTID || '.PDF'
                                 ),
                             V_E2BR3_TYPE,
                             PI_REPORT_ID,
                             V_STATUS
                            );
      END IF;

      IF V_STATUS = 0
      THEN
         RAISE_APPLICATION_ERROR ('-20001', V_MESSAGE);
      END IF;
   END P_UPDATE_R3_TO_SAFETY;

/******************************************************************************************************
       Name            : P_SAVE_E2B_TRANSFORM_STATUS
       Type            : Procedure
       Description     : This Procedure is used to save the details of transmitted e2b reports. 
       Parameters      :  PI_AGENCY_ID                NUMBER,
                          PI_MESSAGE_NUMBER           VARCHAR2,
                          PI_SAFETY_REPORT_ID         VARCHAR2,
                          --PI_CASE_NUM                 VARCHAR2,
                          PI_FOLLOWUP                 NUMBER,
                          PI_REPORT_TYPE              VARCHAR2,
                          PI_REPORTING_DESTINATION    VARCHAR2,
                          PI_LOCAL_COMPANY_NAME       VARCHAR2,
                          PI_MEESAGE_TYPE             VARCHAR2,
                          PI_E2B_STATUS               NUMBER,
                          PI_ACK_STATUS               NUMBER,
                          PI_E2B_HTML_NAME            VARCHAR2,
                          PI_ACK_HTML_NAME            VARCHAR2,
                          PI_E2B_ERROR_MESSAGE        VARCHAR2,
                          PI_ACK_ERROR_MESSAGE        VARCHAR2,
                          PI_ACK_TRANSFORM_STATUS     NUMBER,
                          PI_ACK_TRANSFORM_ERR_MSG    VARCHAR2,
                          PI_ACK2_STATUS              NUMBER,
                          PI_ACK2_TRANSFORM_STATUS    NUMBER,
                          PI_ACK2_TRANSFORM_ERR_MSG   VARCHAR2,
                          PI_ACK2_HTML_NAME           VARCHAR2,
                          PI_E2B_FILE_NAME            VARCHAR2,
                          PI_ACK_FILE_NAME            VARCHAR2,
                          PI_DATE_TRANSMITTED           DATE,
                          PI_DATE_CREATED               DATE,
                          PI_DATE_MODIFIED              DATE                     
       Return          :  
   *****************************************************************************************************************/    
  PROCEDURE P_SAVE_E2B_TRANSFORM_STATUS (
      PI_AGENCY_ID                NUMBER,
      PI_MESSAGE_NUMBER           VARCHAR2,
      PI_SAFETY_REPORT_ID         VARCHAR2,
      --PI_CASE_NUM                 VARCHAR2,
      PI_FOLLOWUP                 NUMBER,
      PI_REPORT_TYPE              VARCHAR2,
      PI_REPORTING_DESTINATION    VARCHAR2,
      PI_LOCAL_COMPANY_NAME       VARCHAR2,
      PI_MEESAGE_TYPE             VARCHAR2,
      PI_E2B_STATUS               NUMBER,
      PI_ACK_STATUS               NUMBER,
      PI_E2B_HTML_NAME            VARCHAR2,
      PI_ACK_HTML_NAME            VARCHAR2,
      PI_E2B_ERROR_MESSAGE        VARCHAR2,
      PI_ACK_ERROR_MESSAGE        VARCHAR2,
      PI_ACK_TRANSFORM_STATUS     NUMBER,
      PI_ACK_TRANSFORM_ERR_MSG    VARCHAR2,
      PI_ACK2_STATUS              NUMBER,
      PI_ACK2_TRANSFORM_STATUS    NUMBER,
      PI_ACK2_TRANSFORM_ERR_MSG   VARCHAR2,
      PI_ACK2_HTML_NAME           VARCHAR2,
      PI_E2B_FILE_NAME            VARCHAR2,
      PI_ACK_FILE_NAME            VARCHAR2,
      PI_DATE_TRANSMITTED           DATE,
      PI_DATE_CREATED               DATE,
      PI_DATE_MODIFIED              DATE    
   )
   IS
      V_E2B_FILE_NAME   VARCHAR2 (4000) := PI_E2B_FILE_NAME;
   BEGIN
--      IF PI_ACK_FILE_NAME IS NOT NULL
--      THEN
--         SELECT SR.FILENAME
--           INTO V_E2B_FILE_NAME
--           FROM ACKNOWLEDGMENT ACK, SAFETYREPORT SR
--          WHERE ACK.MSG_ID = SR.MSG_ID
--            AND ACK.FILENAME = PI_ACK_FILE_NAME
--            AND SR.SAFETYREPORTID = PI_SAFETY_REPORT_ID;
--      END IF;
     --merge
      MERGE INTO E2B_TRANSFORM_STATUS TGT
         USING (SELECT PI_MESSAGE_NUMBER MESSAGE_NUMBER,
                       PI_SAFETY_REPORT_ID SAFETY_REPORT_ID
                  FROM DUAL) SRC
         ON (    TGT.MESSAGE_NUMBER = SRC.MESSAGE_NUMBER
             AND TGT.SAFETY_REPORT_ID = SRC.SAFETY_REPORT_ID)
         WHEN MATCHED THEN
            UPDATE
               SET --DATE_TRANSMITTED = SYSDATE,
                   E2B_STATUS =
                      (CASE
                          WHEN PI_E2B_STATUS IS NOT NULL
                             THEN PI_E2B_STATUS
                          ELSE E2B_STATUS
                       END
                      ),
                   ACK_STATUS =
                      (CASE
                          WHEN PI_ACK_STATUS IS NOT NULL
                             THEN PI_ACK_STATUS
                          ELSE ACK_STATUS
                       END
                      ),
                   E2B_HTML_NAME =
                      (CASE
                          WHEN PI_E2B_HTML_NAME IS NOT NULL
                             THEN PI_E2B_HTML_NAME
                          ELSE E2B_HTML_NAME
                       END
                      ),
                   ACK_HTML_NAME =
                      (CASE
                          WHEN PI_ACK_HTML_NAME IS NOT NULL
                             THEN PI_ACK_HTML_NAME
                          ELSE ACK_HTML_NAME
                       END
                      ),
                   E2B_ERROR_MESSAGE =
                      (CASE
                          WHEN PI_E2B_ERROR_MESSAGE IS NOT NULL
                             THEN PI_E2B_ERROR_MESSAGE
                          ELSE E2B_ERROR_MESSAGE
                       END
                      ),
                   ACK_ERROR_MESSAGE =
                      (CASE
                          WHEN PI_ACK_ERROR_MESSAGE IS NOT NULL
                             THEN PI_ACK_ERROR_MESSAGE
                          ELSE ACK_ERROR_MESSAGE
                       END
                      ),
                   ACK_TRANSFORM_ERR_MSG =
                      (CASE
                          WHEN PI_ACK_TRANSFORM_ERR_MSG IS NOT NULL
                             THEN PI_ACK_TRANSFORM_ERR_MSG
                          ELSE ACK_TRANSFORM_ERR_MSG
                       END
                      ),
                   ACK_TRANSFORM_STATUS =
                      (CASE
                          WHEN PI_ACK_TRANSFORM_STATUS IS NOT NULL
                             THEN PI_ACK_TRANSFORM_STATUS
                          ELSE ACK_TRANSFORM_STATUS
                       END
                      ),
                   ACK2_TRANSFORM_STATUS =
                      (CASE
                          WHEN PI_ACK2_TRANSFORM_STATUS IS NOT NULL
                             THEN PI_ACK2_TRANSFORM_STATUS
                          ELSE ACK2_TRANSFORM_STATUS
                       END
                      ),
                   ACK2_STATUS =
                      (CASE
                          WHEN PI_ACK2_STATUS IS NOT NULL
                             THEN PI_ACK2_STATUS
                          ELSE ACK2_STATUS
                       END
                      ),
                   ACK2_TRANSFORM_ERR_MSG =
                      (CASE
                          WHEN PI_ACK2_TRANSFORM_ERR_MSG IS NOT NULL
                             THEN PI_ACK2_TRANSFORM_ERR_MSG
                          ELSE ACK2_TRANSFORM_ERR_MSG
                      END
                      ),
                   ACK2_HTML_NAME =
                      (CASE
                          WHEN PI_ACK2_HTML_NAME IS NOT NULL
                             THEN PI_ACK2_HTML_NAME
                          ELSE ACK2_HTML_NAME
                       END
                      ),
                   E2B_FILE_NAME =
                      (CASE
                          WHEN V_E2B_FILE_NAME IS NOT NULL
                             THEN V_E2B_FILE_NAME
                          ELSE E2B_FILE_NAME
                       END
                      ),
                   ACK_E2B_FILE_NAME =
                      (CASE
                          WHEN PI_ACK_FILE_NAME IS NOT NULL
                             THEN PI_ACK_FILE_NAME
                          ELSE ACK_E2B_FILE_NAME
                       END
                      ),
                   DATE_MODIFIED = CASE WHEN PI_DATE_MODIFIED IS NOT NULL THEN PI_DATE_MODIFIED ELSE DATE_MODIFIED END,
                   AGENCY_ID = PI_AGENCY_ID
         WHEN NOT MATCHED THEN
            INSERT (TRANSFORM_STATUS_ID, MESSAGE_NUMBER, SAFETY_REPORT_ID,
                    FOLLOWUP, REPORT_TYPE, DATE_TRANSMITTED,
                    REPORTING_DESTINATION, LOCAL_COMPANY_NAME, MESSAGE_TYPE,
                    E2B_STATUS, ACK_STATUS, E2B_HTML_NAME, ACK_HTML_NAME,
                    E2B_ERROR_MESSAGE, DATE_CREATED, DATE_MODIFIED,
                    ACK_ERROR_MESSAGE, ACK_TRANSFORM_STATUS,
                    ACK_TRANSFORM_ERR_MSG, ACK2_STATUS, ACK2_TRANSFORM_STATUS,
                    ACK2_TRANSFORM_ERR_MSG, ACK2_HTML_NAME, E2B_FILE_NAME,
                    ACK_E2B_FILE_NAME,AGENCY_ID)
            VALUES (TRANSFORM_STATUS_ID_SEQ.NEXTVAL, PI_MESSAGE_NUMBER,
                    PI_SAFETY_REPORT_ID, PI_FOLLOWUP, PI_REPORT_TYPE, 
                    CASE WHEN PI_DATE_TRANSMITTED IS NOT NULL 
                    THEN PI_DATE_TRANSMITTED END,
                    PI_REPORTING_DESTINATION, PI_LOCAL_COMPANY_NAME,
                    PI_MEESAGE_TYPE, PI_E2B_STATUS, PI_ACK_STATUS,
                    PI_E2B_HTML_NAME, PI_ACK_HTML_NAME, PI_E2B_ERROR_MESSAGE,
                    CASE WHEN PI_DATE_CREATED IS NOT NULL 
                    THEN PI_DATE_CREATED END, CASE WHEN PI_DATE_MODIFIED IS NOT NULL 
                    THEN PI_DATE_MODIFIED END, PI_ACK_ERROR_MESSAGE,
                    PI_ACK_TRANSFORM_STATUS, PI_ACK_TRANSFORM_ERR_MSG,
                    PI_ACK2_STATUS, PI_ACK2_TRANSFORM_STATUS,
                    PI_ACK2_TRANSFORM_ERR_MSG, PI_ACK2_HTML_NAME,
                    V_E2B_FILE_NAME, PI_ACK_FILE_NAME,PI_AGENCY_ID);
   END P_SAVE_E2B_TRANSFORM_STATUS;

/******************************************************************************************************
       Name            : P_SAVE_E2B_TRANSFORM_STATUS
       Type            : Procedure
       Description     : This Procedure is used to get the detailed status of transmitted e2b r2 and r3 report. 
       Parameters      :  PI_CASE_NUM              IN       VARCHAR2,
                          PI_MESSAGE_TYPE          IN       VARCHAR2,
                          PI_DATE_FROM             IN       DATE,
                          PI_DATE_TO               IN       DATE,
                          PI_ACCESS_TYPE           IN       VARCHAR2 DEFAULT 'I',
                          PI_USER_ID               IN       NUMBER,
                                      
       Return          :  PO_RC_TRANSFORM_STATUS   OUT      SYS_REFCURSOR        
   *****************************************************************************************************************/    
  PROCEDURE P_GET_E2B_TRANSFORM_STATUS (
      PI_CASE_NUM              IN       VARCHAR2,
      PI_MESSAGE_TYPE          IN       VARCHAR2,
      PI_DATE_FROM             IN       DATE,
      PI_DATE_TO               IN       DATE,
      PI_ACCESS_TYPE           IN       VARCHAR2 DEFAULT 'I',
      PI_USER_ID               IN       NUMBER,
      PO_RC_TRANSFORM_STATUS   OUT      SYS_REFCURSOR
   )
   IS
      V_SQL_QRY       VARCHAR2 (20000);
      V_SQL_SELECT    VARCHAR2 (10000);
      V_SQL_FROM      VARCHAR2 (10000)
         := (CASE
                WHEN PI_ACCESS_TYPE IN ('I', 'G')
                   THEN ' FROM E2B_TRANSFORM_STATUS E,
                             MESSAGES MSG,
                             SAFETYREPORT SR,
                             SYN_CASE_MASTER CM,
                             E2B_R3_CFG_AGENCY ERCA '
                ELSE 'FROM E2B_TRANSFORM_STATUS E,
                           (SELECT SR.REPORT_ID, MSG.MESSAGEHEADER.MESSAGENUMB MESSAGENUMB, SR.SAFETYREPORTID,
                                   SR.MSG_ID, CM.CASE_NUM, SR.RECEIVER_AGENCY
                              FROM MESSAGES MSG, SAFETYREPORT SR, SYN_CASE_MASTER CM
                             WHERE SR.MSG_ID = MSG.MSG_ID AND SR.CASE_XREF = CM.CASE_ID) CM, E2B_R3_CFG_AGENCY ERCA
                     WHERE E.E2B_STATUS IS NOT NULL AND CM.SAFETYREPORTID(+) = E.SAFETY_REPORT_ID AND CM.MESSAGENUMB(+) =
                                                                                  E.MESSAGE_NUMBER AND E.AGENCY_ID = ERCA.AGENCY_ID(+)
                       AND TRUNC (E.DATE_TRANSMITTED) BETWEEN :1 AND :2 '
             END
            );
      V_SQL_WHERE     VARCHAR2 (10000);
      V_SQL_ORDERBY   VARCHAR2 (10000);
   BEGIN
      V_SQL_SELECT    :=
         'SELECT E.MESSAGE_NUMBER, E.SAFETY_REPORT_ID,
                   NVL (CM.CASE_NUM, E.SAFETY_REPORT_ID) CASE_NUM, E.FOLLOWUP,
                   E.REPORT_TYPE, E.DATE_CREATED, E.DATE_TRANSMITTED,
                   RECEIVER_AGENCY REPORTING_DESTINATION, E.LOCAL_COMPANY_NAME,
                   E.MESSAGE_TYPE, E.E2B_STATUS, E.ACK_STATUS, E.E2B_HTML_NAME,
                   E.ACK_HTML_NAME, E.E2B_ERROR_MESSAGE, E.DATE_MODIFIED,
                   E.ACK_ERROR_MESSAGE, E.ACK_TRANSFORM_STATUS, E.ACK_TRANSFORM_ERR_MSG,
                   E.ACK2_STATUS, E.ACK2_TRANSFORM_STATUS, E.ACK2_TRANSFORM_ERR_MSG,
                   ACK2_HTML_NAME, REPORT_ID ESM_REPORT_ID, E.ACK_E2B_FILE_NAME,
                   E.E2B_FILE_NAME  ';
      V_SQL_FROM      :=
            V_SQL_FROM
         || (CASE
                WHEN PI_ACCESS_TYPE IN ('I')
                   THEN ', CMN_REG_REPORTS CRR, E2B_CFG_USERS ECU '
                WHEN PI_ACCESS_TYPE IN ('G')
                   THEN ', CMN_REG_REPORTS CRR, SYN_CFG_USER_GROUPS SCUG, E2B_CFG_USERS ECU '
                ELSE NULL
             END
            );
      V_SQL_WHERE     :=
            (CASE
                WHEN PI_ACCESS_TYPE IN ('I')
                   THEN    ' WHERE E.E2B_STATUS IS NOT NULL
                                      AND SR.SAFETYREPORTID = E.SAFETY_REPORT_ID
                                      AND MSG.MESSAGEHEADER.MESSAGENUMB = E.MESSAGE_NUMBER
                                      AND SR.MSG_ID = MSG.MSG_ID
                                      AND SR.CASE_XREF = CM.CASE_ID
                                      AND SR.REPORT_ID = CRR.ESM_REPORT_ID
                                      AND CRR.OWNER_ID = ECU.SAFETY_USER_ID
                                      AND E.AGENCY_ID = ERCA.AGENCY_ID(+)
                                      AND TRUNC (E.DATE_TRANSMITTED) BETWEEN :1 AND :2
                                      AND ECU.USER_ID = '
                        || PI_USER_ID
                WHEN PI_ACCESS_TYPE IN ('G')
                   THEN    ' WHERE E.E2B_STATUS IS NOT NULL
                                      AND SR.SAFETYREPORTID = E.SAFETY_REPORT_ID
                                      AND MSG.MESSAGEHEADER.MESSAGENUMB = E.MESSAGE_NUMBER
                                      AND SR.MSG_ID = MSG.MSG_ID
                                      AND SR.CASE_XREF = CM.CASE_ID
                                      AND SR.REPORT_ID = CRR.ESM_REPORT_ID
                                      AND SCUG.USER_ID = ECU.SAFETY_USER_ID
                                      AND E.AGENCY_ID = ERCA.AGENCY_ID(+)
                                      AND CRR.GROUP_ID = SCUG.GROUP_ID
                                      AND SCUG.DELETED IS NULL
                                      AND TRUNC (E.DATE_TRANSMITTED) BETWEEN :1 AND :2
                                      AND ECU.USER_ID = '
                        || PI_USER_ID
                ELSE NULL
             END
            )
         || (CASE
                WHEN PI_CASE_NUM IS NOT NULL
                   THEN    ' AND CM.CASE_NUM =
                                '''
                        || PI_CASE_NUM
                        || ''' '
             END
            )
         || (CASE
                WHEN PI_MESSAGE_TYPE IS NOT NULL
                   THEN    ' AND E.MESSAGE_TYPE =
                                        '''
                        || PI_MESSAGE_TYPE
                        || ''''
             END
            );
      PKG_LOGGER.P_LOG_TRACE ('PKG_E2B_TRANSFORMER',
                              'P_GET_E2B_TRANSFORM_STATUS',
                              V_SQL_SELECT || V_SQL_FROM || V_SQL_WHERE,
                              1,
                              1,
                              'TRACE'
                             );

      OPEN PO_RC_TRANSFORM_STATUS FOR    V_SQL_SELECT
                                      || V_SQL_FROM
                                      || V_SQL_WHERE
                                      || ' ORDER BY E.DATE_TRANSMITTED DESC'
      USING TRUNC (PI_DATE_FROM), TRUNC (PI_DATE_TO);
   END P_GET_E2B_TRANSFORM_STATUS;

/******************************************************************************************************
       Name            : P_GET_E2B_AG_TRNSFRM_STATUS
       Type            : Procedure
       Description     : This Procedure is used to get the detailed status of e2b r3 report.
       Parameters      :  PI_SAFETY_REPORT_ID        IN       VARCHAR2,
                          PI_DATE_FROM               IN       DATE,
                          PI_DATE_TO                 IN       DATE,
                          PI_REPORTING_DESTINATION   IN       VARCHAR2,
                          PI_STATUS_ID               IN       NUMBER,
                          
                                      
       Return          :  PO_RC_TRANSFORM_STATUS   OUT      SYS_REFCURSOR        
   *****************************************************************************************************************/      
   PROCEDURE P_GET_E2B_AG_TRNSFRM_STATUS (
      PI_SAFETY_REPORT_ID        IN       VARCHAR2,
      PI_DATE_FROM               IN       DATE,
      PI_DATE_TO                 IN       DATE,
      PI_REPORTING_DESTINATION   IN       VARCHAR2,
      PI_STATUS_ID               IN       NUMBER,
      PO_RC_TRANSFORM_STATUS     OUT      SYS_REFCURSOR
   )
   IS
      V_SQL_QRY   VARCHAR2 (20000);
   BEGIN
      V_SQL_QRY    :=
            'SELECT TRANSFORM_STATUS_ID, E.SAFETY_REPORT_ID,
					-- E.REPORTING_DESTINATION,
                    SR.RECEIVER_AGENCY REPORTING_DESTINATION,
                    E.FOLLOWUP,
                    --TO_CHAR(E.DATE_TRANSMITTED,''DD-MON-YYYY HH:MI:SS'') DATE_TRANSMITTED,
                    E.DATE_TRANSMITTED,
                    E.E2B_STATUS,
                    e.mdn_status MDN_STATUS,
                    e.ACK_TRANSFORM_STATUS ACK3_STATUS,
                    E.ACK2_STATUS,
                    E.REPORT_TYPE,
                    SR.ESM_STATUS_TYPE_NAME
              FROM E2B_TRANSFORM_STATUS E,
                   (SELECT SR.REPORT_ID, MSG.MESSAGEHEADER.MESSAGENUMB MESSAGENUMB, SR.SAFETYREPORTID,
                           SR.MSG_ID, CM.CASE_NUM,ESTC.ESM_STATUS_TYPE_CD, ESTC.ESM_STATUS_TYPE_NAME,EI.EDI_TRANSMIT_DATE, SR.RECEIVER_AGENCY
                      FROM MESSAGES MSG, SAFETYREPORT SR, SYN_CASE_MASTER CM, ESM_STATUS_TYPE_CD ESTC,EDI_INFO EI
                     WHERE SR.MSG_ID = MSG.MSG_ID AND SR.CASE_XREF = CM.CASE_ID AND SR.STATUS = ESTC.ESM_STATUS_TYPE_CD
                     AND EI.EDI_TRACKING_ID(+) = MSG.EDI_TRACKING_ID) SR
             WHERE E.E2B_STATUS IS NOT NULL AND SR.SAFETYREPORTID(+) = E.SAFETY_REPORT_ID AND SR.MESSAGENUMB(+) =
                                                                          E.MESSAGE_NUMBER '
         || (CASE
                WHEN PI_SAFETY_REPORT_ID IS NOT NULL
                   THEN    ' AND UPPER(E.SAFETY_REPORT_ID) =
                            '''
                        || UPPER (PI_SAFETY_REPORT_ID)
                        || ''' '
             END
            )
         || (CASE
                WHEN PI_STATUS_ID IS NOT NULL
                   THEN    ' AND SR.ESM_STATUS_TYPE_CD =
                        '
                        || PI_STATUS_ID
             END
            )
         || (CASE
                WHEN PI_REPORTING_DESTINATION IS NOT NULL
                   THEN    ' AND UPPER(E.REPORTING_DESTINATION) =
                            '''
                        || UPPER (PI_REPORTING_DESTINATION)
                        || ''''
             END
            )
         || ' AND TRUNC (E.DATE_TRANSMITTED) BETWEEN :1 AND :2
         ORDER BY E.DATE_TRANSMITTED DESC';
      PKG_LOGGER.P_LOG_TRACE ('PKG_E2B_TRANSFORMER',
                              'P_GET_E2B_AG_TRNSFRM_STATUS',
                              V_SQL_QRY,
                              1,
                              1,
                              'TRACE'
                             );

      OPEN PO_RC_TRANSFORM_STATUS FOR V_SQL_QRY
      USING TRUNC (PI_DATE_FROM), TRUNC (PI_DATE_TO);
   END P_GET_E2B_AG_TRNSFRM_STATUS;

/******************************************************************************************************
       Name            : P_GET_E2B_ARGUS_STATUS
       Type            : Procedure
       Description     : This Procedure is used to get the configured status from Argus safety. 
       Parameters      :                            
                                      
       Return          :  PO_RC_TRANSFORM_STATUS   OUT      SYS_REFCURSOR        
   *****************************************************************************************************************/  
   PROCEDURE P_GET_E2B_ARGUS_STATUS (
      PO_RC_E2B_TRANSFORM_STATUS   OUT   SYS_REFCURSOR
   )
   IS
   BEGIN
      OPEN PO_RC_E2B_TRANSFORM_STATUS FOR
         SELECT   ESM_STATUS_TYPE_CD, ESM_STATUS_TYPE_NAME
             FROM ESM_STATUS_TYPE_CD
         ORDER BY ESM_STATUS_TYPE_NAME;
   END;

/******************************************************************************************************
       Name            : P_GET_MESSAGE_TYPES
       Type            : Procedure
       Description     : This Procedure is used to get the configured messages from Argus safety. 
       Parameters      :                            
                                      
       Return          :  PO_RC_MSG_TYPES OUT SYS_REFCURSOR    
   *****************************************************************************************************************/     
   PROCEDURE P_GET_MESSAGE_TYPES (PO_RC_MSG_TYPES OUT SYS_REFCURSOR)
   IS
   BEGIN
      OPEN PO_RC_MSG_TYPES FOR
         SELECT *
           FROM ESM_CFG_MESSAGE_TYPE
          WHERE DELETED IS NULL;
   END P_GET_MESSAGE_TYPES;

/******************************************************************************************************
       Name            : P_GET_FILE_NAME
       Type            : Procedure
       Description     : This Procedure is used to get the e2b file name. 
       Parameters      :  PI_REPORT_ID      IN       NUMBER,
                                
                                      
       Return          :  PO_RC_FILE_NAME   OUT      SYS_REFCURSOR
   *****************************************************************************************************************/      
   PROCEDURE P_GET_FILE_NAME (
      PI_REPORT_ID      IN       NUMBER,
      PO_RC_FILE_NAME   OUT      SYS_REFCURSOR
   )
   IS
   BEGIN
      OPEN PO_RC_FILE_NAME FOR
         SELECT E.E2B_HTML_NAME, E.ACK_HTML_NAME, E.ACK2_HTML_NAME,
                E.E2B_FILE_NAME, E.ACK_E2B_FILE_NAME
           FROM E2B_TRANSFORM_STATUS E,
                MESSAGES MSG,
                SAFETYREPORT SR,
                CMN_REG_REPORTS CRR
          WHERE SR.MSG_ID = MSG.MSG_ID(+)
            AND E.SAFETY_REPORT_ID = SR.SAFETYREPORTID
            AND CRR.REG_REPORT_ID = PI_REPORT_ID
            AND SR.REPORT_ID = CRR.ESM_REPORT_ID
            AND E.MESSAGE_NUMBER = MSG.MESSAGEHEADER.MESSAGENUMB;
   END P_GET_FILE_NAME;

/******************************************************************************************************
       Name            : P_UPDATE_ACK2_STATUS
       Type            : Procedure
       Description     : This Procedure is used to update the ack2 status and modified date.
       Parameters      :  PI_EDI_TRACKING_ID VARCHAR2,
                          PI_DATE_MODIFIED DATE                               
                                      
       Return          :  
   *****************************************************************************************************************/     
 PROCEDURE P_UPDATE_ACK2_STATUS (PI_CORE_ID VARCHAR2,PI_DATE_MODIFIED DATE)
   IS
      /*V_EDI_TRACKING_ID   VARCHAR2 (500)
         := (CASE
                WHEN INSTR (PI_EDI_TRACKING_ID, '>') = 0
                   THEN '<' || PI_EDI_TRACKING_ID || '>'
               else PI_EDI_TRACKING_ID
             END
            );*/
   BEGIN

	   
	    UPDATE E2B_TRANSFORM_STATUS E
         SET ACK2_STATUS = 1,
         DATE_MODIFIED = CASE WHEN PI_DATE_MODIFIED IS NOT NULL THEN PI_DATE_MODIFIED ELSE DATE_MODIFIED END
       WHERE EXISTS (
                SELECT 1
                   FROM MESSAGES MSG, SAFETYREPORT SR, EDI_INFO EI
                 WHERE SR.MSG_ID = MSG.MSG_ID
                   AND E.SAFETY_REPORT_ID = SR.SAFETYREPORTID
                   AND MSG.EDI_TRACKING_ID = EI.EDI_TRACKING_ID
                   AND E.MESSAGE_NUMBER = MSG.MESSAGEHEADER.MESSAGENUMB
                   AND EI.EDI_INTERNAL_ID = PI_CORE_ID );
       
   EXCEPTION
      WHEN OTHERS
      THEN
         RAISE;
   END P_UPDATE_ACK2_STATUS;

/******************************************************************************************************
       Name            : F_CUSTM_E2BR3_ATTACH
       Type            : Procedure
       Description     : This Procedure is used to attach the e2b r3 attachment in the case.
       Parameters      :  PI_CASE_ID             IN       NUMBER,
                          PI_SAFETYREPORTID      IN       VARCHAR2,
                          PI_R3_ATTACHMENT       IN       BLOB,
                          PI_NOTES               IN       VARCHAR2,
                          PI_CLASSIFICATION_ID   IN       NUMBER,
                          PI_R3_FILENAME         IN       VARCHAR2,
                          PI_R3_TYPE             IN       VARCHAR2,
                          PI_DRAFT_REPORT_ID     IN       NUMBER,
                         
                                
                                      
       Return          :   PO_STATUS              OUT      NUMBER
   *****************************************************************************************************************/     
   FUNCTION F_CUSTM_E2BR3_ATTACH (
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
      V_CHK_EXIST           NUMBER          := 0;
      V_CASE_ID             NUMBER          := PI_CASE_ID;
      V_NOTES_MAX_SORT_ID   NUMBER          := 1;
      V_NOTES               VARCHAR2 (4000);
      V_PRODUCT_NAME        VARCHAR2 (500);
   BEGIN

    pkg_rls.set_context('admin',1,'ARGUS_SAFETY');

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
         SELECT 'Product: ' || PROD_NAME
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
                       PI_R3_ATTACHMENT,
                       DBMS_LOB.GETLENGTH (PI_R3_ATTACHMENT), PI_R3_FILENAME,
                       SYSDATE, R3.CLASSIFICATION_ID,
                         PI_NOTES
                       || NVL2 (V_PRODUCT_NAME, ',' || V_PRODUCT_NAME, NULL),
                       1);

         UPDATE SAFETYREPORT
            SET PROCESSED = 1
          WHERE REPORT_ID = PI_DRAFT_REPORT_ID;
      ELSE
         BEGIN
            SELECT MAX (SORT_ID)
              INTO V_NOTES_MAX_SORT_ID
              FROM CASE_NOTES_ATTACH
             WHERE CASE_ID = V_CASE_ID;

            IF V_NOTES_MAX_SORT_ID IS NULL
            THEN
               V_NOTES_MAX_SORT_ID    := 1;
            ELSE
               V_NOTES_MAX_SORT_ID    := V_NOTES_MAX_SORT_ID + 1;
            END IF;
         EXCEPTION
            WHEN NO_DATA_FOUND
            THEN
               V_NOTES_MAX_SORT_ID    := 1;
            WHEN OTHERS
            THEN
               V_NOTES_MAX_SORT_ID    := 1;
         END;


         INSERT INTO CASE_NOTES_ATTACH
                     (CASE_ID, SEQ_NUM, BLOB_SEQ,
                      DATA,
                      BLOBSIZE,
                      SORT_ID, FILETYPE, ENTRY_DATE,
                      CLASSIFICATION,
                      NOTES,
                      ENTERPRISE_ID
                     )
              VALUES (V_CASE_ID, S_CASE_NOTES_ATTACH.NEXTVAL, 1,
                      PI_R3_ATTACHMENT,
                      DBMS_LOB.GETLENGTH (PI_R3_ATTACHMENT),
                      V_NOTES_MAX_SORT_ID, PI_R3_FILENAME, SYSDATE,
                      PI_CLASSIFICATION_ID,
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

/******************************************************************************************************
       Name            : P_GET_EMDR_ACK3_TEMPLATE
       Type            : Procedure
       Description     : This Procedure is used to get the the details of EMDR Ack details.
       Parameters      :  PI_EDI_TRACKING_ID    IN       VARCHAR2,
      
                         
                                
                                      
       Return          :   PO_RC_ACK3_TEMPLATE   OUT      SYS_REFCURSOR,
                           PO_RC_DATA_FOR_ACK    OUT      SYS_REFCURSOR
   *****************************************************************************************************************/    
  PROCEDURE P_GET_EMDR_ACK3_TEMPLATE (
      PI_CORE_ID    IN       VARCHAR2,
      PO_RC_ACK3_TEMPLATE   OUT      SYS_REFCURSOR,
      PO_RC_DATA_FOR_ACK    OUT      SYS_REFCURSOR
   )
   IS
     /* V_EDI_TRACKING_ID   VARCHAR2 (500)
         := (CASE
                WHEN INSTR (PI_EDI_TRACKING_ID, '>') = 0
                   THEN '<' || PI_EDI_TRACKING_ID || '>'
               else PI_EDI_TRACKING_ID
             END);*/
   L_MESSAGENUM number;
   BEGIN
      OPEN PO_RC_ACK3_TEMPLATE FOR
         SELECT VALUE
           FROM CFG_COMMON_PROFILE
          WHERE PROFILE_NAME = 'TRANSFORMPV_SERVICE'
            AND KEY = 'EMDR_ACK3_TEMPLATE'
            AND DELETED = 0;
      Select TRANS_MESSAGENUM.NEXTVAL into L_MESSAGENUM from dual;
--      OPEN PO_RC_DATA_FOR_ACK FOR
--         SELECT L_MESSAGENUM MESSAGENUMB,
--                MSG.MESSAGEHEADER.MESSAGERECEIVERIDENTIFIER
--                                                      MESSAGESENDERIDENTIFIER,
--                MSG.MESSAGEHEADER.MESSAGESENDERIDENTIFIER
--                                                    MESSAGERECEIVERIDENTIFIER,
--                to_char(sysdate,'YYYYMMDDHHMMSS') MESSAGEDATE,
--                MSG.MESSAGEHEADER.MESSAGENUMB ICSRMESSAGENUMB,
--                L_MESSAGENUM LOCALMESSAGENUMB,
--                MSG.MESSAGEHEADER.MESSAGESENDERIDENTIFIER
--                                                  ICSRMESSAGESENDERIDENTIFIER,
--                MSG.MESSAGEHEADER.MESSAGERECEIVERIDENTIFIER
--                                                ICSRMESSAGERECEIVERIDENTIFIER,
--                MSG.MESSAGEHEADER.MESSAGEDATE ICSRMESSAGEDATE,
--                SR.SAFETYREPORTID,
--                SR.REPORTACKNOWLEDGMENT.LOCALREPORTNUMB LOCALREPORTNUMB,
--                SR.COMPANYNUMB, SR.RECEIPTDATE,
--                SR.REPORTACKNOWLEDGMENT.REPORTACKNOWLEDGMENTCODE
--                                                     REPORTACKNOWLEDGMENTCODE
--           FROM MESSAGES MSG, SAFETYREPORT SR,fda_argus_ack2 faa
--          WHERE MSG.MSG_ID = SR.MSG_ID 
--            AND faa.MESSAGE_ID = PI_EDI_TRACKING_ID
--            AND UPPER(faa.ORIGINAL_FILENAME) = UPPER(substr(MSG.filename,instr(MSG.filename,'\',-1,1)+1));

OPEN PO_RC_DATA_FOR_ACK FOR
         
		SELECT L_MESSAGENUM MESSAGENUMB,
                MSG.MESSAGEHEADER.MESSAGERECEIVERIDENTIFIER
                                                      MESSAGESENDERIDENTIFIER,
                MSG.MESSAGEHEADER.MESSAGESENDERIDENTIFIER
                                                    MESSAGERECEIVERIDENTIFIER,
                to_char(sysdate,'YYYYMMDDHHMMSS') MESSAGEDATE,
                MSG.MESSAGEHEADER.MESSAGENUMB ICSRMESSAGENUMB,
                L_MESSAGENUM LOCALMESSAGENUMB,
                MSG.MESSAGEHEADER.MESSAGESENDERIDENTIFIER
                                                  ICSRMESSAGESENDERIDENTIFIER,
                MSG.MESSAGEHEADER.MESSAGERECEIVERIDENTIFIER
                                                ICSRMESSAGERECEIVERIDENTIFIER,
                MSG.MESSAGEHEADER.MESSAGEDATE ICSRMESSAGEDATE,
                SR.SAFETYREPORTID,
                SR.REPORTACKNOWLEDGMENT.LOCALREPORTNUMB LOCALREPORTNUMB,
                SR.COMPANYNUMB, SR.RECEIPTDATE,
                SR.REPORTACKNOWLEDGMENT.REPORTACKNOWLEDGMENTCODE
                                                     REPORTACKNOWLEDGMENTCODE
           FROM MESSAGES MSG, SAFETYREPORT SR,EDI_INFO EI
          WHERE MSG.MSG_ID = SR.MSG_ID 
            AND EI.EDI_INTERNAL_ID = PI_CORE_ID
            AND MSG.EDI_TRACKING_ID = EI.EDI_TRACKING_ID;	
            
   EXCEPTION
      WHEN NO_DATA_FOUND
      THEN
         NULL;
   END P_GET_EMDR_ACK3_TEMPLATE;

/******************************************************************************************************
       Name            : P_SAVE_E2B_IMPORT_QUEUE
       Type            : Procedure
       Description     : This Procedure is used to save the e2b r3 attachment details
       Parameters      :  PI_Msg_Type_ID            IN       NUMBER,
                          PI_SafetyReportID         IN       VARCHAR2,
                          PI_Import_R3XMLFileName   IN       VARCHAR2,
                          PI_File_Content_R3xml     IN       CLOB,
                          PI_Import_R2R3PDFFileName IN       VARCHAR2,
                          PI_File_Content_R2R3PDF   IN       BLOB,
                          PI_AGENCY_ID              IN       NUMBER
  
       Return          :   
   *****************************************************************************************************************/      
     PROCEDURE P_SAVE_E2B_IMPORT_QUEUE (
      PI_Msg_Type_ID            IN       NUMBER,
      PI_SafetyReportID         IN       VARCHAR2,
      PI_Import_R3XMLFileName   IN       VARCHAR2,
      PI_File_Content_R3xml     IN       CLOB,
      PI_Import_R2R3PDFFileName IN       VARCHAR2,
      PI_File_Content_R2R3PDF   IN       BLOB,
      PI_AGENCY_ID              IN       NUMBER
   )
   IS
   V_IMPORT_XML_KEY            NUMBER;
   V_IMPORT_PDF_KEY            NUMBER;
   V_R3_XML_BLOB           BLOB            := NULL;
   BEGIN

     IF DBMS_LOB.GETLENGTH (PI_File_Content_R3xml) > 0
         THEN
            V_R3_XML_BLOB    :=
                            PKG_COMMON_UTILITIES.F_CLOB_TO_BLOB_T (PI_File_Content_R3xml);
     END IF;


        SELECT VALUE INTO V_IMPORT_XML_KEY FROM CFG_COMMON_PROFILE WHERE KEY = 'IMPORT_R3XML';

        SELECT VALUE INTO V_IMPORT_PDF_KEY FROM CFG_COMMON_PROFILE WHERE KEY = 'IMPORT_R2R3PDF';

        IF ( V_IMPORT_PDF_KEY = 1 OR V_IMPORT_PDF_KEY = 1 ) THEN

            INSERT INTO E2B_IMPORT_QUEUE
            (
            ID,
            Msg_Type,
            Msg_Type_ID,
            SafetyReportID,
            Import_R3XMLFileName,
            File_Content_R3xml,
            Import_R2R3PDFFileName ,
            File_Content_R2R3PDF ,
            AGENCY_ID ,
            Status,
            Status_Msg,
            Date_Insert,
            Date_Processed,
            No_of_Tries,
            Last_Tried_Time
            )
            VALUES
            (
            QUEUE_ID_SEQ.NEXTVAL,
            'IMPORT',
            PI_Msg_Type_ID,
            PI_SafetyReportID,
            CASE WHEN V_IMPORT_XML_KEY = 1 THEN
            PI_Import_R3XMLFileName
            ELSE
            NULL
            END,
            CASE WHEN V_IMPORT_XML_KEY = 1 THEN
            V_R3_XML_BLOB
            ELSE
            NULL
            END,
            CASE WHEN V_IMPORT_PDF_KEY = 1 THEN
            PI_Import_R2R3PDFFileName
            ELSE
            NULL
            END,
            CASE WHEN V_IMPORT_PDF_KEY = 1 THEN
            PI_File_Content_R2R3PDF
            ELSE
            NULL
            END,
            PI_AGENCY_ID,
            0,
            'OPEN',
            SYSDATE,
            NULL,
            NULL,
            NULL
            );
/*
        ELSE
        SELECT VALUE INTO V_IMPORT_KEY FROM CFG_COMMON_PROFILE WHERE KEY = 'IMPORT_R2R3PDF';

            IF V_IMPORT_KEY = 1 THEN

                INSERT INTO E2B_IMPORT_QUEUE
                (
                ID,
                Msg_Type,
                Msg_Type_ID,
                SafetyReportID,
                Import_R3XMLFileName,
                File_Content_R3xml,
                Import_R2R3PDFFileName ,
                File_Content_R2R3PDF ,
                AGENCY_ID ,
                Status,
                Status_Msg,
                Date_Insert,
                Date_Processed,
                No_of_Tries,
                Last_Tried_Time
                )
                VALUES
                (
                QUEUE_ID_SEQ.NEXTVAL,
                'IMPORT',
                PI_Msg_Type_ID,
                PI_SafetyReportID,
                NULL,PI_Import_R3XMLFileName ,
                NULL, V_R3_XML_BLOB ,
                PI_Import_R2R3PDFFileName,
                PI_File_Content_R2R3PDF ,
                PI_AGENCY_ID,
                0,
                'OPEN',
                SYSDATE,
                NULL,
                NULL,
                NULL
                );
*/
            END IF;

    EXCEPTION
      WHEN OTHERS
      THEN
         RAISE;
   END;

 /******************************************************************************************************
       Name            : P_E2B_IMPORT_FILE
       Type            : Procedure
       Description     : This Procedure is used to attach the e2b r3 attachment from e2b_import_queue table.
       Parameters      :  
  
       Return          :   
   *****************************************************************************************************************/  
    PROCEDURE P_E2B_IMPORT_FILE
    IS
    V_CASE_ID NUMBER;
    V_STATUS    NUMBER := 0;
    V_MESSAGE   VARCHAR2(3000);
    V_IMP_ATTACHMENT_CLASS_ID NUMBER;
    V_NOTES     VARCHAR2(3000);
    BEGIN

       FOR C2 IN ( SELECT * FROM E2B_IMPORT_QUEUE WHERE STATUS = 0 AND MSG_TYPE_ID = 1 )
        LOOP

            V_CASE_ID := NULL;

         BEGIN
            SELECT CASE_XREF
              INTO V_CASE_ID
              FROM (SELECT   CASE_XREF
                        FROM &ESM_OWNER_USER..SAFETYREPORT
                       WHERE SAFETYREPORTID = C2.SAFETYREPORTID
                    ORDER BY REPORT_ID DESC)
             WHERE ROWNUM = 1;
         EXCEPTION
            WHEN NO_DATA_FOUND
            THEN

               V_STATUS        := 0;
               V_MESSAGE       :=  'No Report Found agaist this SafetyReportID!';

                 UPDATE E2B_IMPORT_QUEUE
                 SET STATUS = V_STATUS,
                 STATUS_MSG = V_MESSAGE,
                 DATE_PROCESSED = SYSDATE,
                 NO_OF_TRIES = NVL(NO_OF_TRIES,0) +1
             --    LAST_TRIED_TIME = SYSDATE
                 WHERE ID = C2.ID;

         END;


            IF V_CASE_ID IS NOT NULL
            THEN
            SELECT IMP_ATTACHMENT_CLASS_ID
            INTO V_IMP_ATTACHMENT_CLASS_ID
            FROM E2B_R3_CFG_AGENCY
            WHERE AGENCY_ID = C2.AGENCY_ID;



               IF C2.FILE_CONTENT_R3XML IS NOT NULL
              THEN

              V_NOTES := SUBSTR(C2.IMPORT_R3XMLFILENAME,INSTR(C2.IMPORT_R3XMLFILENAME,'\',-1)+1)||' attached on '|| sysdate ||' for R3 import.';

                 V_MESSAGE    :=
                    F_CUSTM_E2BR3_ATTACH
                                     (V_CASE_ID,
                                      C2.SAFETYREPORTID,
                                      C2.FILE_CONTENT_R3XML,
                                      V_NOTES,
                                      V_IMP_ATTACHMENT_CLASS_ID,
                                      NVL (C2.IMPORT_R3XMLFILENAME,
                                           C2.SAFETYREPORTID || '.XML'),
                                      NULL,--V_E2BR3_TYPE,
                                      NULL,--PI_REPORT_ID,
                                      V_STATUS
                                     );
              END IF;

              IF C2.FILE_CONTENT_R2R3PDF IS NOT NULL
              THEN
              V_NOTES := SUBSTR(C2.IMPORT_R2R3PDFFILENAME,INSTR(C2.IMPORT_R2R3PDFFILENAME,'\',-1)+1)||' attached on '|| sysdate ||' for R3 import.';

                 V_MESSAGE    :=
                    F_CUSTM_E2BR3_ATTACH
                                    (V_CASE_ID,
                                     C2.SAFETYREPORTID,
                                     C2.FILE_CONTENT_R2R3PDF,                     --V_R3_HTML_BLOB,
                                     V_NOTES,
                                     V_IMP_ATTACHMENT_CLASS_ID,
                                     NVL (C2.IMPORT_R2R3PDFFILENAME,
                                          C2.SAFETYREPORTID || '.PDF'
                                         ),
                                     NULL,--V_E2BR3_TYPE,
                                     NULL,--PI_REPORT_ID,
                                     V_STATUS
                                    );
              END IF;

                 UPDATE E2B_IMPORT_QUEUE
                 SET STATUS = V_STATUS,
                 STATUS_MSG = V_MESSAGE,
                 DATE_PROCESSED = SYSDATE,
                 NO_OF_TRIES = NVL(NO_OF_TRIES,0) +1
                 --LAST_TRIED_TIME = SYSDATE
                 WHERE ID = C2.ID;


            END IF;
        END LOOP;

    EXCEPTION WHEN OTHERS THEN

    RAISE;
    V_MESSAGE := SQLERRM;

    DBMS_OUTPUT.PUT_LINE(V_MESSAGE);

    END;


--            IF V_CASE_ID IS NOT NULL
--            THEN
--            
--
--               V_NOTES := C2.FILE_NAME_ATTACH||' attached on '|| sysdate ||' for R3 import.';
--                       
--               V_MESSAGE    :=
--                    F_CUSTM_E2BR3_ATTACH
--                                     (V_CASE_ID,
--                                      C2.SAFETYREPORTID,
--                                      C2.FILE_CONTENT_ATTACH,
--                                      V_NOTES,
--                                      C2.FILE_ATTACH_CLASSIFICATION,
--                                      C2.FILE_NAME_ATTACH,
--                                      NULL,--V_E2BR3_TYPE,
--                                      NULL,--PI_REPORT_ID,
--                                      V_STATUS
--                                     );
--                                     
--               END IF;
                

                


            --END IF;
        END LOOP;
        
        COMMIT;
        
    EXCEPTION WHEN OTHERS THEN
    ROLLBACK;
    RAISE;
    V_MESSAGE := SQLERRM;
    END;

   PROCEDURE P_E2B_ACK_FILE_STATUS
    (P_CORE_ID IN VARCHAR2,
    PO_STATUS  OUT   SYS_REFCURSOR
    )
    IS
    V_EDI_CNT NUMBER;

   /* V_CORE_ID   VARCHAR2 (500)
         := (CASE
                WHEN INSTR (P_CORE_ID, '>') = 0
                   THEN '<' || P_CORE_ID || '>'
               else P_CORE_ID
             END
            ); */
    BEGIN

    
 SELECT COUNT(1) INTO V_EDI_CNT
    FROM EDI_INFO EI
    WHERE EI.EDI_INTERNAL_ID = P_CORE_ID;

      IF V_EDI_CNT = 0 THEN
      OPEN PO_STATUS FOR SELECT 0 STATUS FROM DUAL;
      ELSE
       OPEN PO_STATUS FOR SELECT 1 STATUS FROM DUAL;
      END IF;

    END;
	
END PKG_E2B_TRANSFORMER;
/