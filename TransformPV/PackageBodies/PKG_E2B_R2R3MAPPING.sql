CREATE OR REPLACE PACKAGE BODY  &TRANSFORMPV_USER..PKG_E2B_R2R3MAPPING
IS
   /* **********************************************************************
     Name     : PKG_E2B_R2R3MAPPING
     Type     : Package

     Description   : This package includes all logic related to R2 R3 Mapping, agency and system configuration

     Sources    : n/a

     Source Tables  : n/a
     Target Tables  : n/a
     Business Logic : n/a

     Parameters   : n/a

     Return     : n/a

     Updates    : 04-June-2014  [PS] v0.01 initial version, see description above.

     ***********************************************************************/

   PV_STRING_SEPERATOR   VARCHAR2 (10) := '|;|';

   /******************************************************************************************************
       Name            : P_DELETE_R2R3_MAPPING
       Type            : Procedure
       Description     : This Procedure is used to delete the R2 R`3 mapping on the basis of agency,user
       Parameters     : PI_PROFILE_ID        IN   NUMBER
						PI_MAPPING_ID_LIST   IN   T_STRING_TAB
						PI_USER_ID           IN   NUMBER

       Return         :
   *****************************************************************************************************************/
   PROCEDURE P_DELETE_R2R3_MAPPING (
      PI_PROFILE_ID        IN   NUMBER,
      PI_MAPPING_ID_LIST   IN   T_STRING_TAB,
      PI_USER_ID           IN   NUMBER
   )
   IS
      V_CHK_CHILD_EXIST        NUMBER;
      V_R2_ELEMENT_NUM         VARCHAR2 (100);
      V_R3_ELEMENT_NUM         VARCHAR2 (100);
      EXP_CHILD_RECORD_EXIST   EXCEPTION;
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID);

      FOR I IN PI_MAPPING_ID_LIST.FIRST .. PI_MAPPING_ID_LIST.LAST
      LOOP
          BEGIN
        
         SELECT R2_ELEMENT_NUM, R3_ELEMENT_NUM
           INTO V_R2_ELEMENT_NUM, V_R3_ELEMENT_NUM
           FROM E2B_R2R3MAPPING
          WHERE PROFILE_ID = PI_PROFILE_ID
                AND SEQ_NUM = PI_MAPPING_ID_LIST (I);
              
        EXCEPTION WHEN NO_DATA_FOUND THEN
        
            PKG_LOGGER.P_LOG_TRACE($$PLSQL_UNIT,'P_DELETE_R2R3_MAPPING','PI_PROFILE_ID=> '||PI_PROFILE_ID||', PI_MAPPING_ID_LIST=>'||PI_MAPPING_ID_LIST(I)||',PI_USER_ID=>'||PI_USER_ID,1,3,'Trace');
        
        END;

         SELECT COUNT (1)
           INTO V_CHK_CHILD_EXIST
           FROM E2B_R2R3MAPPING
          WHERE PROFILE_ID = PI_PROFILE_ID
            AND DELETED = 0
            AND (   (    UPPER (R2_ELEMENT_NUM) LIKE
                                                UPPER (V_R2_ELEMENT_NUM)
                                                || '%'
                     AND LENGTH (R2_ELEMENT_NUM) > LENGTH (V_R2_ELEMENT_NUM)
                    )
                 OR (    UPPER (R3_ELEMENT_NUM) LIKE
                                                UPPER (V_R3_ELEMENT_NUM)
                                                || '%'
                     AND LENGTH (R3_ELEMENT_NUM) > LENGTH (V_R3_ELEMENT_NUM)
                    )
                );

         IF V_CHK_CHILD_EXIST > 0
         THEN
            RAISE EXP_CHILD_RECORD_EXIST;
         END IF;

         UPDATE E2B_R2R3MAPPING
            SET DELETED = 1,
                MODIFIED_BY = PI_USER_ID,
                MODIFIED_DATE = SYSDATE
          WHERE PROFILE_ID = PI_PROFILE_ID
                AND SEQ_NUM = PI_MAPPING_ID_LIST (I);
      END LOOP;
   EXCEPTION
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
      THEN
         RAISE_APPLICATION_ERROR
                               (-20002,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20002, SQLERRM)
                               );
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_ADMIN_DISABLE
      THEN
         RAISE_APPLICATION_ERROR
                               (-20003,
                                 PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20003, SQLERRM)
                               );
      WHEN EXP_CHILD_RECORD_EXIST
      THEN
         RAISE_APPLICATION_ERROR
                    (-20004,
                      PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20004, SQLERRM)
                    );
   END P_DELETE_R2R3_MAPPING;

 /******************************************************************************************************
       Name            : P_GET_AGENCY_LIST
       Type            : Procedure
       Description     : This Procedure is used to get the configured agency details.

       Parameters     : 

       Return         :
   *****************************************************************************************************************/
   PROCEDURE P_GET_AGENCY_LIST (PO_RC_AGENCY_LIST OUT SYS_REFCURSOR)
   IS
   BEGIN
      OPEN PO_RC_AGENCY_LIST FOR
         SELECT   ELRC.AGENCY_ID, ELRC.AGENCY_NAME, ERCG.ACK_DOWNGRADE_XSL,
                  ERCG.ACK_PROFILE_ID, ERCG.ACK_UPGRADE_XSL,
                  ERCG.DOWNGRADE_IN_FOLDER, ERCG.DOWNGRADE_OUT_FOLDER,
                  ERCG.DOWNGRADE_XSL,
                                     --ERCG.DRAFT_E2B_CLASS_ID, ERCG.DRAFT_HTML_CLASS_ID,
                                     ERCG.E2B_PROFILE_ID,
                  ERCG.FINAL_E2B_CLASS_ID, ERCG.FINAL_HTML_CLASS_ID,
                  ERCG.UPGRADE_IN_FOLDER, ERCG.UPGRADE_OUT_FOLDER,
                  ERCG.UPGRADE_XSL, ERCG.XSD_FILE, ERCG.ENABLED,
                  ERCG.ALLOW_MULTI_ACK, EXP_ATTACHMENT_PATH,
                  IMP_ATTACHMENT_PATH, IMP_ATTACHMENT_CLASS_ID,
                  FINAL_FILE_FORMAT
             FROM E2B_R3_CFG_AGENCY ERCG, E2B_LM_REGULATORY_CONTACT ELRC
            WHERE ERCG.DELETED = 0
              AND ERCG.AGENCY_ID = ELRC.AGENCY_ID
              AND ELRC.DELETED IS NULL
              AND ERCG.ENABLED = 1
         ORDER BY ELRC.AGENCY_NAME;
   END P_GET_AGENCY_LIST;

   /******************************************************************************************************
       Name            : P_DELETE_E2B_PROFILE
       Type            : Procedure
       Description     : This Procedure is used to delete the agency.

       Parameters     : PI_PROFILE_ID        IN   NUMBER						
						PI_USER_ID           IN   NUMBER

       Return         :
   *****************************************************************************************************************/
   PROCEDURE P_DELETE_E2B_PROFILE (
      PI_PROFILE_ID   IN   NUMBER,
      PI_USER_ID      IN   NUMBER
   )
   IS
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID);

      UPDATE E2B_CFG_TRASFORM_PROFILES
         SET DELETED = 1,
             MODIFIED_BY = PI_USER_ID,
             MODIFIED_DATE = SYSDATE,
             DUP_CHECK_NAME = DUP_CHECK_NAME || PROFILE_ID
       WHERE PROFILE_ID = PI_PROFILE_ID;
   EXCEPTION
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
      THEN
         RAISE_APPLICATION_ERROR
                               (-20002,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20002, SQLERRM)
                               );
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_ADMIN_DISABLE
      THEN
         RAISE_APPLICATION_ERROR
                               (-20003,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20003, SQLERRM)
                               );
   END P_DELETE_E2B_PROFILE;

     /******************************************************************************************************
       Name            : P_GET_PROFILE_LIST
       Type            : Procedure
       Description     : This Procedure is used to get the detail of configured profiles.

       Parameters     : PO_RC_PROFILE_LIST OUT SYS_REFCURSOR

       Return         :
   *****************************************************************************************************************/
   
   PROCEDURE P_GET_PROFILE_LIST (PO_RC_PROFILE_LIST OUT SYS_REFCURSOR)
   IS
   BEGIN
      OPEN PO_RC_PROFILE_LIST FOR
         SELECT   *
             FROM E2B_CFG_TRASFORM_PROFILES
            WHERE DELETED = 0
         ORDER BY PROFILE_NAME;
   END P_GET_PROFILE_LIST;

   /*******************************************************************************************************************************************
       Name           : P_GET_R2R3_MAPPING_DETAILS
       Type           : Procedure
       Description    : This Procedure is used to get R2 R3 mapping details on the basis of input profile.
       Parameters     : PI_PROFILE_ID            IN          NUMBER
                        PO_RC_R2R3_MAPPING      OUT         SYS_REFCURSOR
       Return         : n/a       
   *******************************************************************************************************************************************/
   
   PROCEDURE P_GET_R2R3_MAPPING_DETAILS (
      PI_PROFILE_ID        IN       NUMBER,
      PO_RC_R2R3_MAPPING   OUT      SYS_REFCURSOR
   )
   IS
   BEGIN
      IF PI_PROFILE_ID IS NOT NULL
      THEN
         OPEN PO_RC_R2R3_MAPPING FOR
            SELECT   E.R2_ELEMENT_NUM, E.R2_ELEMENT, E.R2_XPATH,
                     E.R3_ELEMENT_NUM, E.R3_ELEMENT, R3_NULL_XPATH,
                        E.R3_XPATH
                     || DECODE (E.R3_NULL_XPATH,
                                NULL, NULL,
                                PV_STRING_SEPERATOR || E.R3_NULL_XPATH
                               ) R3_XPATH,
                     E.REPEAT_INFO, E.PROFILE_ID, E.SORT_ID, E.SEQ_NUM,
                     E.HEADER, ECTP.*,
                        TREE_VIEW
                     || (CASE
                            WHEN NVL (FIELD_LABEL, UNIQUE_FIELD_LABEL) IS NOT NULL
                               THEN ' > '
                         END
                        )
                     || NVL (FIELD_LABEL, UNIQUE_FIELD_LABEL) ARGUS_FIELD
                FROM E2B_R2R3MAPPING E,
                     E2B_CFG_TRASFORM_PROFILES ECTP,
                     E2B_ARGUS_FIELD_MAPPING EAFM
               WHERE E.PROFILE_ID = PI_PROFILE_ID
                 AND UPPER (E.R2_XPATH) = UPPER (EAFM.DTD_ELEMENT(+))
                 AND E.PROFILE_ID = ECTP.PROFILE_ID
                 AND E.DELETED = 0
            ORDER BY SORT_ID;
      ELSE
         OPEN PO_RC_R2R3_MAPPING FOR
            SELECT   E.R2_ELEMENT_NUM, E.R2_ELEMENT, E.R2_XPATH,
                     E.R3_ELEMENT_NUM, E.R3_ELEMENT, R3_NULL_XPATH,
                        E.R3_XPATH
                     || DECODE (E.R3_NULL_XPATH,
                                NULL, NULL,
                                PV_STRING_SEPERATOR || E.R3_NULL_XPATH
                               ) R3_XPATH,
                     E.REPEAT_INFO, E.PROFILE_ID, E.SORT_ID, E.SEQ_NUM,
                     E.HEADER, ECTP.*,
                        TREE_VIEW
                     || (CASE
                            WHEN NVL (FIELD_LABEL, UNIQUE_FIELD_LABEL) IS NOT NULL
                               THEN ' > '
                         END
                        )
                     || NVL (FIELD_LABEL, UNIQUE_FIELD_LABEL) ARGUS_FIELD
                FROM E2B_R2R3MAPPING E,
                     E2B_CFG_TRASFORM_PROFILES ECTP,
                     E2B_ARGUS_FIELD_MAPPING EAFM
               WHERE E.PROFILE_ID = ECTP.PROFILE_ID
                 AND E.DELETED = 0
                 AND UPPER (E.R2_XPATH) = UPPER (EAFM.DTD_ELEMENT(+))
            ORDER BY SORT_ID;
      END IF;
   END P_GET_R2R3_MAPPING_DETAILS;

/*******************************************************************************************************************************************
    Name           : P_SAVE_R2R3_MAPPING
    Type           : Procedure
    Description    : This Procedure is used to save the R2 R3 mapping changes.
    Parameters     :              PI_R2_ELEMENT_NUM   IN   T_STRING_TAB,
                                  PI_R2_ELEMENT       IN   T_STRING_TAB,
                                  PI_R2_XPATH         IN   T_STRING_TAB,
                                  PI_R3_ELEMENT_NUM   IN   T_STRING_TAB,
                                  PI_R3_ELEMENT       IN   T_STRING_TAB,
                                  PI_R3_XPATH         IN   T_STRING_TAB,
                                  PI_R3_NULL_XPATH    IN   T_STRING_TAB,
                                  PI_REPEAT_INFO      IN   T_STRING_TAB,
                                  PI_AGENCY_ID        IN   T_STRING_TAB,
                                  PI_SORT_ID          IN   T_STRING_TAB,
                                  PI_SEQ_NUM          IN   T_STRING_TAB,
                                  PI_USER_ID          IN   NUMBER

    Return         : n/a
    Updates        : 18-Aug-2014   [PS] v0.01 initial version, see description above.
*******************************************************************************************************************************************/
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
   )
   IS
      V_R3_XPATH_STR    VARCHAR2 (4000);
      V_R3_XPATH        VARCHAR2 (4000);
      V_R3_NULL_XPATH   VARCHAR2 (4000);
      V_PROFILE_ID      NUMBER          := PI_PROFILE_ID;
      V_R2_DATA_ID      NUMBER;
      V_MAPPING_ID      NUMBER;
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID);

      IF PI_PROFILE_ID IS NULL
      THEN
         SELECT MAX (PROFILE_ID) + 1
           INTO V_PROFILE_ID
           FROM E2B_CFG_TRASFORM_PROFILES;

         INSERT INTO E2B_CFG_TRASFORM_PROFILES
                     (PROFILE_ID, PROFILE_NAME, DELETED, DELETED_DATE,
                      CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE,
                      IS_ACK, IS_BASE_PROFILE, DUP_CHECK_NAME
                     )
              VALUES (V_PROFILE_ID, PI_PROFILE_NAME, 0, NULL,
                      PI_USER_ID, SYSDATE, PI_USER_ID, SYSDATE,
                      PI_IS_ACK, 0, UPPER (PI_PROFILE_NAME)
                     );

         IF PI_SOURCE_PROFILE_ID IS NOT NULL
         THEN
            INSERT INTO CFG_E2B_DECODE_VIEW_R3
                        (DTD_ELEMENT, R3_XPATH, TABLE_NAME, VAL_COLUMN_NAME,
                         ID_COLUMN_NAME, ADDITIONAL_CONDITION, DELETED,
                         ENABLED, DELETED_DATE, DECODE_VALUE, E2B_CODE,
                         PROFILE_ID, DECODE_TYPE)
               SELECT DTD_ELEMENT, R3_XPATH, TABLE_NAME, VAL_COLUMN_NAME,
                      ID_COLUMN_NAME, ADDITIONAL_CONDITION, DELETED, ENABLED,
                      NULL, DECODE_VALUE, E2B_CODE, V_PROFILE_ID, DECODE_TYPE
                 FROM CFG_E2B_DECODE_VIEW_R3
                WHERE PROFILE_ID = PI_SOURCE_PROFILE_ID AND DELETED = 0;

            SELECT MAX (DATA_ID)
              INTO V_R2_DATA_ID
              FROM R2_FACTORY_DATA R;

            SELECT MAX (R.MAPPING_ID)
              INTO V_MAPPING_ID
              FROM R2R3_NULL_FLAVOUR_MAPPING R;

            FOR I IN (SELECT R.DATA_ID, R.SEQ_NUM, R.SORT_ID,
                             R.ELEMENT_NUMBER, R.ELEMENT_VALUE,
                             R.ELEMENT_NAME, R.ELEMENT_DESC
                        FROM R2_FACTORY_DATA R
                       WHERE PROFILE_ID = PI_SOURCE_PROFILE_ID AND DELETED = 0)
            LOOP
               V_R2_DATA_ID    := V_R2_DATA_ID + 1;
               V_MAPPING_ID    := NULL_FLV_MAPPING_SEQ.NEXTVAL;

               INSERT INTO R2_FACTORY_DATA
                           (DATA_ID, PROFILE_ID, SEQ_NUM,
                            SORT_ID, ELEMENT_NUMBER, ELEMENT_VALUE, DELETED,
                            DELETED_DATE, CREATED_BY, CREATED_DATE,
                            MODIFIED_BY, MODIFIED_DATE, ELEMENT_NAME,
                            ELEMENT_DESC
                           )
                    VALUES (V_R2_DATA_ID, V_PROFILE_ID, I.SEQ_NUM,
                            I.SORT_ID, I.ELEMENT_NUMBER, I.ELEMENT_VALUE, 0,
                            NULL, PI_USER_ID, SYSDATE,
                            PI_USER_ID, SYSDATE, I.ELEMENT_NAME,
                            I.ELEMENT_DESC
                           );

               INSERT INTO R2R3_NULL_FLAVOUR_MAPPING
                           (MAPPING_ID, PROFILE_ID, R2_DATA_ID, R3_DATA_ID,
                            DELETED, DELETED_DATE, CREATED_BY, CREATED_DATE,
                            MODIFIED_BY, MODIFIED_DATE)
                  SELECT V_MAPPING_ID, V_PROFILE_ID, V_R2_DATA_ID,
                         R.R3_DATA_ID, 0, NULL, PI_USER_ID, SYSDATE,
                         PI_USER_ID, SYSDATE
                    FROM R2R3_NULL_FLAVOUR_MAPPING R
                   WHERE PROFILE_ID = PI_SOURCE_PROFILE_ID
                     AND DELETED = 0
                     AND R2_DATA_ID = I.DATA_ID;
            END LOOP;
         END IF;
      ELSE
         UPDATE E2B_CFG_TRASFORM_PROFILES
            SET PROFILE_NAME = PI_PROFILE_NAME,
                MODIFIED_BY = PI_USER_ID,
                MODIFIED_DATE = SYSDATE,
                DUP_CHECK_NAME = UPPER (PI_PROFILE_NAME)
          WHERE PROFILE_ID = V_PROFILE_ID;
      END IF;

      FOR I IN PI_SORT_ID.FIRST .. PI_SORT_ID.LAST
      LOOP
         V_R3_XPATH_STR     :=
            LTRIM (RTRIM (PI_R3_XPATH (I), PV_STRING_SEPERATOR),
                   PV_STRING_SEPERATOR
                  );
         V_R3_XPATH         :=
            TRIM
               (SUBSTR
                   (V_R3_XPATH_STR,
                    1,
                    CASE
                       WHEN INSTR (V_R3_XPATH_STR, PV_STRING_SEPERATOR) = 0
                          THEN LENGTH (TRIM (V_R3_XPATH_STR))
                       ELSE INSTR (V_R3_XPATH_STR, PV_STRING_SEPERATOR) - 1
                    END
                   )
               );
         V_R3_NULL_XPATH    := CASE WHEN INSTR (V_R3_XPATH_STR, PV_STRING_SEPERATOR) > 0 THEN
            TRIM (SUBSTR (V_R3_XPATH_STR,
                          INSTR (V_R3_XPATH_STR, PV_STRING_SEPERATOR) + 3
                         )
                 ) END;

         IF PI_SEQ_NUM (I) IS NOT NULL AND PI_PROFILE_ID IS NOT NULL
         THEN
            UPDATE E2B_R2R3MAPPING
               SET R2_ELEMENT_NUM = TRIM (PI_R2_ELEMENT_NUM (I)),
                   R2_ELEMENT = TRIM (PI_R2_ELEMENT (I)),
                   R2_XPATH = TRIM (PI_R2_XPATH (I)),
                   R3_ELEMENT_NUM = TRIM (PI_R3_ELEMENT_NUM (I)),
                   R3_ELEMENT = TRIM (PI_R3_ELEMENT (I)),
                   R3_XPATH = TRIM (V_R3_XPATH),
                   R3_NULL_XPATH = TRIM (V_R3_NULL_XPATH),
                   --REPEAT_INFO = PI_REPEAT_INFO (I),
                   SORT_ID = PI_SORT_ID (I),
                   MODIFIED_BY = PI_USER_ID,
                   MODIFIED_DATE = SYSDATE,
                   HEADER = PI_HEADER (I)
             WHERE SEQ_NUM = PI_SEQ_NUM (I) AND PROFILE_ID = V_PROFILE_ID;
         ELSE
            INSERT INTO E2B_R2R3MAPPING
                        (R2_ELEMENT_NUM,
                         R2_ELEMENT, R2_XPATH,
                         R3_ELEMENT_NUM,
                         R3_ELEMENT, R3_XPATH,
                         R3_NULL_XPATH,
                                       --REPEAT_INFO,
                                       PROFILE_ID,
                         SORT_ID, SEQ_NUM,
                         CREATED_BY, CREATED_DATE, MODIFIED_BY,
                         MODIFIED_DATE, DELETED, HEADER
                        )
                 VALUES (TRIM (PI_R2_ELEMENT_NUM (I)),
                         TRIM (PI_R2_ELEMENT (I)), TRIM (PI_R2_XPATH (I)),
                         TRIM (PI_R3_ELEMENT_NUM (I)),
                         TRIM (PI_R3_ELEMENT (I)), TRIM (V_R3_XPATH),
                         TRIM (V_R3_NULL_XPATH),
                                                --PI_REPEAT_INFO (I),
                                                V_PROFILE_ID,
                         PI_SORT_ID (I), E2B_R2R3MAPPING_SEQ.NEXTVAL,
                         PI_USER_ID, SYSDATE, PI_USER_ID,
                         SYSDATE, 0, PI_HEADER (I)
                        );
         END IF;
      END LOOP;
   EXCEPTION
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
      THEN
         RAISE_APPLICATION_ERROR
                               (-20002,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20002, SQLERRM)
                               );
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_ADMIN_DISABLE
      THEN
         RAISE_APPLICATION_ERROR
                               (-20003,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20003, SQLERRM)
                               );
      WHEN DUP_VAL_ON_INDEX
      THEN
         RAISE_APPLICATION_ERROR (-20001,
                                     PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20001, 'This Profile ('
                                  || PI_PROFILE_NAME
                                  || ') already exists.')
                                 );
      WHEN OTHERS
      THEN
         RAISE_APPLICATION_ERROR
             (-20001,
                 PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20002, 'Following error occured while creating/modifing profile - '
              || SQLERRM)
             );
   END P_SAVE_R2R3_MAPPING;

    /*******************************************************************************************************************************************
      Name           : P_SAVE_SYSTEM_CONFIG
      Type           : Procedure
      Description    : This procedure is used to save e2b IN,OUT,Error folder
      Parameters     :               PI_APPLICATION      IN   VARCHAR2,
                                     PI_BFC_IN_FOLDER    IN   VARCHAR2,
                                     PI_BFC_OUT_FOLDER   IN   VARCHAR2,
                                     PI_BFC_BKP_FOLDER   IN   VARCHAR2,
                                     PI_ERROR_FOLDER     IN   VARCHAR2,
                                     PI_LOG_FOLDER       IN   VARCHAR2,
                                     PI_ACK_IDENTIFIER   IN   VARCHAR2,
                                     PI_USER_ID          IN   NUMBER


      Return         : n/a
      Updates        : 18-Aug-2014   [PS] v0.01 initial version, see description above.
   *******************************************************************************************************************************************/
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
   )
   IS
      V_APP_CONFIG_EXIST   NUMBER;
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID);

      SELECT COUNT (1)
        INTO V_APP_CONFIG_EXIST
        FROM E2B_R3_CFG_SYSTEM
       WHERE DELETED = 0 AND UPPER (APPLICATION) = UPPER (PI_APPLICATION);

      IF V_APP_CONFIG_EXIST = 0
      THEN
         INSERT INTO E2B_R3_CFG_SYSTEM
                     (APPLICATION, BFC_IN_FOLDER, BFC_OUT_FOLDER,
                      BFC_BKP_FOLDER, ERROR_FOLDER, LOG_FOLDER,
                      ACK_IDENTIFIER, CREATED_BY, CREATED_DATE, MODIFIED_BY,
                      MODIFIFED_DATE, DELETED, DELETED_DATE, HTML_FOLDER,
                      PDF_TEMPLATE_FOLDER, BINARY_FOLDER, APPLICATION_ID
                     )
              VALUES (PI_APPLICATION, PI_BFC_IN_FOLDER, PI_BFC_OUT_FOLDER,
                      PI_BFC_BKP_FOLDER, PI_ERROR_FOLDER, PI_LOG_FOLDER,
                      PI_ACK_IDENTIFIER, PI_USER_ID, SYSDATE, PI_USER_ID,
                      SYSDATE, 0, NULL, PI_HTML_FOLDER,
                      PI_PDF_TEMPLATE_FOLDER, PI_BINARY_FOLDER, 1
                     );
      ELSE
         UPDATE E2B_R3_CFG_SYSTEM
            SET BFC_IN_FOLDER = PI_BFC_IN_FOLDER,
                BFC_OUT_FOLDER = PI_BFC_OUT_FOLDER,
                BFC_BKP_FOLDER = PI_BFC_BKP_FOLDER,
                ERROR_FOLDER = PI_ERROR_FOLDER,
                LOG_FOLDER = PI_LOG_FOLDER,
                ACK_IDENTIFIER = PI_ACK_IDENTIFIER,
                MODIFIED_BY = PI_USER_ID,
                MODIFIFED_DATE = SYSDATE,
                HTML_FOLDER = PI_HTML_FOLDER,
                PDF_TEMPLATE_FOLDER = PI_PDF_TEMPLATE_FOLDER,
                BINARY_FOLDER = PI_BINARY_FOLDER
          WHERE APPLICATION = PI_APPLICATION;
      END IF;
   EXCEPTION
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
      THEN
         RAISE_APPLICATION_ERROR
                               (-20002,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20002, SQLERRM)
                               );
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_ADMIN_DISABLE
      THEN
         RAISE_APPLICATION_ERROR
                               (-20003,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20003, SQLERRM)
                               );
   END P_SAVE_SYSTEM_CONFIG;

       /*******************************************************************************************************************************************
      Name           : P_SAVE_AGENCY_CONFIG
      Type           : Procedure
      Description    : This procedure is used to save Upgrade,downgrade,ack folder for agency.
      Parameters     :               PI_APPLICATION      IN   VARCHAR2,
                                     PI_BFC_IN_FOLDER    IN   VARCHAR2,
                                     PI_BFC_OUT_FOLDER   IN   VARCHAR2,
                                     PI_BFC_BKP_FOLDER   IN   VARCHAR2,
                                     PI_ERROR_FOLDER     IN   VARCHAR2,
                                     PI_LOG_FOLDER       IN   VARCHAR2,
                                     PI_ACK_IDENTIFIER   IN   VARCHAR2,
                                     PI_USER_ID          IN   NUMBER


      Return         : n/a
      Updates        : 18-Aug-2014   [PS] v0.01 initial version, see description above.
   *******************************************************************************************************************************************/
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
   )
   IS
      V_AGENCY_CONFIG_EXIST   NUMBER;
   -- V_AGENCY_ID             NUMBER;
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID);

      SELECT COUNT (1)
        INTO V_AGENCY_CONFIG_EXIST
        FROM E2B_R3_CFG_AGENCY
       WHERE DELETED = 0 AND AGENCY_ID = PI_AGENCY_ID;

      IF V_AGENCY_CONFIG_EXIST = 0
      THEN
         INSERT INTO E2B_R3_CFG_AGENCY
                     (UPGRADE_XSL, DOWNGRADE_XSL, ACK_UPGRADE_XSL,
                      ACK_DOWNGRADE_XSL, UPGRADE_IN_FOLDER,
                      UPGRADE_OUT_FOLDER, DOWNGRADE_IN_FOLDER,
                      DOWNGRADE_OUT_FOLDER, CREATED_BY, CREATED_DATE,
                      MODIFIED_BY, MODIFIED_DATE, DELETED, DELETED_DATE,
                      AGENCY_ID, FINAL_E2B_CLASS_ID,
                      FINAL_HTML_CLASS_ID, E2B_PROFILE_ID,
                      ACK_PROFILE_ID, XSD_FILE, AGENCY_NAME,
                      ENABLED, ALLOW_MULTI_ACK,
                      EXP_ATTACHMENT_PATH, IMP_ATTACHMENT_PATH,
                      IMP_ATTACHMENT_CLASS_ID, FINAL_FILE_FORMAT
                     )
              VALUES (PI_UPGRADE_XSL, PI_DOWNGRADE_XSL, PI_ACK_UPGRADE_XSL,
                      PI_ACK_DOWNGRADE_XSL, PI_UPGRADE_IN_FOLDER,
                      PI_UPGRADE_OUT_FOLDER, PI_DOWNGRADE_IN_FOLDER,
                      PI_DOWNGRADE_OUT_FOLDER, PI_USER_ID, SYSDATE,
                      PI_USER_ID, SYSDATE, 0, NULL,
                      PI_AGENCY_ID, PI_FINAL_E2B_CLASS_ID,
                      PI_FINAL_HTML_CLASS_ID, PI_E2B_PROFILE_ID,
                      PI_ACK_PROFILE_ID, PI_XSD_FILE, PI_AGENCY_NAME,
                      PI_ENABLED, PI_ALLOW_MULTI_ACK,
                      PI_EXP_ATTACHMENT_PATH, PI_IMP_ATTACHMENT_PATH,
                      PI_IMP_ATTACHMENT_CLASS_ID, PI_FINAL_FILE_FORMAT
                     );
      ELSE
         UPDATE E2B_R3_CFG_AGENCY
            SET UPGRADE_XSL = PI_UPGRADE_XSL,
                DOWNGRADE_XSL = PI_DOWNGRADE_XSL,
                ACK_UPGRADE_XSL = PI_ACK_UPGRADE_XSL,
                ACK_DOWNGRADE_XSL = PI_ACK_DOWNGRADE_XSL,
                UPGRADE_IN_FOLDER = PI_UPGRADE_IN_FOLDER,
                UPGRADE_OUT_FOLDER = PI_UPGRADE_OUT_FOLDER,
                DOWNGRADE_IN_FOLDER = PI_DOWNGRADE_IN_FOLDER,
                DOWNGRADE_OUT_FOLDER = PI_DOWNGRADE_OUT_FOLDER,
                MODIFIED_BY = PI_USER_ID,
                MODIFIED_DATE = SYSDATE,
                FINAL_E2B_CLASS_ID = PI_FINAL_E2B_CLASS_ID,
                FINAL_HTML_CLASS_ID = PI_FINAL_HTML_CLASS_ID,
                E2B_PROFILE_ID = PI_E2B_PROFILE_ID,
                ACK_PROFILE_ID = PI_ACK_PROFILE_ID,
                XSD_FILE = PI_XSD_FILE,
                AGENCY_NAME = PI_AGENCY_NAME,
                ENABLED = PI_ENABLED,
                ALLOW_MULTI_ACK = PI_ALLOW_MULTI_ACK,
                EXP_ATTACHMENT_PATH = PI_EXP_ATTACHMENT_PATH,
                IMP_ATTACHMENT_PATH = PI_IMP_ATTACHMENT_PATH,
                IMP_ATTACHMENT_CLASS_ID = PI_IMP_ATTACHMENT_CLASS_ID,
                FINAL_FILE_FORMAT = PI_FINAL_FILE_FORMAT
          WHERE AGENCY_ID = PI_AGENCY_ID;
      END IF;
   EXCEPTION
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
      THEN
         RAISE_APPLICATION_ERROR
                               (-20002,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20002, SQLERRM)
                               );
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_ADMIN_DISABLE
      THEN
         RAISE_APPLICATION_ERROR
                               (-20003,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20003, SQLERRM)
                               );
   END P_SAVE_AGENCY_CONFIG;

 /*******************************************************************************************************************************************
      Name           : P_GET_NULL_FLAVOUR_DATA
      Type           : Procedure
      Description    : This procedure is used to get the R2 R3 null flavour mapping.
      Parameters     :        PI_PROFILE_ID             IN       NUMBER,
							  PI_ELEMENT_NUMBER         IN       VARCHAR2,
							  PO_RC_ELEMENT_VALUES_R2   OUT      SYS_REFCURSOR,
							  PO_RC_ELEMENT_VALUES_R3   OUT      SYS_REFCURSOR,
							  PO_RC_MAPPED_VALUES       OUT      SYS_REFCURSOR


      Return         : n/a
      Updates        : 18-Aug-2014   [PS] v0.01 initial version, see description above.
   *******************************************************************************************************************************************/
   
   PROCEDURE P_GET_NULL_FLAVOUR_DATA (
      PI_PROFILE_ID             IN       NUMBER,
      PI_ELEMENT_NUMBER         IN       VARCHAR2,
      PO_RC_ELEMENT_VALUES_R2   OUT      SYS_REFCURSOR,
      PO_RC_ELEMENT_VALUES_R3   OUT      SYS_REFCURSOR,
      PO_RC_MAPPED_VALUES       OUT      SYS_REFCURSOR
   )
   IS
   BEGIN
      OPEN PO_RC_ELEMENT_VALUES_R2 FOR
         SELECT   R.DATA_ID, R.PROFILE_ID, R.SEQ_NUM, R.SORT_ID,
                  R.ELEMENT_NUMBER, R.ELEMENT_VALUE
             FROM R2_FACTORY_DATA R
            WHERE R.PROFILE_ID = PI_PROFILE_ID
              AND R.ELEMENT_NUMBER = PI_ELEMENT_NUMBER
              AND R.DELETED = 0
         ORDER BY SORT_ID;

      OPEN PO_RC_ELEMENT_VALUES_R3 FOR
         SELECT   R.DATA_ID, R.SEQ_NUM, R.SORT_ID, R.ELEMENT_VALUE
             FROM R3_FACTORY_DATA R
            WHERE R.DELETED = 0
         ORDER BY SORT_ID;

      OPEN PO_RC_MAPPED_VALUES FOR
         SELECT R2_DATA_ID, R2.ELEMENT_NUMBER R2_ELEMENT_NUMBER,
                R2.ELEMENT_NAME R2_ELEMENT_NAME,
                R2.ELEMENT_VALUE R2_ELEMENT_VALUE, R3_DATA_ID,
                R3.ELEMENT_VALUE R3_ELEMENT_VALUE
           FROM R2_FACTORY_DATA R2,
                R3_FACTORY_DATA R3,
                R2R3_NULL_FLAVOUR_MAPPING RNFM
          WHERE R2.DATA_ID = RNFM.R2_DATA_ID
            AND R3.DATA_ID = RNFM.R3_DATA_ID
            AND R2.PROFILE_ID = RNFM.PROFILE_ID
            AND RNFM.PROFILE_ID = PI_PROFILE_ID
            AND RNFM.DELETED = 0
            AND R2.ELEMENT_NUMBER = PI_ELEMENT_NUMBER;
   END P_GET_NULL_FLAVOUR_DATA;

   /*******************************************************************************************************************************************
      Name           : P_GET_R2_FACTORY_DATA
      Type           : Procedure
      Description    : This procedure is used to get the e2b R2 factory data.
      Parameters     :         PI_PROFILE_ID          IN       NUMBER,
							  PI_ELEMENT_NUMBER      IN       VARCHAR2,
							  PO_RC_ELEMENT_VALUES   OUT      SYS_REFCURSOR


      Return         : n/a
      Updates        : 18-Aug-2014   [PS] v0.01 initial version, see description above.
   *******************************************************************************************************************************************/
   PROCEDURE P_GET_R2_FACTORY_DATA (
      PI_PROFILE_ID          IN       NUMBER,
      PI_ELEMENT_NUMBER      IN       VARCHAR2,
      PO_RC_ELEMENT_VALUES   OUT      SYS_REFCURSOR
   )
   IS
   BEGIN
      OPEN PO_RC_ELEMENT_VALUES FOR
         SELECT   R.DATA_ID, R.PROFILE_ID, R.SEQ_NUM, R.SORT_ID,
                  R.ELEMENT_NUMBER, R.ELEMENT_VALUE
             FROM R2_FACTORY_DATA R
            WHERE R.PROFILE_ID = PI_PROFILE_ID
              AND R.ELEMENT_NUMBER = PI_ELEMENT_NUMBER
              AND R.DELETED = 0
         ORDER BY SORT_ID;
   END P_GET_R2_FACTORY_DATA;

      /*******************************************************************************************************************************************
      Name           : P_GET_R3_FACTORY_DATA
      Type           : Procedure
      Description    : This procedure is used to get the e2b R3 factory data.
      Parameters     :        PO_RC_ELEMENT_VALUES OUT SYS_REFCURSOR


      Return         : n/a
      Updates        : 18-Aug-2014   [PS] v0.01 initial version, see description above.
   *******************************************************************************************************************************************/
   PROCEDURE P_GET_R3_FACTORY_DATA (PO_RC_ELEMENT_VALUES OUT SYS_REFCURSOR)
   IS
   BEGIN
      OPEN PO_RC_ELEMENT_VALUES FOR
         SELECT   R.DATA_ID, R.SEQ_NUM, R.SORT_ID, R.ELEMENT_VALUE
             FROM R3_FACTORY_DATA R
            WHERE R.DELETED = 0
         ORDER BY SORT_ID;
   END P_GET_R3_FACTORY_DATA;

 /*******************************************************************************************************************************************
      Name           : P_SAVE_NULL_FLAVOUR_MAPPING
      Type           : Procedure
      Description    : This procedure is used to save the changes of e2b R2 R3 null flavour mapping
      Parameters     :        PI_PROFILE_ID    NUMBER,
							  PI_R2_DATA_IDS   PKG_COMMON_UTILITIES.T_STRING_TAB,
							  PI_R3_DATA_IDS   PKG_COMMON_UTILITIES.T_STRING_TAB,
							  PI_USER_ID       NUMBER


      Return         : n/a
      Updates        : 18-Aug-2014   [PS] v0.01 initial version, see description above.
   *******************************************************************************************************************************************/
   PROCEDURE P_SAVE_NULL_FLAVOUR_MAPPING (
      PI_PROFILE_ID    NUMBER,
      PI_R2_DATA_IDS   PKG_COMMON_UTILITIES.T_STRING_TAB,
      PI_R3_DATA_IDS   PKG_COMMON_UTILITIES.T_STRING_TAB,
      PI_USER_ID       NUMBER
   )
   IS
      V_R2_DATA_ID_LIST   VARCHAR2 (4000);
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID);

      FOR LOOP_IDX IN PI_R2_DATA_IDS.FIRST .. PI_R2_DATA_IDS.LAST
      LOOP
         V_R2_DATA_ID_LIST    :=
                        V_R2_DATA_ID_LIST || ',' || PI_R2_DATA_IDS (LOOP_IDX);

         UPDATE R2R3_NULL_FLAVOUR_MAPPING
            SET R3_DATA_ID = PI_R3_DATA_IDS (LOOP_IDX),
                MODIFIED_BY = PI_USER_ID,
                MODIFIED_DATE = SYSDATE
          WHERE PROFILE_ID = PI_PROFILE_ID
            AND R2_DATA_ID = PI_R2_DATA_IDS (LOOP_IDX)
            AND DELETED = 0;

         INSERT INTO R2R3_NULL_FLAVOUR_MAPPING
                     (MAPPING_ID, PROFILE_ID, R2_DATA_ID, R3_DATA_ID, DELETED,
                      DELETED_DATE, CREATED_BY, CREATED_DATE, MODIFIED_BY,
                      MODIFIED_DATE)
            SELECT NULL_FLV_MAPPING_SEQ.NEXTVAL, PI_PROFILE_ID,
                   PI_R2_DATA_IDS (LOOP_IDX), PI_R3_DATA_IDS (LOOP_IDX), 0,
                   NULL, PI_USER_ID, SYSDATE, PI_USER_ID, SYSDATE
              FROM DUAL
             WHERE NOT EXISTS (
                      SELECT 1
                        FROM R2R3_NULL_FLAVOUR_MAPPING RNFM
                       WHERE RNFM.PROFILE_ID = PI_PROFILE_ID
                         AND RNFM.R2_DATA_ID = PI_R2_DATA_IDS (LOOP_IDX)
                         AND DELETED = 0);
      END LOOP;

      UPDATE R2R3_NULL_FLAVOUR_MAPPING
         SET DELETED = 1,
             DELETED_DATE = SYSDATE,
             MODIFIED_BY = PI_USER_ID,
             MODIFIED_DATE = SYSDATE
       WHERE PROFILE_ID = PI_PROFILE_ID
         AND R2_DATA_ID NOT IN (
                SELECT COLUMN_VALUE AS R2_DATA_ID
                  FROM TABLE
                          (PKG_COMMON_UTILITIES.F_SPLIT
                                             (TRIM (',' FROM V_R2_DATA_ID_LIST)
                                             )
                          ));
   EXCEPTION
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
      THEN
         RAISE_APPLICATION_ERROR
                               (-20002,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20002, SQLERRM)
                               );
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_ADMIN_DISABLE
      THEN
         RAISE_APPLICATION_ERROR
                               (-20003,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20003, SQLERRM)
                               );
   END P_SAVE_NULL_FLAVOUR_MAPPING;

/*******************************************************************************************************************************************
      Name           : P_GET_AGENCY_CONFIG
      Type           : Procedure
      Description    : This procedure is used to get the configured agency ,classification and profiles details. 
      Parameters     :        PO_RC_AGENCY_DETAILS   OUT   SYS_REFCURSOR,
							  PO_RC_CLASSIF_LST      OUT   SYS_REFCURSOR,
							  PO_RC_PROFILES         OUT   SYS_REFCURSOR


      Return         : n/a
      Updates        : 18-Aug-2014   [PS] v0.01 initial version, see description above.
   *******************************************************************************************************************************************/   
   PROCEDURE P_GET_AGENCY_CONFIG (
      PO_RC_AGENCY_DETAILS   OUT   SYS_REFCURSOR,
      PO_RC_CLASSIF_LST      OUT   SYS_REFCURSOR,
      PO_RC_PROFILES         OUT   SYS_REFCURSOR
   )
   IS
   BEGIN
      OPEN PO_RC_AGENCY_DETAILS FOR
         SELECT   ELRC.AGENCY_ID, ELRC.AGENCY_NAME, ERCG.ACK_DOWNGRADE_XSL,
                  ERCG.ACK_PROFILE_ID, ERCG.ACK_UPGRADE_XSL, ERCG.CREATED_BY,
                  ERCG.CREATED_DATE, ERCG.DELETED, ERCG.DELETED_DATE,
                  ERCG.DOWNGRADE_IN_FOLDER, ERCG.DOWNGRADE_OUT_FOLDER,
                  ERCG.DOWNGRADE_XSL, ERCG.E2B_PROFILE_ID,
                  ERCG.FINAL_E2B_CLASS_ID, ERCG.FINAL_HTML_CLASS_ID,
                  ERCG.MODIFIED_BY, ERCG.MODIFIED_DATE,
                  ERCG.UPGRADE_IN_FOLDER, ERCG.UPGRADE_OUT_FOLDER,
                  ERCG.UPGRADE_XSL, ERCG.XSD_FILE, ERCG.ENABLED,
                  ERCG.ALLOW_MULTI_ACK, EXP_ATTACHMENT_PATH,
                  IMP_ATTACHMENT_PATH, IMP_ATTACHMENT_CLASS_ID,
                  FINAL_FILE_FORMAT
             FROM E2B_R3_CFG_AGENCY ERCG, E2B_LM_REGULATORY_CONTACT ELRC
            WHERE ERCG.DELETED(+) = 0 AND ERCG.AGENCY_ID(+) = ELRC.AGENCY_ID
                  AND ELRC.DELETED IS NULL
         ORDER BY ERCG.MODIFIED_DATE DESC NULLS LAST;

      OPEN PO_RC_CLASSIF_LST FOR
         SELECT *
           FROM SYN_LM_CLASSIFICATION
          WHERE DISPLAY = 1;

      OPEN PO_RC_PROFILES FOR
         SELECT *
           FROM E2B_CFG_TRASFORM_PROFILES
          WHERE DELETED = 0;
   END P_GET_AGENCY_CONFIG;

/*******************************************************************************************************************************************
      Name           : P_GET_SYSTEM_CONFIG
      Type           : Procedure
      Description    : This procedure is used to get the e2b IN,OUT,Error folder detail.
      Parameters     :       PO_RC_SYSTEM_CONFIG OUT SYS_REFCURSO


      Return         : n/a
      Updates        : 18-Aug-2014   [PS] v0.01 initial version, see description above.
   *******************************************************************************************************************************************/     
   PROCEDURE P_GET_SYSTEM_CONFIG (PO_RC_SYSTEM_CONFIG OUT SYS_REFCURSOR)
   IS
   BEGIN
      OPEN PO_RC_SYSTEM_CONFIG FOR
         SELECT   *
             FROM E2B_R3_CFG_SYSTEM
            WHERE DELETED = 0
         ORDER BY APPLICATION;
   END P_GET_SYSTEM_CONFIG;

      /*******************************************************************************************************************************************
      Name           : P_SAVE_COLOR_CONFIG
      Type           : Procedure
      Description    : This procedure is used to save the E2b R2 R3 colour mapping details.
      Parameters     :      PI_MISSING_IN_R2   IN   VARCHAR2,
							  PI_MISSING_IN_R3   IN   VARCHAR2,
							  PI_NO_MAPPING      IN   VARCHAR2,							  
							  PI_USER_ID         IN   NUMBER


      Return         : n/a
      Updates        : 18-Aug-2014   [PS] v0.01 initial version, see description above.
   *******************************************************************************************************************************************/   
   PROCEDURE P_SAVE_COLOR_CONFIG (
      PI_MISSING_IN_R2   IN   VARCHAR2,
      PI_MISSING_IN_R3   IN   VARCHAR2,
      PI_NO_MAPPING      IN   VARCHAR2     
      PI_USER_ID         IN   NUMBER
   )
   IS
   BEGIN
      PKG_COMMON_UTILITIES.P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID);

      UPDATE E2B_CFG_COLOR_MAP
         SET MISSING_IN_R2 = PI_MISSING_IN_R2,
             MISSING_IN_R3 = PI_MISSING_IN_R3,
             NO_MAPPING = PI_NO_MAPPING,        
             MODIFIED_BY = PI_USER_ID,
             MODIFIED_DATE = SYSDATE
       WHERE COLOR_ID = 1;
   EXCEPTION
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
      THEN
         RAISE_APPLICATION_ERROR
                               (-20002,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20002, SQLERRM)
                               );
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_ADMIN_DISABLE
      THEN
         RAISE_APPLICATION_ERROR
                               (-20003,
                                PKG_COMMON_UTILITIES.F_GET_ERROR_MESSAGE(20003, SQLERRM)
                               );
   END P_SAVE_COLOR_CONFIG;


/*******************************************************************************************************************************************
      Name           : P_GET_COLOR_CONFIG
      Type           : Procedure
      Description    : This procedure is used to get the E2b R2 R3 colour mapping details.
      Parameters     :      PI_MISSING_IN_R2   IN   VARCHAR2,
							  PI_MISSING_IN_R3   IN   VARCHAR2,
							  PI_NO_MAPPING      IN   VARCHAR2,
							  PI_USER_ID         IN   NUMBER


      Return         : n/a
      Updates        : 18-Aug-2014   [PS] v0.01 initial version, see description above.
   *******************************************************************************************************************************************/   
   PROCEDURE P_GET_COLOR_CONFIG (PO_RC_COLOR_CONFIG OUT SYS_REFCURSOR)
   IS
   BEGIN
      OPEN PO_RC_COLOR_CONFIG FOR
         SELECT *
           FROM E2B_CFG_COLOR_MAP
          WHERE DELETED = 0;
   END P_GET_COLOR_CONFIG;
END PKG_E2B_R2R3MAPPING;
/
