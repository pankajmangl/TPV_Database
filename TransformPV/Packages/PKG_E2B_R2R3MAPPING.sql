CREATE OR REPLACE PACKAGE &TRANSFORMPV_USER..PKG_E2B_R2R3MAPPING
IS
   TYPE T_STRING_TAB IS TABLE OF VARCHAR2 (4000)
      INDEX BY PLS_INTEGER;

   PROCEDURE P_DELETE_R2R3_MAPPING (
      PI_PROFILE_ID        IN   NUMBER,
      PI_MAPPING_ID_LIST   IN   T_STRING_TAB,
      PI_USER_ID           IN   NUMBER
   );

   PROCEDURE P_GET_AGENCY_LIST (PO_RC_AGENCY_LIST OUT SYS_REFCURSOR);

   PROCEDURE P_GET_PROFILE_LIST (PO_RC_PROFILE_LIST OUT SYS_REFCURSOR);

   PROCEDURE P_GET_R2R3_MAPPING_DETAILS (
      PI_PROFILE_ID        IN       NUMBER,
      PO_RC_R2R3_MAPPING   OUT      SYS_REFCURSOR
   );

   PROCEDURE P_SAVE_R2R3_MAPPING (
      PI_R2_ELEMENT_NUM      IN   T_STRING_TAB,
      PI_R2_ELEMENT          IN   T_STRING_TAB,
      PI_R2_XPATH            IN   T_STRING_TAB,
      PI_R3_ELEMENT_NUM      IN   T_STRING_TAB,
      PI_R3_ELEMENT          IN   T_STRING_TAB,
      PI_R3_XPATH            IN   T_STRING_TAB,
      PI_REPEAT_INFO         IN   T_STRING_TAB,
      PI_PROFILE_ID          IN   NUMBER,
      PI_SORT_ID             IN   T_STRING_TAB,
      PI_SEQ_NUM             IN   T_STRING_TAB,
      PI_USER_ID             IN   NUMBER,
      PI_PROFILE_NAME        IN   VARCHAR2,
      PI_IS_ACK              IN   NUMBER,
      PI_SOURCE_PROFILE_ID   IN   NUMBER,
      PI_HEADER              IN   T_STRING_TAB
   );

   PROCEDURE P_SAVE_SYSTEM_CONFIG (
      PI_APPLICATION           IN   VARCHAR2,
      PI_BFC_IN_FOLDER         IN   VARCHAR2,
      PI_BFC_OUT_FOLDER        IN   VARCHAR2,
      PI_BFC_BKP_FOLDER        IN   VARCHAR2,
      PI_ERROR_FOLDER          IN   VARCHAR2,
      PI_LOG_FOLDER            IN   VARCHAR2,
      PI_ACK_IDENTIFIER        IN   VARCHAR2,
      PI_USER_ID               IN   NUMBER,
      PI_HTML_FOLDER           IN   VARCHAR2,
      PI_PDF_TEMPLATE_FOLDER   IN   VARCHAR2,
      PI_BINARY_FOLDER         IN   VARCHAR2
   );

   PROCEDURE P_SAVE_AGENCY_CONFIG (
      PI_AGENCY_ID                 IN   VARCHAR2,
      PI_UPGRADE_XSL               IN   VARCHAR2,
      PI_DOWNGRADE_XSL             IN   VARCHAR2,
      PI_ACK_UPGRADE_XSL           IN   VARCHAR2,
      PI_ACK_DOWNGRADE_XSL         IN   VARCHAR2,
      PI_UPGRADE_IN_FOLDER         IN   VARCHAR2,
      PI_UPGRADE_OUT_FOLDER        IN   VARCHAR2,
      PI_DOWNGRADE_IN_FOLDER       IN   VARCHAR2,
      PI_DOWNGRADE_OUT_FOLDER      IN   VARCHAR2,
      PI_USER_ID                   IN   NUMBER,
      PI_FINAL_E2B_CLASS_ID        IN   NUMBER,
      PI_FINAL_HTML_CLASS_ID       IN   NUMBER,
      PI_E2B_PROFILE_ID            IN   NUMBER,
      PI_ACK_PROFILE_ID            IN   NUMBER,
      PI_XSD_FILE                  IN   VARCHAR2,
      PI_AGENCY_NAME               IN   VARCHAR2,
      PI_ENABLED                   IN   NUMBER,
      PI_ALLOW_MULTI_ACK           IN   NUMBER,
      PI_EXP_ATTACHMENT_PATH       IN   VARCHAR2,
      PI_IMP_ATTACHMENT_PATH       IN   VARCHAR2,
      PI_IMP_ATTACHMENT_CLASS_ID   IN   NUMBER,
      PI_FINAL_FILE_FORMAT         IN   VARCHAR2
   );

   PROCEDURE P_GET_R2_FACTORY_DATA (
      PI_PROFILE_ID          IN       NUMBER,
      PI_ELEMENT_NUMBER      IN       VARCHAR2,
      PO_RC_ELEMENT_VALUES   OUT      SYS_REFCURSOR
   );

   PROCEDURE P_GET_R3_FACTORY_DATA (PO_RC_ELEMENT_VALUES OUT SYS_REFCURSOR);

   PROCEDURE P_SAVE_NULL_FLAVOUR_MAPPING (
      PI_PROFILE_ID    NUMBER,
      PI_R2_DATA_IDS   PKG_COMMON_UTILITIES.T_STRING_TAB,
      PI_R3_DATA_IDS   PKG_COMMON_UTILITIES.T_STRING_TAB,
      PI_USER_ID       NUMBER
   );

   PROCEDURE P_GET_NULL_FLAVOUR_DATA (
      PI_PROFILE_ID             IN       NUMBER,
      PI_ELEMENT_NUMBER         IN       VARCHAR2,
      PO_RC_ELEMENT_VALUES_R2   OUT      SYS_REFCURSOR,
      PO_RC_ELEMENT_VALUES_R3   OUT      SYS_REFCURSOR,
      PO_RC_MAPPED_VALUES       OUT      SYS_REFCURSOR
   );

   PROCEDURE P_GET_AGENCY_CONFIG (
      PO_RC_AGENCY_DETAILS   OUT   SYS_REFCURSOR,
      PO_RC_CLASSIF_LST      OUT   SYS_REFCURSOR,
      PO_RC_PROFILES         OUT   SYS_REFCURSOR
   );

   PROCEDURE P_GET_SYSTEM_CONFIG (PO_RC_SYSTEM_CONFIG OUT SYS_REFCURSOR);

   PROCEDURE P_DELETE_E2B_PROFILE (
      PI_PROFILE_ID   IN   NUMBER,
      PI_USER_ID      IN   NUMBER
   );

   PROCEDURE P_SAVE_COLOR_CONFIG (
      PI_MISSING_IN_R2   IN   VARCHAR2,
      PI_MISSING_IN_R3   IN   VARCHAR2,
      PI_NO_MAPPING      IN   VARCHAR2,      
      PI_USER_ID         IN   NUMBER
   );

   PROCEDURE P_GET_COLOR_CONFIG (PO_RC_COLOR_CONFIG OUT SYS_REFCURSOR);
END PKG_E2B_R2R3MAPPING;
/
