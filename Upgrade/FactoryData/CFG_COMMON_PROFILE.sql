 Insert into &TRANSFORMPV_USER..CFG_COMMON_PROFILE
   (PROFILE_ID, PROFILE_NAME, KEY, VALUE, DELETED)
 Values
   (5, 'TRANSFORMPV_IMPORT_JOB', 'IMPORT_CASE_ATTACHMENT', '1', 0);
Insert into &TRANSFORMPV_USER..CFG_COMMON_PROFILE
   (PROFILE_ID, PROFILE_NAME, KEY, VALUE, DELETED)
 Values
   (6, 'ARGUS_CASE_ATTACHMENT_CLASSIFICATION', 'IMPORT_CASE_ATTACH_CLASS', '1', 0); 

update &TRANSFORMPV_USER..CFG_COMMON_PROFILE set key = 'IMPORT_CASE_ATTACH_CL_LR' WHERE profile_id=6;
insert into &TRANSFORMPV_USER..CFG_COMMON_PROFILE(profile_id,profile_name,key,value,deleted) 
values (7,'ARGUS_CASE_ATTACHMENT_CLASSIFICATION','IMPORT_CASE_ATTACH_CL_DHS',1,0);
   