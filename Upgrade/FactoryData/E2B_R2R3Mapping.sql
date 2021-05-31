update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set r3_xpath='ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:text/ns:reference/@value'
where r3_element_num='C.4.r.2' and profile_id=1;

update &TRANSFORMPV_USER..e2b_r2r3mapping
set r2_element_num = 'B.3.1.3.x1',
r2_element = 'Comments',
r2_xpath = 'labcomments_extension'
where r3_element_num = 'F.r.6' 
and profile_id = 1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set r2_element_num='B.1.x15'
where r3_element_num='D.7.3' and profile_id=1;

delete from &TRANSFORMPV_USER..e2b_r2r3mapping
where R2_ELEMENT_NUM in ('B.4.k.17.2a','B.4.k.17.2b')
and profile_id = 1;

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, 
    CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER)
Values
   ('B.4.k.17.2a', 'MedDRA version for reaction(s)/event(s) recurred', 'drugrecuractionmeddraversion', 'G.k.9.i.4.1', 'Reaction Recur Action', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.16'']/@code', 1, 33200, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval, 1, 
    sysdate, 1, sysdate, 0, 0);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, 
    CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER)
Values
   ('B.4.k.17.2b', 'If yes, which reaction(s)/event(s) recurred?', 'drugrecuraction', 'G.k.9.i.4.2', 'Reaction Id', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''REFR'']/ns:actReference[@classCode=''ACT''][@moodCode=''EVN'']/ns:id/@root|//ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:id[@root=''reactionid'']]/ns:value[@xsi:type=''CE'']/@code', 1, 33300, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval, 1, 
    sysdate, 1, sysdate, 0, 0);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, PROFILE_ID, SORT_ID, SEQ_NUM, 
    CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, 
    HEADER)
Values
   ('B.4.k.17.2', 'Drug Recurrance', 'drugrecurrence', 'G.k.9.i.4', 'Did Reaction Recur on Re-administration?', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:outboundRelationship1[@typeCode=''REFR'']/ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''UUID of i-th reaction'']]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.16''][1]/@nullFlavor', 1, 33150, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval, 
    1, sysdate, 1, sysdate, 0, 
    2);
update &TRANSFORMPV_USER..e2b_r2r3mapping set r3_null_xpath='ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:productInstanceInstance[@classCode=''MMAT''][@determinerCode=''INSTANCE'']/ns:lotNumberText/@nullFlavor' where r3_element_num = 'G.k.4.r.7' and profile_id=1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set R3_XPATH='ns:controlActEvent/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.2''][1]/@extension'
where r3_element_num='C.1.10.r' and profile_id=1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set R3_XPATH='/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:outboundRelationship[@typeCode=''SPRT'']/ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:controlActEvent/ns:id]'
where r3_element_num='C.1.10' and profile_id=1;

UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
SET R3_NULL_XPATH = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor'
WHERE R3_ELEMENT_NUM = 'G.k.4.r.4'
AND PROFILE_ID = 1;

UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
SET R3_NULL_XPATH = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor'
WHERE R3_ELEMENT_NUM = 'G.k.4.r.5'
AND PROFILE_ID = 1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set r3_null_xpath = 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value,''tel:'')][1]/@nullFlavor'
where r3_element_num = 'C.2.r.2.7' and profile_id=1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set deleted=0 where R2_element_num = 'A.1.5.2' and profile_id=1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set 
r3_xpath ='ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:low/@value',
r3_null_xpath='ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor'
where r3_element_num = 'E.i.4' and profile_id=1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set 
r3_xpath =
'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:high/@value',
r3_null_xpath='ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor'
where r3_element_num = 'E.i.5' and profile_id=1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set 
r3_xpath =
'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@value',
r3_null_xpath='ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@nullFlavor|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@nullFlavor'
where r3_element_num = 'E.i.6a' and profile_id=1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set 
r3_xpath =
'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@unit|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@unit',
r3_null_xpath='ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@nullFlavor|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@nullFlavor'
where r3_element_num = 'E.i.6b' and profile_id=1;

UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
SET R3_NULL_XPATH = '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:investigationCharacteristic/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@nullFlavor'
WHERE R3_ELEMENT_NUM = 'C.1.9.1'
AND PROFILE_ID = 1;

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.1.8a.x1', 'Name of Drug as Reporter', 'patientdrugname_extension', 'D.8.r.x', 'Refer to D.8.r', 
    NULL, NULL, NULL, 1, 17310, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval, 1, sysdate, 1,sysdate, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.1.10.8a.x1', 'Name of drug as reported', 'parentdrugname_extension', 'D.10.8.r.x', 'Please refer to D.10.8.r', 
    NULL, NULL, NULL, 1, 22210, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval, 1, sysdate, 1, sysdate, 
    0, 0, NULL);

	
UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
SET DELETED = 1 WHERE R2_ELEMENT_NUM  IN ('B.4.k.17.1', 'B.4.k.17.2a','B.4.k.17.2b','B.4.k.17.2') AND PROFILE_ID = 1;

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.17.1', 'Did Reaction Recur on Readministration?', 'drugrecurreadministration', NULL, NULL, 
    NULL, NULL, NULL, 1, 33140, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval, 1, sysdate, 1,sysdate, 
    0, 0, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.17.2', 'Drug Recurrance', 'drugrecurrence', 'G.k.9.i.4', 'Did Reaction Recur on Re-administration?', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]',
	'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:outboundRelationship1[@typeCode=''REFR'']/ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''UUID of i-th reaction'']]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.16''][1]/@nullFlavor', 
	NULL, 1, 33150, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval, 1, sysdate, 1,sysdate, 
    0, 2, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.17.2a', 'MedDRA version for reaction(s)/event(s) recurred', 'drugrecuractionmeddraversion', 'G.k.9.i.4.x', 'Reaction Recur Action', 
    NULL, NULL, NULL, 1, 33200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval, 1, sysdate, 1,sysdate, 
    0, 0, NULL);
	
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.17.2b', 'If yes, which reaction(s)/event(s) recurred?', 'drugrecuraction', 'G.k.9.i.4.x', 'Reaction Id', 
    NULL, NULL, NULL, 1, 33300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval, 1, sysdate, 1,sysdate, 
    0, 0, NULL);
	
DELETE FROM &TRANSFORMPV_USER..E2B_R2R3MAPPING WHERE PROFILE_ID =1 AND R2_ELEMENT_NUM IN ('B.4.k.17.1','B.4.k.17.2a','B.4.k.17.2b','B.4.k.17.2');


Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
('B.4.k.17.1',	'Did Reaction Recur on Readministration?',	'drugrecurreadministration',	'G.k.9.i.4',	'Did Reaction Recur on Re-administration?',
'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.16'']/@code',
	NULL, NULL, 1,	33140,	&TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval, 1, sysdate, 1, sysdate, 0, 0, NULL);	
	
	
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values	
	('B.4.k.17.2',	'Drug Recurrance',	'drugrecurrence',	'G.k.9.i.4x',	'Did Reaction Recur on Re-administration?',	
	'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]',
	'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:outboundRelationship1[@typeCode=''REFR'']/ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''UUID of i-th reaction'']]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.16''][1]/@nullFlavor',NULL,1,	33150,	&TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval,	1,	sysdate, 1, sysdate, 0,	2, NULL);	
	

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
	('B.4.k.17.2a',	'MedDRA version for reaction(s)/event(s) recurred',	'drugrecuractionmeddraversion',	'G.k.9.i.4x.1',	'Reaction Recur Action',	
    NULL,NULL,NULL,	1,	33200,	&TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval,	1,	sysdate,	1,	sysdate,	0,	0, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
	('B.4.k.17.2b',	'If yes, which reaction(s)/event(s) recurred?',	'drugrecuraction',	'G.k.9.i.4x.2',	'Reaction Id',
 NULL,NULL,NULL,	1,	33300,	&TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval,	1,	sysdate,	1,	sysdate,	0,	0, NULL);	
		
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set R3_XPATH ='/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:name[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.1'']/@code|/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:name[@codeSystem=''2.16.840.1.113883.3.989.5.1.1.5.1'']/@code'
 where R2_XPATH = 'messagetype' AND PROFILE_ID = 1;		

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set R2_ELEMENT = 'Name of Drug as Reported'
where profile_id = 1 and r2_element_num = 'B.1.8a.x1';
 
update &TRANSFORMPV_USER..e2b_r2r3mapping set r2_element ='Identification of the country of the primary source' 
where r2_element_num = 'A.1.1' and profile_id=1; 
 
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values    
    (NULL,    NULL,    NULL,    'G.k.10',    'Additional Information on Drug (coded)',    
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''REFR''][ns:observation/ns:code[@code=''9''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]',
    NULL,NULL,1, 32410,    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval,    1,    sysdate, 1, sysdate, 0,    2, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values    
    ('B.4.k.19.x',    'Refer to B.4.k.19',    NULL,    'G.k.10.r','Additional Information on Drug (coded)', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE'']/@code',
    NULL,NULL,1, 32420,    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval,    1,    sysdate, 1, sysdate, 0,    0, NULL);      
 
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r2_element = 'Date format' where R2_ELEMENT_NUM = 'B.3.1a' and profile_id =1;
 
UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING SET R3_NULL_XPATH = 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor' 
WHERE R3_ELEMENT_NUM = 'D.10.7.1.r.2' AND PROFILE_ID=1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set  R3_XPATH = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS'']/ns:period/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS''][@operator=''A'']/ns:period/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''PIVL_TS'']/ns:period/@value'  where PROFILE_ID =1 and R3_ELEMENT_NUM = 'G.k.4.r.2';
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set  R3_XPATH = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS'']/ns:period/@unit|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS''][@operator=''A'']/ns:period/@unit|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''PIVL_TS'']/ns:period/@unit'  where PROFILE_ID =1 and R3_ELEMENT_NUM = 'G.k.4.r.3';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r2_element = 'Refer to B.5.1' where r3_element_num like '%EU.1%' ;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration]', header = 1 where profile_id = 1 and r3_element_num ='G.k.4.r';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:doseQuantity/@value', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.1a';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:doseQuantity/@unit', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.1b';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS''][@operator=''A'']/ns:period/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''PIVL_TS'']/ns:period/@value', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.2';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:low/@value', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.4';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:high/@value', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.5';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@value', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.6a';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@unit', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.6b';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:productInstanceInstance[@classCode=''MMAT''][@determinerCode=''INSTANCE'']/ns:lotNumberText/text()', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.7';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:text/text()', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.8';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = NULL, header = 1 where profile_id = 1 and r3_element_num ='G.k.4.r.9';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode/ns:originalText/text()', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.9.1';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode[@codeSystem=''TBD-DoseForm'']/@codeSystemVersion', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.9.2a';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode[@codeSystem=''TBD-DoseForm'']/@code', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.9.2b';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = NULL, header = 1 where profile_id = 1 and r3_element_num ='G.k.4.r.10';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/ns:originalText/text()', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.10.1';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/@codeSystemVersion', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.10.2a';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/@code', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.10.2b';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = NULL, header = 1 where profile_id = 1 and r3_element_num ='G.k.4.r.11';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/ns:originalText/text()', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.11.1';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/@codeSystemVersion', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.11.2a';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/@code', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.11.2b';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS''][@operator=''A'']/ns:period/@unit|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''PIVL_TS'']/ns:period/@unit', header = 0 where profile_id = 1 and r3_element_num ='G.k.4.r.3';


update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]', header = 1 where profile_id = 1 and r3_element_num ='G.k.7.r';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']][1]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/text()', header = 0 where profile_id = 1 and r3_element_num ='G.k.7.r.1';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']][1]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', header = 0 where profile_id = 1 and r3_element_num ='G.k.7.r.2a';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']][1]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', header = 0 where profile_id = 1 and r3_element_num ='G.k.7.r.2b';

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
 (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values(NULL,NULL,NULL,'G.k.2.2.EU.9.r.1','Device Component Name (free text)','ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:productInstanceInstance[@classCode=''MMAT''][@determinerCode=''INSTANCE'']/ns:part[@classCode=''PART'']/ns:partDeviceInstance[@classCode=''DEV'']/ns:asInstanceOfKind/ns:kindOfMaterialKind/ns:name/text()',NULL,NULL,1,27710,&TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval,1,sysdate,1,sysdate,0,0,NULL);

 
 
  Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
 (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values(NULL,NULL,NULL,'G.k.2.2.EU.9.r.2','Device Component TermID version Date/Number','ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:productInstanceInstance[@classCode=''MMAT''][@determinerCode=''INSTANCE'']/ns:part[@classCode=''PART'']/ns:partDeviceInstance[@classCode=''DEV'']/ns:asInstanceOfKind/ns:kindOfMaterialKind/ns:code/@codeSystemVersion',NULL,NULL,1,27720,&TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval,1,sysdate,1,sysdate,0,0,NULL);
 
 
  Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
 (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values(NULL,NULL,NULL,'G.k.2.2.EU.9.r.3','Device Component TermID','ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:productInstanceInstance[@classCode=''MMAT''][@determinerCode=''INSTANCE'']/ns:part[@classCode=''PART'']/ns:partDeviceInstance[@classCode=''DEV'']/ns:asInstanceOfKind/ns:kindOfMaterialKind/ns:code/@code',NULL,NULL,1,27730,&TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.nextval,1,sysdate,1,sysdate,0,0,NULL);
 
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:doseQuantity/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:doseCheckQuantity[ns:denominator[@xsi:type=''PQ''][@nullFlavor=''UNK'']]/ns:numerator[@xsi:type=''PQ'']/@value' where r3_element_num ='G.k.4.r.1a' and profile_id =1;
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:doseQuantity/@unit|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:doseCheckQuantity[ns:denominator[@xsi:type=''PQ''][@nullFlavor=''UNK'']]/ns:numerator[@xsi:type=''PQ'']/@unit' where r3_element_num ='G.k.4.r.1b' and profile_id =1;
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS'']/ns:period/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS''][@operator=''A'']/ns:period/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''PIVL_TS'']/ns:period/@value' where r3_element_num ='G.k.4.r.2' and profile_id =1;
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS'']/ns:period/@unit|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS''][@operator=''A'']/ns:period/@unit|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''PIVL_TS'']/ns:period/@unit' where r3_element_num ='G.k.4.r.3' and profile_id =1;
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:low/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:low/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', r3_null_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:low/@nullFlavor|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor' where r3_element_num ='G.k.4.r.4' and profile_id =1;
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:high/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:high/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value', r3_null_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:high/@nullFlavor|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor' where r3_element_num ='G.k.4.r.5' and profile_id =1;
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:width/@value|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@value' where r3_element_num ='G.k.4.r.6a' and profile_id =1;
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@unit|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:width/@unit|ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@unit' where r3_element_num ='G.k.4.r.6b' and profile_id =1;

update &TRANSFORMPV_USER..e2b_r2r3mapping set r3_xpath = 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:low/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:low/@value', r3_null_xpath = 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:low/@nullFlavor' where r3_element_num ='E.i.4' and profile_id =1;



update &TRANSFORMPV_USER..e2b_r2r3mapping set r3_xpath = 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:high/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:high/@value', r3_null_xpath = 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:high/@nullFlavor' where r3_element_num ='E.i.5' and profile_id =1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:width/@value' where r3_element_num ='E.i.6a' and profile_id =1;
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_xpath = 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@unit|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@unit|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS''][@operator=''A'']/ns:width/@unit' where r3_element_num ='E.i.6b' and profile_id =1;

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_null_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode/ns:originalText/@nullFlavor' where r3_element_num ='G.k.4.r.9.1' and profile_id =1;
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_null_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/ns:originalText/@nullFlavor' where r3_element_num ='G.k.4.r.10.1' and profile_id =1;
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_null_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/ns:originalText/@nullFlavor' where r3_element_num ='G.k.4.r.11.1' and profile_id =1;
update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_null_xpath = 'ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']][1]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/@nullFlavor' where r3_element_num ='G.k.7.r.1' and profile_id =1;

 
update &TRANSFORMPV_USER..e2b_r2r3mapping set deleted =1 where r2_element_num = 'B.2.i.x7' and profile_id =24;

update &TRANSFORMPV_USER..e2b_r2r3mapping set r2_element_num = 'B.2.i.x7a',r2_element = 'VAERS Outcome - Emergency Room', r2_xpath = 'evtemergencyroom_extension'  where r3_element_num = 'E.i.3.2.x1' and profile_id =24;

update &TRANSFORMPV_USER..e2b_r2r3mapping set r2_element_num = 'B.2.i.x7b',r2_element = 'VAERS Outcome - Physician Office', r2_xpath = 'evtphysicianroom_extension'  where r3_element_num = 'E.i.3.2.x2' and profile_id =24;


Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, 
   CREATED_DATE, MODIFIED_BY, MODIFIED_DATE,
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.13.1', 'Onset Latency ', 'drugrecurrence', 'G.k.9.i.5', 'Onset Latency ', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''SAS'']', NULL, NULL, 24, 35450, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);

update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set R2_XPATH = 'drugstartperiod_extension', R3_ELEMENT_NUM = 'G.k.9.i.5a', R3_XPATH ='ns:pauseQuantity/@value' , sort_id = 35460 
where profile_id =24 and R2_ELEMENT_NUM = 'B.4.k.13.1a';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set R2_XPATH = 'drugstartperiodunit_extension', R3_ELEMENT_NUM = 'G.k.9.i.5b', R3_XPATH ='ns:pauseQuantity/@unit' , sort_id = 35470 
where profile_id =24 and R2_ELEMENT_NUM = 'B.4.k.13.1b';


Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, 
   CREATED_DATE, MODIFIED_BY, MODIFIED_DATE,
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.13.2', 'Drug Last Period', 'drugrecurrence', 'G.k.9.i.6', 'Drug Last Period', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''SAE'']', NULL, NULL, 24, 35490, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE,
    0, 2, NULL);

update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set R2_XPATH = 'druglastperiod_extension', R3_ELEMENT_NUM = 'G.k.9.i.6a', R3_XPATH ='ns:pauseQuantity/@value' , sort_id = 35500 
where profile_id =24 and R2_ELEMENT_NUM = 'B.4.k.13.2a';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set R2_XPATH = 'druglastperiodunit_extension', R3_ELEMENT_NUM = 'G.k.9.i.6b', R3_XPATH ='ns:pauseQuantity/@unit' , sort_id = 35510 
where profile_id =24 and R2_ELEMENT_NUM = 'B.4.k.13.2b';

delete from &TRANSFORMPV_USER..E2B_R2R3MAPPING where R3_ELEMENT_NUM = 'G.k.9.i.4' and r2_element_num = 'B.4.k.17.2';

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, 
   CREATED_DATE, MODIFIED_BY, MODIFIED_DATE,
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.17', 'Drug Recurrence', 'drugrecurrence', 'G.k.9.i.4', 'Drug Recurrence', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:outboundRelationship1[@typeCode=''REFR'']/ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''UUID of i-th reaction'']]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.16''][1]/@nullFlavor', NULL, 24, 35410, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE,
    0, 2, NULL);


update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set R2_XPATH = 'rechallenge_extension', R3_ELEMENT_NUM = 'G.k.9.i.4.1', R3_ELEMENT = 'Did Reaction Recur on Re-administration?', 
R3_XPATH ='ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.16'']/@code' , 
R3_NULL_XPATH='ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:outboundRelationship1[@typeCode=''REFR'']/ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''UUID of i-th reaction'']]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.16''][1]/@nullFlavor',
sort_id = 35420 
where profile_id =24 and R2_ELEMENT_NUM = 'B.4.k.17.1';



update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set  R3_ELEMENT_NUM = 'G.k.9.i.4.2a', R3_ELEMENT = 'Reaction Recur Action', 
R3_XPATH ='ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''REFR'']/ns:actReference[@classCode=''ACT''][@moodCode=''EVN'']/ns:id/@root|//ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:id[@root=''reactionid'']]/ns:value[@xsi:type=''CE'']/@codeSystemVersion' , 
sort_id = 35430 
where profile_id =24 and R2_ELEMENT_NUM = 'B.4.k.17.2a';


update &TRANSFORMPV_USER..E2B_R2R3MAPPING
set  R3_ELEMENT_NUM = 'G.k.9.i.4.2b', R3_ELEMENT = 'Reaction Id', 
sort_id = 35440 
where profile_id =24 and R2_ELEMENT_NUM = 'B.4.k.17.2b';


Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, 
   CREATED_DATE, MODIFIED_BY, MODIFIED_DATE,
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.9.i.5c', 'Reaction Id', 
    'ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id/@root|//ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:id[@root=''reactionid'']]/ns:value[@xsi:type=''CE'']/@code', NULL, NULL, 24, 35480, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE,
    0, 0, NULL);


Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, 
   CREATED_DATE, MODIFIED_BY, MODIFIED_DATE,
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.9.i.6c', 'Reaction Id', 
    'ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id/@root|//ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:id[@root=''reactionid'']]/ns:value[@xsi:type=''CE'']/@code', NULL, NULL, 24, 35520, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE,
    0, 0, NULL);

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_null_xpath = 'ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP'']/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:approachSiteCode[@codeSystem=''2.16.840.1.113883.3.26.1.1'']/@nullFlavor'  where profile_id =24 and r2_xpath = 'vaerslocation_extension';

update &TRANSFORMPV_USER..E2B_R2R3MAPPING set r3_null_xpath = 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:approachSiteCode[@codeSystem=''2.16.840.1.113883.3.26.1.1'']/@nullFlavor'  where profile_id =24 and r2_xpath = 'anatomicallocation_extension';

UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R2_ELEMENT_NUM = 'B.1.7.1x',
       R2_ELEMENT = 'Patient Medical Family History',
       R2_XPATH = 'familyhistory_extension'
WHERE R3_ELEMENT_NUM = 'D.7.1.r.6' AND PROFILE_ID = 1;


UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R3_NULL_XPATH ='/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:investigationCharacteristic/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@nullFlavor'
WHERE R3_ELEMENT_NUM = 'C.1.9.1' AND PROFILE_ID = 24;

UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R2_ELEMENT_NUM = 'A.2.1.x1',
       R2_ELEMENT = 'Reporter''s Email',
       R2_XPATH = 'reporteremail_extension'
WHERE R3_ELEMENT_NUM = 'C.2.r.2.x' AND PROFILE_ID = 24;

UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R2_ELEMENT_NUM = NULL, R2_ELEMENT = NULL, R2_XPATH = NULL
WHERE R3_ELEMENT_NUM = 'E.i.8' AND PROFILE_ID = 24;
 
 
UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R2_ELEMENT = 'Illness at the Time of Vaccination',
       R3_ELEMENT = 'Illness at the Time of Vaccination'
WHERE     R3_ELEMENT_NUM = 'D.7.1.x.2'
       AND R2_ELEMENT_NUM = 'B.1.7.x.3'
       AND PROFILE_ID = 24;                  

UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R2_ELEMENT_NUM = NULL, R2_ELEMENT = NULL, R2_XPATH = NULL
WHERE R3_ELEMENT_NUM = 'E.i.x4.1' AND PROFILE_ID = 24;
 
 UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R2_ELEMENT_NUM = NULL, R2_ELEMENT = NULL, R2_XPATH = NULL
WHERE R3_ELEMENT_NUM = 'E.i.x4.2' AND PROFILE_ID = 24;

 
 UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R2_ELEMENT_NUM = NULL, R2_ELEMENT = NULL, R2_XPATH = NULL
WHERE R3_ELEMENT_NUM = 'E.i.x4.3' AND PROFILE_ID = 24;


UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R3_NULL_XPATH ='ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C50414''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT'']/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG'']/ns:name/@nullFlavor'
WHERE R3_ELEMENT_NUM = 'E.i.x4.1' AND PROFILE_ID = 24;



UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R3_NULL_XPATH ='ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C50414''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT'']/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG'']/ns:addr/ns:city/@nullFlavor'
WHERE R3_ELEMENT_NUM = 'E.i.x4.2' AND PROFILE_ID = 24;


UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R3_NULL_XPATH ='ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C50414''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT'']/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG'']/ns:addr/ns:state/@nullFlavor'
WHERE R3_ELEMENT_NUM = 'E.i.x4.3' AND PROFILE_ID = 24;

UPDATE &TRANSFORMPV_USER..E2B_R2R3MAPPING
   SET R2_ELEMENT_NUM = 'A.2.2.x1',
       R2_ELEMENT = 'List of Literature Article (E2B)',
       R2_XPATH = 'litattachment_extension'
WHERE R3_ELEMENT_NUM = 'C.4.r.2' AND PROFILE_ID = 24;



COMMIT;

	