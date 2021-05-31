@"&FOLDER_PATH\Upgrade\Tables\E2B_CFG_USERS.sql";
@"&FOLDER_PATH\Upgrade\Tables\E2B_CFG_USERS_HIST.sql";
@"&FOLDER_PATH\Upgrade\Tables\E2B_CFG_COLOR_MAP.sql";
@"&FOLDER_PATH\Upgrade\Tables\E2B_CFG_COLOR_MAP_HIST.sql";
@"&FOLDER_PATH\Upgrade\Tables\E2B_IMPORT_QUEUE.sql";
@"&FOLDER_PATH\Upgrade\Tables\E2B_R3VIEW_STATUS.sql";
@"&FOLDER_PATH\Upgrade\Tables\CFG_E2B_DECODE_VIEW_R3.SQL";

@"&FOLDER_PATH\Upgrade\Constraints\E2B_R3VIEW_STATUS.sql";
@"&FOLDER_PATH\Upgrade\Constraints\E2B_IMPORT_QUEUE.sql";


@"&FOLDER_PATH\Upgrade\Packages\PKG_USER_MANAGEMENT.sql";
@"&FOLDER_PATH\Upgrade\Packages\PKG_E2B_TRANSFORMER.sql";
@"&FOLDER_PATH\Upgrade\Packages\PKG_E2B_R2R3MAPPING.sql";

@"&FOLDER_PATH\Upgrade\PackageBodies\PKG_USER_MANAGEMENT.sql";
@"&FOLDER_PATH\Upgrade\PackageBodies\PKG_E2B_TRANSFORMER.sql";
@"&FOLDER_PATH\Upgrade\PackageBodies\PKG_E2B_R2R3MAPPING.sql";
@"&FOLDER_PATH\Upgrade\PackageBodies\PKG_AUDIT_LOG.sql";


@"&FOLDER_PATH\Upgrade\Triggers\TRG_E2B_CFG_COLOR_MAP.sql";
@"&FOLDER_PATH\Upgrade\Triggers\TRG_E2B_CFG_USERS.sql";
@"&FOLDER_PATH\Upgrade\Triggers\TRG_E2B_R3_CFG_SYSTEM.sql";


@"&FOLDER_PATH\Upgrade\FactoryData\FactoryDataLoad_Build.sql";

--EXEC DBMS_UTILITY.compile_schema(schema => '&TRANSFORMPV_USER');