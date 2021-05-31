CREATE OR REPLACE PACKAGE &TRANSFORMPV_USER..PKG_E2B_TRANSFORMER
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
AS
   PROCEDURE P_GET_E2B_DECODE (
      PI_AGENCY_ID         IN       NUMBER,
      PO_RC_ELEMENT_LIST   OUT      SYS_REFCURSOR,
      PO_RC_CODE_DECODE    OUT      SYS_REFCURSOR
   );

   PROCEDURE P_GET_UNPROCESSED_RECORDS (
      PO_RC_UNPROCESSED_RECORDS   OUT   SYS_REFCURSOR
   );

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
   );

   PROCEDURE P_SAVE_E2B_TRANSFORM_STATUS (
      PI_AGENCY_ID                NUMBER,
      PI_MESSAGE_NUMBER           VARCHAR2,
      PI_SAFETY_REPORT_ID         VARCHAR2,
      --PI_CASE_NUM                VARCHAR2,
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
   );

   PROCEDURE P_GET_E2B_TRANSFORM_STATUS (
      PI_CASE_NUM              IN       VARCHAR2,
      PI_MESSAGE_TYPE          IN       VARCHAR2,
      PI_DATE_FROM             IN       DATE,
      PI_DATE_TO               IN       DATE,
      PI_ACCESS_TYPE           IN       VARCHAR2 DEFAULT 'I',
      PI_USER_ID               IN       NUMBER,
      PO_RC_TRANSFORM_STATUS   OUT      SYS_REFCURSOR
   );


   PROCEDURE P_GET_E2B_AG_TRNSFRM_STATUS (
      PI_SAFETY_REPORT_ID        IN       VARCHAR2,
      PI_DATE_FROM               IN       DATE,
      PI_DATE_TO                 IN       DATE,
      PI_REPORTING_DESTINATION   IN       VARCHAR2,
      PI_STATUS_ID               IN       NUMBER,
      PO_RC_TRANSFORM_STATUS     OUT      SYS_REFCURSOR
   );

   PROCEDURE P_GET_E2B_ARGUS_STATUS (
      PO_RC_E2B_TRANSFORM_STATUS   OUT   SYS_REFCURSOR
   );

   PROCEDURE P_GET_MESSAGE_TYPES (PO_RC_MSG_TYPES OUT SYS_REFCURSOR);

   PROCEDURE P_GET_FILE_NAME (
      PI_REPORT_ID      IN       NUMBER,
      PO_RC_FILE_NAME   OUT      SYS_REFCURSOR
   );

   PROCEDURE P_UPDATE_ACK2_STATUS (PI_CORE_ID VARCHAR2,PI_DATE_MODIFIED DATE);
   
   

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
      RETURN VARCHAR2;

   PROCEDURE P_GET_EMDR_ACK3_TEMPLATE (
      PI_CORE_ID    IN       VARCHAR2,
      PO_RC_ACK3_TEMPLATE   OUT      SYS_REFCURSOR,
      PO_RC_DATA_FOR_ACK    OUT      SYS_REFCURSOR
   );

PROCEDURE P_SAVE_E2B_IMPORT_QUEUE (
      PI_Msg_Type_ID            IN       NUMBER,
      PI_SafetyReportID         IN       VARCHAR2,
      PI_Import_R3XMLFileName   IN       VARCHAR2,
      PI_File_Content_R3xml     IN       CLOB,
      PI_Import_R2R3PDFFileName IN       VARCHAR2,
      PI_File_Content_R2R3PDF   IN       BLOB,
      PI_AGENCY_ID              IN       NUMBER
   );

--PROCEDURE P_JOB_E2B_IMPORT;

PROCEDURE P_E2B_IMPORT_FILE;

PROCEDURE P_E2B_ACK_FILE_STATUS
    (P_CORE_ID  IN VARCHAR2,
     PO_STATUS  OUT   SYS_REFCURSOR
    );

END PKG_E2B_TRANSFORMER;
/
