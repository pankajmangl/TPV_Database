--   Installation Script 
--   Database Version   : 11.2.0.1.0 
--   DB Connect String  : ARGUS7_QA 
--   Schema             : &TRANSFORMPV_USER 
--   Script Created by  : Pavan Sharma
--   Script Created at  : 02/Mar/2015 4:00:00 PM 

@"&FOLDER_PATH/TransformPV/Types/SPLIT_TBL.sql";

@"&FOLDER_PATH/TransformPV/Contexts/E2BR2R3_CONTEXT.sql";

@"&FOLDER_PATH/TransformPV/Sequences/AUDIT_ID_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/AUDIT_VER_NO_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/E2B_LM_REG_CONTACT_HIST_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/E2B_R2R3MAPPING_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/ETL_EXECUTION_ID_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/ETL_EXECUTION_LOG_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/ETL_USER_GROUP_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/LDAP_SERVER_ID_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/LOG_ID_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/NULL_FLV_MAPPING_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/USER_ID_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/TRANSFORM_STATUS_ID_SEQ.sql";
@"&FOLDER_PATH/TransformPV/Sequences/SEQ_AUDIT_VER_NO.sql";
@"&FOLDER_PATH/TransformPV/Sequences/TRANS_MESSAGENUM.sql";
@"&FOLDER_PATH/TransformPV/Sequences/QUEUE_ID_SEQ.sql";

--@"&FOLDER_PATH/TransformPV/Tables/CFG_VERSION.sql"
@"&FOLDER_PATH/TransformPV/Tables/CFG_COMMON_PROFILE.sql";
@"&FOLDER_PATH/TransformPV/Tables/CFG_E2B_DECODE_VIEW.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_CFG_TRASFORM_PROFILES.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_CFG_TRASFORM_PROFILES_HIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_CFG_USERS.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_LDAP_SERVERS.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_R2R3MAPPING.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_R2R3MAPPING_HIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_R3_CFG_AGENCY.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_R3_CFG_AGENCY_HIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_R3_CFG_SYSTEM.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_R3_CFG_SYSTEM_HIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_TRANSFORM_STATUS.sql";
@"&FOLDER_PATH/TransformPV/Tables/ETL_CFG_PROCS.sql";
@"&FOLDER_PATH/TransformPV/Tables/ETL_CFG_USER_GROUPS.sql";
@"&FOLDER_PATH/TransformPV/Tables/ETL_CONSTANTS.sql";
@"&FOLDER_PATH/TransformPV/Tables/ETL_EXECUTION_LOG.sql";
@"&FOLDER_PATH/TransformPV/Tables/ETL_LOAD_WINDOW.sql";
@"&FOLDER_PATH/TransformPV/Tables/ETL_MASTER.sql";
@"&FOLDER_PATH/TransformPV/Tables/ETL_TRACE_LOG.sql";
@"&FOLDER_PATH/TransformPV/Tables/GT_AUDIT_LOG_PAGE_ENTITY.sql";
@"&FOLDER_PATH/TransformPV/Tables/GT_AUDIT_LOG_REVISION_DETAILS.sql";
@"&FOLDER_PATH/TransformPV/Tables/GT_DECODE_VIEW_LIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/R2R3_NULL_FLAVOUR_MAPPING.sql";
@"&FOLDER_PATH/TransformPV/Tables/R2_FACTORY_DATA.sql";
@"&FOLDER_PATH/TransformPV/Tables/R3_FACTORY_DATA.sql";
@"&FOLDER_PATH/TransformPV/Tables/SAFETYREPORT_R3VIEW.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_CFG_COLOR_MAP.sql";
@"&FOLDER_PATH/TransformPV/Tables/CFG_E2B_DECODE_VIEW_R3.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_ARGUS_FIELD_MAPPING.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_CFG_AUDIT_TAB_RELATIONS.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_SYS_PAGE_MASTER.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_CFG_USERS_HIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_CFG_COLOR_MAP_HIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/ETL_MASTER_HIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_LDAP_SERVERS_HIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/R2_FACTORY_DATA_HIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/R2R3_NULL_FLAVOUR_MAP_HIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_CMN_FLAG_LOOKUP.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_CMN_ERROR_MESSAGES.sql";
@"&FOLDER_PATH/TransformPV/Tables/GT_VERSION_DTL_TEMP.sql";
@"&FOLDER_PATH/TransformPV/Tables/GT_AUDIT_VERSION_DTL.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_CMN_FIELDS.sql";
@"&FOLDER_PATH/TransformPV/Tables/ETL_CFG_USER_GROUPS_HIST.sql";
@"&FOLDER_PATH/TransformPV/Tables/E2B_IMPORT_QUEUE.sql";

@"&FOLDER_PATH/TransformPV/Constraints/CONSTRAINTS.sql"

@"&FOLDER_PATH/TransformPV/Synonym/Synonyms.sql";

@"&FOLDER_PATH/TransformPV/Grants/Grants.sql";

@"&FOLDER_PATH/TransformPV/Views/VW_USER_DIFF.sql";
@"&FOLDER_PATH/TransformPV/Views/VW_LATEST_ETL_RUN_MONITOR.sql";
@"&FOLDER_PATH/TransformPV/Views/VW_ALL_ETL_RUN_MONITOR.sql";
--@"&FOLDER_PATH/TransformPV/Views/VW_AGENCY_DIFF.sql";
@"&FOLDER_PATH/TransformPV/Views/VW_LM_COUNTRIES.sql";
@"&FOLDER_PATH/TransformPV/Views/VW_CL_DEVICE_OPERATOR.sql";
@"&FOLDER_PATH/TransformPV/Views/VW_MEDDRA_PREF_TERM_LLT.sql";
@"&FOLDER_PATH/TransformPV/Views/VW_LM_REPORTER_TYPE.sql";
@"&FOLDER_PATH/TransformPV/Views/VW_MEDDRA_PREF_TERM.sql";

@"&FOLDER_PATH/TransformPV/Procedures/P_ETL_CFG_USER_GROUPS_HIST.sql";

@"&FOLDER_PATH/TransformPV/Packages/PKG_COMMON_UTILITIES.sql";
@"&FOLDER_PATH/TransformPV/Packages/PKG_CONTEXT_API.sql";
@"&FOLDER_PATH/TransformPV/Packages/PKG_AUDIT_LOG.sql";
@"&FOLDER_PATH/TransformPV/Packages/PKG_USER_MANAGEMENT.sql";
@"&FOLDER_PATH/TransformPV/Packages/PKG_ETL_MAIN.sql";
@"&FOLDER_PATH/TransformPV/Packages/PKG_E2B_TRANSFORMER.sql";
@"&FOLDER_PATH/TransformPV/Packages/PKG_E2B_R2R3MAPPING.sql";
@"&FOLDER_PATH/TransformPV/Packages/PKG_E2BR2R3_ETL.sql";
@"&FOLDER_PATH/TransformPV/Packages/PKG_LOGGER.sql";
@"&FOLDER_PATH/TransformPV/Packages/PKG_LDAP.sql";

@"&FOLDER_PATH/TransformPV/PackageBodies/PKG_LOGGER.sql";
@"&FOLDER_PATH/TransformPV/PackageBodies/PKG_COMMON_UTILITIES.sql";
@"&FOLDER_PATH/TransformPV/PackageBodies/PKG_USER_MANAGEMENT.sql";
@"&FOLDER_PATH/TransformPV/PackageBodies/PKG_ETL_MAIN.sql";
@"&FOLDER_PATH/TransformPV/PackageBodies/PKG_E2B_TRANSFORMER.sql";
@"&FOLDER_PATH/TransformPV/PackageBodies/PKG_E2B_R2R3MAPPING.sql";
@"&FOLDER_PATH/TransformPV/PackageBodies/PKG_E2BR2R3_ETL.sql";
@"&FOLDER_PATH/TransformPV/PackageBodies/PKG_CONTEXT_API.sql";
@"&FOLDER_PATH/TransformPV/PackageBodies/PKG_AUDIT_LOG.sql";
@"&FOLDER_PATH/TransformPV/PackageBodies/PKG_LDAP.sql";

Conn &TRANSFORMPV_USER/&TRANSFORMPV_USER_PASSWORD@&DATABASE_SERVICE_NAME

@"&FOLDER_PATH/TransformPV/SchedulerJobs/IMPORT_DATA_SCHEDULER.sql";

Conn &SYSTEM_USER/&SYSTEM_USER_PASSWORD@&DATABASE_SERVICE_NAME

@"&FOLDER_PATH/TransformPV/Triggers/TRG_E2B_CFG_COLOR_MAP.sql";
@"&FOLDER_PATH/TransformPV/Triggers/TRG_E2B_CFG_TRASFORM_PROFILES.sql";
@"&FOLDER_PATH/TransformPV/Triggers/TRG_E2B_CFG_USERS.sql";
@"&FOLDER_PATH/TransformPV/Triggers/TRG_E2B_LDAP_SERVERS.sql";
@"&FOLDER_PATH/TransformPV/Triggers/TRG_E2B_R2R3MAPPING.sql";
@"&FOLDER_PATH/TransformPV/Triggers/TRG_E2B_R3_CFG_AGENCY.sql";
@"&FOLDER_PATH/TransformPV/Triggers/TRG_E2B_R3_CFG_SYSTEM.sql";
@"&FOLDER_PATH/TransformPV/Triggers/TRG_ETL_CFG_USER_GROUPS.sql";
@"&FOLDER_PATH/TransformPV/Triggers/TRG_ETL_MASTER.sql";
@"&FOLDER_PATH/TransformPV/Triggers/TRG_R2_FACTORY_DATA.sql";
@"&FOLDER_PATH/TransformPV/Triggers/TRG_R2R3_NULL_FLAVOUR_MAPPING.sql";


@"&FOLDER_PATH/TransformPV/FactoryData/FactoryDataLoad_Build.sql";
