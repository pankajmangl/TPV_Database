Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1', 'ICH ICSR Message Header', 'ichicsrmessageheader', 'N.1', 'ICH ICSR Transmission Identification (batch wrapper)', 
    NULL, NULL, NULL, 1, 100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.1', 'Message Type', 'messagetype', 'N.1.1', 'Type of Messages in Batch', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:name[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.1'']/@code', NULL, NULL, 1, 200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.2', 'Message Format Version', 'messageformatversion', NULL, NULL, 
    NULL, NULL, NULL, 1, 300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.3', 'Message Format Release', 'messageformatrelease', NULL, NULL, 
    NULL, NULL, NULL, 1, 400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.4', 'Message Number', 'messagenumb', 'N.1.2', 'Batch Number', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.22'']/@extension', NULL, NULL, 1, 500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.5', 'Message Sender Identifier', 'messagesenderidentifier', 'N.1.3', 'Batch Sender Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:sender[@typeCode=''SND'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.13''][1]/@extension', NULL, NULL, 1, 600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.6', 'Message Receiver Identifier', 'messagereceiveridentifier', 'N.1.4', 'Batch Receiver Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:receiver[@typeCode=''RCV'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.14''][1]/@extension', NULL, NULL, 1, 700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.7a', 'Message Date (Format)', 'messagedateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.7b', 'Message Date', 'messagedate', 'N.1.5', 'Date of Batch Transmission', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:creationTime/@value', NULL, NULL, 1, 900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'N.2.r', 'ICH ICSR Message Header (message wrapper) (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV', NULL, NULL, 1, 1000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'N.2.r.1', 'Message Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.1''][1]/@extension', NULL, NULL, 1, 1100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'N.2.r.2', 'Message Sender Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:sender[@typeCode=''SND'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.11''][1]/@extension', NULL, NULL, 1, 1200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'N.2.r.3', 'Message Receiver Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:receiver[@typeCode=''RCV'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.12''][1]/@extension', NULL, NULL, 1, 1300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'N.2.r.4', 'Date of Message Creation', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:creationTime/@value', NULL, NULL, 1, 1400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1', 'Identification of the case safety report', 'safetyreport', 'C.1', 'Identification of the Case Safety Report', 
    NULL, NULL, NULL, 1, 1500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'Safety Report Version Number', 'safetyreportversion', NULL, NULL, 
    NULL, NULL, NULL, 1, 1600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.0.1', 'Sender''s (Case) Safety Report Unique Identifier', 'safetyreportid', 'C.1.1', 'Sender''s (case) Safety Report Unique Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.1''][1]/@extension', NULL, NULL, 1, 1700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.1', 'Identification of the country of the primary', 'primarysourcecountry', NULL, NULL, 
    NULL, NULL, NULL, 1, 1800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.2', 'Identification of the country where the reaction/event occurred', 'occurcountry', NULL, NULL, 
    NULL, NULL, NULL, 1, 1900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.3a', 'Date of this transmission (format)', 'transmissiondateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 2000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.3b', 'Date of this transmission', 'transmissiondate', 'C.1.2', 'Date of Creation', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:effectiveTime/@value', NULL, NULL, 1, 2100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.4', 'Type of report', 'reporttype', 'C.1.3', 'Type of Report', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:investigationCharacteristic/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.2'']/@code', NULL, NULL, 1, 2200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.1', 'Serious', 'serious', NULL, NULL, 
    NULL, NULL, NULL, 1, 2300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Results in death', 'seriousnessdeath', NULL, NULL, 
    NULL, NULL, NULL, 1, 2400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Life threatening', 'seriousnesslifethreatening', NULL, NULL, 
    NULL, NULL, NULL, 1, 2500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Caused/prolonged hospitalization', 'seriousnesshospitalization', NULL, NULL, 
    NULL, NULL, NULL, 1, 2600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Disabling/Incapacitating', 'seriousnessdisabling', NULL, NULL, 
    NULL, NULL, NULL, 1, 2700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Congenital anomaly/birth defect', 'seriousnesscongenitalanomali', NULL, NULL, 
    NULL, NULL, NULL, 1, 2800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Other medically important condition', 'seriousnessother', NULL, NULL, 
    NULL, NULL, NULL, 1, 2900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.6a', 'Date report was first received from source (Format)', 'receivedateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 3000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.6b', 'Date report was first received from source', 'receivedate', 'C.1.4', 'Date Report Was First Received from Source', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:effectiveTime/ns:low/@value', NULL, NULL, 1, 3100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.7a', 'Date of receipt of the most recent information (format)', 'receiptdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 3200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.7b', 'Date of receipt of the most recent information', 'receiptdate', 'C.1.5', 'Date of Most Recent Information for This Report', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:availabilityTime/@value', NULL, NULL, 1, 3300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.8', 'Additional Available Documents Held by Sender (header)', NULL, 'C.1.6', 'Additional Available Documents Held by Sender', 
    NULL, NULL, NULL, 1, 3400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.8.1', 'Are additional documents available', 'additionaldocument', 'C.1.6.1', 'Are Additional Documents Available?', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observationEvent/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', NULL, NULL, 1, 3500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'documentlist', 'C.1.6.1.r', 'Documents Held by Sender (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:reference[@typeCode=''REFR''][ns:document/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.27'']]', NULL, NULL, 1, 3600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.8.2', 'List of documents held by sender', '.', 'C.1.6.1.r.1', 'Documents Held by Sender', 
    'ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:title/text()', NULL, NULL, 1, 3700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.1.6.1.r.2', 'Included Documents', 
    'ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:text/ns:reference/@value', NULL, NULL, 1, 3800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.9', 'Does this case fulfill the local criteria for an expedited report?', 'fulfillexpeditecriteria', 'C.1.7', 'Does This Case Fulfil the Local Criteria for an Expedited Report?', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observationEvent/ns:code[@code=''23''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][observationEvent/ns:code[@code=''23''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@nullFlavor', NULL, 1, 3900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.10', 'Worldwide Unique Case Identification Number (header)', NULL, 'C.1.8', 'Worldwide Unique Case Identification', 
    NULL, NULL, NULL, 1, 4000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.10.1', 'Regulatory authority''s case report number', 'authoritynumb', 'C.1.8.1', 'Worldwide Unique Case Identification Number', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.2''][1]/@extension', NULL, NULL, 1, 4100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.10.2', 'Other sender''s case report number', 'companynumb', 'C.1.8.2', 'First Sender of This Case', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:outboundRelationship[@typeCode=''SPRT''][ns:relatedInvestigation/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.22'']][1]/ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.3'']/@code', NULL, NULL, 1, 4200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.1.9', 'Other Case Identifiers', 
    NULL, NULL, NULL, 1, 4300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.11', 'Other case identifiers in previous transmissions', 'duplicate', 'C.1.9.1', 'Other Case Identifiers in Previous Transmissions', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:investigationCharacteristic/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][investigationCharacteristic/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@nullFlavor', NULL, 1, 4400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'reportduplicate', 'C.1.9.1.r', 'Source(s) of the Case Identifier (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:id]', NULL, NULL, 1, 4500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.11.1', 'Source(s) of the case identifier', 'duplicatesource', 'C.1.9.1.r.1', 'Source(s) of the Case Identifier', 
    'ns:controlActEvent/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.3''][1]/@assigningAuthorityName', NULL, NULL, 1, 4600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.11.2', 'Case identifiers', 'duplicatenumb', 'C.1.9.1.r.2', 'Case Identifier(s)', 
    'ns:controlActEvent/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.3''][1]/@extension', NULL, NULL, 1, 4700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.12', 'Identification number of the report which is linked to this report', 'linkedreport', 'C.1.10', 'Identification Number of the Report Which Is Linked to This Report (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:outboundRelationship[@typeCode=''SPRT''][ns:relatedInvestigation/ns:code/@nullFlavor=''NA'']', NULL, NULL, 1, 4800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.12.1', 'Identification number of the report which is linked to this report', 'linkreportnumb', 'C.1.10.r', 'Identification Number of the Report Which Is Linked to This Report (repeat as necessary)', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.2''][1]/@extension', NULL, NULL, 1, 4900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.1.11', 'Report Nullification / Amendment', 
    NULL, NULL, NULL, 1, 5000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.13', 'Report nullification', 'casenullification', 'C.1.11.1', 'Report Nullification / Amendment', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:investigationCharacteristic/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.5'']/@code', NULL, NULL, 1, 5100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.13.x1', 'Report nullification', 'amendment_extension', 'C.1.11.1', 'Report Nullification / Amendment', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:investigationCharacteristic/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.5'']/@code', NULL, NULL, 1, 5200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.13.1', 'Reason for nullification', 'nullificationreason', 'C.1.11.2', 'Reason for Nullification / Amendment', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:investigationCharacteristic/ns:code[@code=''4''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE'']/ns:originalText/text()', NULL, NULL, 1, 5300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.14', 'Was case medically confirmed, if not initially from health prof.?', 'medicallyconfirm', NULL, NULL, 
    NULL, NULL, NULL, 1, 5400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2', 'Primary source(s) of information', 'primarysource', 'C.2.r', 'Primary Source(s) of Information (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:outboundRelationship[@typeCode=''SPRT''][ns:relatedInvestigation/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.22'']]', NULL, NULL, 1, 5500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1', 'Primary Source(s) (header)', NULL, 'C.2.r.1', 'Reporter''s Name', 
    NULL, NULL, NULL, 1, 5600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1a', 'Reporter title', 'reportertitle', 'C.2.r.1.1', 'Reporter''s Title', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:prefix[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:prefix[1]/@nullFlavor', NULL, 1, 5700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1b', 'Reporter given name', 'reportergivename', 'C.2.r.1.2', 'Reporter''s Given Name', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[1]/@nullFlavor', NULL, 1, 5800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1c', 'Reporter middle name', 'reportermiddlename', 'C.2.r.1.3', 'Reporter''s Middle Name', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[2]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[2]/@nullFlavor', NULL, 1, 5900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1d', 'Reporter family name', 'reporterfamilyname', 'C.2.r.1.4', 'Reporter''s Family Name', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:family[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:family[1]/@nullFlavor', NULL, 1, 6000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.2.r.2', 'Reporter''s Address and Telephone', 
    NULL, NULL, NULL, 1, 6100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2a', 'Reporter organization', 'reporterorganization', 'C.2.r.2.1', 'Reporter''s Organisation', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/@nullFlavor', NULL, 1, 6200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2b', 'Reporter department', 'reporterdepartment', 'C.2.r.2.2', 'Reporter''s Department', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/@nullFlavor', NULL, 1, 6300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2c', 'Reporter''s address-street', 'reporterstreet', 'C.2.r.2.3', 'Reporter''s Street', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:streetAddressLine[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:streetAddressLine[1]/@nullFlavor', NULL, 1, 6400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2d', 'Reporter''s city', 'reportercity', 'C.2.r.2.4', 'Reporter''s City', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:city[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:city[1]/@nullFlavor', NULL, 1, 6500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2e', 'Reporter''s state or province', 'reporterstate', 'C.2.r.2.5', 'Reporter''s State or Province', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:state[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:state[1]/@nullFlavor', NULL, 1, 6600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2f', 'Reporter''s postcode', 'reporterpostcode', 'C.2.r.2.6', 'Reporter''s Postcode', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:postalCode[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:postalCode[1]/@nullFlavor', NULL, 1, 6700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('A.2.1.x1', 'Reporter''s Telephone', 'reporterphone_extension', 'C.2.r.2.7', 'Reporter''s Telephone', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value,''tel:'')][1]/@value', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@nullFlavor,''tel:'')][1]/@nullFlavor', NULL, 1, 6800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.3', 'Reporter country code', 'reportercountry', 'C.2.r.3', 'Reporter''s Country Code', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asLocatedEntity[@classCode=''LOCE''][1]/ns:location[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@code', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asLocatedEntity[@classCode=''LOCE''][1]/ns:location[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@nullFlavor', NULL, 1, 6900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.4', 'Qualification', 'qualification', 'C.2.r.4', 'Qualification', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asQualifiedEntity[@classCode=''QUAL''][1]/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.6'']/@code', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asQualifiedEntity[@classCode=''QUAL''][1]/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.6'']/@nullFlavor', NULL, 1, 7000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.2.r.5', 'Primary Source for Regulatory Purposes', 
    'ns:priorityNumber/@value', 'ns:priorityNumber/@value', NULL, 1, 7100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3', 'Information on Sender and Receiver of Case Safety Report (header)', NULL, 'C.3', 'Information on Sender of Case Safety Report', 
    NULL, NULL, NULL, 1, 7200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1', 'Sender', 'sender', NULL, NULL, 
    NULL, NULL, NULL, 1, 7300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.1', 'Sender type', 'sendertype', 'C.3.1', 'Sender Type', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']/@code', NULL, NULL, 1, 7400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.2', 'Sender Identifier organization', 'senderorganization', 'C.3.2', 'Sender''s Organisation', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/text()', NULL, NULL, 1, 7500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.3.3', 'Person Responsible for Sending the Report', 
    NULL, NULL, NULL, 1, 7600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3a', 'Sender Identifier department', 'senderdepartment', 'C.3.3.1', 'Sender''s Department', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/@nullFlavor', NULL, 1, 7700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3b', 'Sender Identifier Title', 'sendertitle', 'C.3.3.2', 'Sender''s Title', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:prefix[1]/text()', NULL, NULL, 1, 7800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3c', 'Sender Given Name', 'sendergivename', 'C.3.3.3', 'Sender''s Given Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[1]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[1]/@nullFlavor', NULL, 1, 7900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3d', 'Sender Middle Name', 'sendermiddlename', 'C.3.3.4', 'Sender''s Middle Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[2]/text()', NULL, NULL, 1, 8000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3e', 'Sender Family Name', 'senderfamilyname', 'C.3.3.5', 'Sender''s Family Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:family[1]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:family[1]/@nullFlavor', NULL, 1, 8100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.3.4', 'Sender''s Address, Fax, Telephone and E-mail Address', 
    NULL, NULL, NULL, 1, 8200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4a', 'Sender''s Address-street', 'senderstreetaddress', 'C.3.4.1', 'Sender''s Street Address', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:streetAddressLine[1]/text()', NULL, NULL, 1, 8300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4b', 'Sender''s City', 'sendercity', 'C.3.4.2', 'Sender''s City', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:city[1]/text()', NULL, NULL, 1, 8400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4c', 'Sender''s State', 'senderstate', 'C.3.4.3', 'Sender''s State or Province', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:state[1]/text()', NULL, NULL, 1, 8500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4d', 'Sender''s Post Code', 'senderpostcode', 'C.3.4.4', 'Sender''s Postcode', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:postalCode[1]/text()', NULL, NULL, 1, 8600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4e', 'Sender''s country code', 'sendercountrycode', 'C.3.4.5', 'Sender''s Country Code', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asLocatedEntity[@classCode=''LOCE''][1]/ns:location[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@code', NULL, NULL, 1, 8700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
INSERT INTO &TRANSFORMPV_USER..E2B_R2R3MAPPING
            (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH,
             R3_ELEMENT_NUM, R3_ELEMENT,
             R3_XPATH,
             R3_NULL_XPATH,
             REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY,
             CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER,
             E2B_ELEMENT_NUM_REF
            )
     VALUES ('A.3.1.4f', 'Sender''s Telephone Number', 'sendertel',
             'C.3.4.6', 'Sender''s Telephone', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value, ''tel:'')][1]/@value',             '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@nullFlavor, ''tel:'')][1]/@nullFlavor',
             NULL, 1, 8800, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1,
             SYSDATE, 1, SYSDATE, 0, 0,
             NULL
            );
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4g', 'Sender''s extension (TEL)', 'sendertelextension', NULL, NULL, 
    NULL, NULL, NULL, 1, 8900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4h', 'Sender''s country code (TEL)', 'sendertelcountrycode', NULL, NULL, 
    NULL, NULL, NULL, 1, 9000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
INSERT INTO &TRANSFORMPV_USER..E2B_R2R3MAPPING
            (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM,
             R3_ELEMENT,
             R3_XPATH,
             R3_NULL_XPATH,
             REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY,
             CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER,
             E2B_ELEMENT_NUM_REF
            )
     VALUES ('A.3.1.4i', 'Sender''s Fax Number', 'senderfax', 'C.3.4.7',
             'Sender''s Fax', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value, ''fax:'')][1]/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@nullFlavor, ''fax:'')][1]/@nullFlavor',
             NULL, 1, 9100, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1,
             SYSDATE, 1, SYSDATE, 0, 0,
             NULL
            );

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4j', 'Sender''s extension (FAX)', 'senderfaxextension', NULL, NULL, 
    NULL, NULL, NULL, 1, 9200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4k', 'Sender''s country code (FAX)', 'senderfaxcountrycode', NULL, NULL, 
    NULL, NULL, NULL, 1, 9300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
INSERT INTO &TRANSFORMPV_USER..E2B_R2R3MAPPING
            (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH,
             R3_ELEMENT_NUM, R3_ELEMENT,
             R3_XPATH,
             R3_NULL_XPATH,
             REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY,
             CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER,
             E2B_ELEMENT_NUM_REF
            )
     VALUES ('A.3.1.4l', 'Sender''s E-mail Address', 'senderemailaddress',
             'C.3.4.8', 'Sender''s E-mail Address', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value, ''mailto:'')][1]/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@nullFlavor, ''mailto:'')][1]/@nullFlavor',
             NULL, 1, 9400, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1,
             SYSDATE, 1, SYSDATE, 0, 0,
             NULL
            );
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2', 'Receiver', 'receiver', NULL, NULL, 
    NULL, NULL, NULL, 1, 9500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.1', 'Receiver type', 'receivertype', NULL, NULL, 
    NULL, NULL, NULL, 1, 9600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2a', 'Receiver identifier-Receiver organization', 'receiverorganization', NULL, NULL, 
    NULL, NULL, NULL, 1, 9700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2b', 'Receiver identifier-Receiver department', 'receiverdepartment', NULL, NULL, 
    NULL, NULL, NULL, 1, 9800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2c', 'Receiver identifier-Title', 'receivertitle', NULL, NULL, 
    NULL, NULL, NULL, 1, 9900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2d', 'Receiver identifier-Given name', 'receivergivename', NULL, NULL, 
    NULL, NULL, NULL, 1, 10000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2e', 'Receiver identifier-Middle name', 'receivermiddlename', NULL, NULL, 
    NULL, NULL, NULL, 1, 10100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2f', 'Receiver identifier-Family name', 'receiverfamilyname', NULL, NULL, 
    NULL, NULL, NULL, 1, 10200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3a', 'Receiver''s Address-Street address', 'receiverstreetaddress', NULL, NULL, 
    NULL, NULL, NULL, 1, 10300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3b', 'Receiver''s Address-City', 'receivercity', NULL, NULL, 
    NULL, NULL, NULL, 1, 10400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3c', 'Receiver''s Address-State or Province', 'receiverstate', NULL, NULL, 
    NULL, NULL, NULL, 1, 10500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3d', 'Receiver''s Address-Postcode', 'receiverpostcode', NULL, NULL, 
    NULL, NULL, NULL, 1, 10600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3e', 'Receiver''s Address-Country Code', 'receivercountrycode', NULL, NULL, 
    NULL, NULL, NULL, 1, 10700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3f', 'Receiver''s Telephone Number-Telephone', 'receivertel', NULL, NULL, 
    NULL, NULL, NULL, 1, 10800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3g', 'Receiver''s Telephone Number', 'receivertelextension', NULL, NULL, 
    NULL, NULL, NULL, 1, 10900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3h', 'Receiver''s Telephone Number-Telephone country code', 'receivertelcountrycode', NULL, NULL, 
    NULL, NULL, NULL, 1, 11000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3i', 'Receiver''s Fax Number-Fax', 'receiverfax', NULL, NULL, 
    NULL, NULL, NULL, 1, 11100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3j', 'Receiver''s Fax Number-Fax extension', 'receiverfaxextension', NULL, NULL, 
    NULL, NULL, NULL, 1, 11200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3k', 'Receiver''s Fax Number-Fax country code', 'receiverfaxcountrycode', NULL, NULL, 
    NULL, NULL, NULL, 1, 11300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3l', 'Receiver''s E-mail Address', 'receiveremailaddress', NULL, NULL, 
    NULL, NULL, NULL, 1, 11400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'primarysource[literaturereference]', 'C.4.r', 'Literature Reference(s) (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:reference[@typeCode=''REFR''][ns:document/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.27'']]', NULL, NULL, 1, 11500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.2', 'Literature reference(s)', 'literaturereference', 'C.4.r.1', 'Literature Reference(s)', 
    'ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:bibliographicDesignationText/text()', 'ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:bibliographicDesignationText/@nullFlavor', NULL, 1, 11600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.4.r.2', 'Included Documents', 
    'ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:text/ns:reference/@value', NULL, NULL, 1, 11700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.3', 'Study Identification (header)', NULL, 'C.5', 'Study Identification', 
    NULL, NULL, NULL, 1, 11800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.5.1.r', 'Study Registration (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf1[@typeCode=''SBJ''][1]/ns:researchStudy[@classCode=''CLNTRL''][@moodCode=''EVN'']/ns:authorization[@typeCode=''AUTH'']', NULL, NULL, 1, 11900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.5.1.r.1', 'Study Registration Number', 
    'ns:studyRegistration[@classCode=''ACT''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.6'']/@extension', 'ns:studyRegistration[@classCode=''ACT''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.6'']/@nullFlavor', NULL, 1, 12000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.5.1.r.2', 'Study Registration Country', 
    'ns:studyRegistration[@classCode=''ACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:territorialAuthority[@classCode=''TERR'']/ns:governingPlace[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@code', 'ns:studyRegistration[@classCode=''ACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:territorialAuthority[@classCode=''TERR'']/ns:governingPlace[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@nullFlavor', NULL, 1, 12100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.3.1', 'Study name', 'studyname', 'C.5.2', 'Study Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf1[@typeCode=''SBJ''][1]/ns:researchStudy[@classCode=''CLNTRL''][@moodCode=''EVN'']/ns:title/text()', NULL, NULL, 1, 12200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.3.2', 'Sponsor study number', 'sponsorstudynumb', 'C.5.3', 'Sponsor Study Number', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf1[@typeCode=''SBJ''][1]/ns:researchStudy[@classCode=''CLNTRL''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.5'']/@extension', NULL, NULL, 1, 12300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.3.3', 'Study type in which the reaction(s)/event(s) were observed', 'observestudytype', 'C.5.4', 'Study Type Where Reaction(s) / Event(s) Were Observed', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf1[@typeCode=''SBJ''][1]/ns:researchStudy[@classCode=''CLNTRL''][@moodCode=''EVN'']/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.8'']/@code', NULL, NULL, 1, 12400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1', 'Patient characteristics', 'patient', 'D', 'Patient Characteristics', 
    NULL, NULL, NULL, 1, 12500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1', 'Patient', 'patientinitial', 'D.1', 'Patient (name or initials)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name[1]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name[1]/@nullFlavor', NULL, 1, 12600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.1.1', 'Patient Medical Record Number(s) and Source(s) of the Record Number (if allowable)', 
    NULL, NULL, NULL, 1, 12700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1.1a', 'Patient medical record number(s) and source(s) of the record number', 'patientgpmedicalrecordnumb', 'D.1.1.1', 'Patient Medical Record Number(s) and Source(s) of the Record Number (GP Medical Record Number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.7''][1]/@extension', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.7''][1]/@nullFlavor', NULL, 1, 12800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1.1b', 'Patient medical record number(s) and source(s) of the record number(Special)', 'patientspecialistrecordnumb', 'D.1.1.2', 'Patient Medical Record Number(s) and Source(s) of the Record Number (Specialist Record Number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.8''][1]/@extension', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.8''][1]/@nullFlavor', NULL, 1, 12900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1.1c', 'Patient medical record number(s) and source(s) of the record number(hospital)', 'patienthospitalrecordnumb', 'D.1.1.3', 'Patient Medical Record Number(s) and Source(s) of the Record Number (Hospital Record Number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.9''][1]/@extension', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.9''][1]/@nullFlavor', NULL, 1, 13000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1.1d', 'Patient medical record number(s) and source(s) of the record number(investigation)', 'patientinvestigationnumb', 'D.1.1.4', 'Patient Medical Record Number(s) and Source(s) of the Record Number (Investigation Number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''4''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.10''][1]/@extension', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''4''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.10''][1]/@nullFlavor', NULL, 1, 13100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2', 'Age Information (header)', NULL, 'D.2', 'Age Information', 
    NULL, NULL, NULL, 1, 13200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.1a', 'Date of birth-Date format', 'patientbirthdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 13300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.1b', 'Date of birth', 'patientbirthdate', 'D.2.1', 'Date of Birth', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:birthTime/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:birthTime/@nullFlavor', NULL, 1, 13400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.2.2', 'Age at Time of Onset of Reaction / Event', 
    NULL, NULL, NULL, 1, 13500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.2a', 'Age at time of onset of reaction/event', 'patientonsetage', 'D.2.2a', 'Age at Time of Onset of Reaction / Event (number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@value', NULL, NULL, 1, 13600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.2b', 'Age at time of onset of reaction/event (Unit)', 'patientonsetageunit', 'D.2.2b', 'Age at Time of Onset of Reaction / Event (unit)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@unit', NULL, NULL, 1, 13700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.2.1a', 'Gestation period when reaction/event was observed in the fetus', 'gestationperiod', 'D.2.2.1a', 'Gestation Period When Reaction / Event Was Observed in the Foetus (number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''16''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@value', NULL, NULL, 1, 13800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.2.1b', 'Gestation period when reaction/event was observed in the fetus unit', 'gestationperiodunit', 'D.2.2.1b', 'Gestation Period When Reaction / Event Was Observed in the Foetus (unit)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''16''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@unit', NULL, NULL, 1, 13900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.3', 'Patient age group', 'patientagegroup', 'D.2.3', 'Patient Age Group (as per reporter)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''4''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.9''][1]/@code', NULL, NULL, 1, 14000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.3', 'Weight (kg)', 'patientweight', 'D.3', 'Body Weight (kg)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''7''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][@unit=''kg''][1]/@value', NULL, NULL, 1, 14100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.4', 'Height (cm)', 'patientheight', 'D.4', 'Height (cm)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''17''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][@unit=''cm''][1]/@value', NULL, NULL, 1, 14200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.5', 'Sex', 'patientsex', 'D.5', 'Sex', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:administrativeGenderCode[@codeSystem=''1.0.5218'']/@code', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:administrativeGenderCode[@codeSystem=''1.0.5218'']/@nullFlavor', NULL, 1, 14300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.6a', 'Last menstrual period date-Date format', 'lastmenstrualdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 14400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.6b', 'Patient last menstrual period date', 'patientlastmenstrualdate', 'D.6', 'Last Menstrual Period Date', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''22''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''TS''][1]/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''22''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''TS''][1]/@nullFlavor', NULL, 1, 14500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.2', 'Text for relevant medical history and concurrent conditions', 'patientmedicalhistorytext', 'D.7.2', 'Text for Relevant Medical History and Concurrent Conditions (not including reaction / event)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@code=''18''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@code=''18''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/@nullFlavor', NULL, 1, 14600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x1', 'Concomitant Therapies', 'concomitanttherapy_extension', 'D.7.3', 'Concomitant Therapies', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@code=''11''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', NULL, NULL, 1, 14700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.2', 'Results of tests and procedures for investigation of the patient:', 'resultstestsprocedures', NULL, NULL, 
    NULL, NULL, NULL, 1, 14800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7', 'Relevant medical history and concurrent conditions', 'medicalhistoryepisode', 'D.7', 'Relevant Medical History and Concurrent Conditions (not including reaction / event)', 
    NULL, NULL, NULL, 1, 14900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'medicalhistoryepisode', 'D.7.1.r', 'Structured Information on Relevant Medical History (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@codeSystem=''2.16.840.1.113883.6.163'']]', NULL, NULL, 1, 15000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1a.1', 'MedDRA version for Medical History', 'patientepisodenamemeddraversion', 'D.7.1.r.1a', 'MedDRA Version for Medical History', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@codeSystemVersion', NULL, NULL, 1, 15100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1a.2', 'Structured information(Patient episode name)', 'patientepisodename', 'D.7.1.r.1b', 'Medical History (disease / surgical procedure / etc.) (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@code', NULL, NULL, 1, 15200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1b', 'Patient medical start date (format)', 'patientmedicalstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 15300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1c', 'Patient Medical start date', 'patientmedicalstartdate', 'D.7.1.r.2', 'Start Date', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor', NULL, 1, 15400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1d', 'Patient Medical continuing', 'patientmedicalcontinue', 'D.7.1.r.3', 'Continuing', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''13''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''13''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 1, 15500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1e', 'Patient Medical end date (format)', 'patientmedicalenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 15600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1f', 'Patient Medical end date', 'patientmedicalenddate', 'D.7.1.r.4', 'End Date', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor', NULL, 1, 15700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1g', 'Patient Medical comments', 'patientmedicalcomment', 'D.7.1.r.5', 'Comments', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:observation/ns:code[@code=''10''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 1, 15800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.7.1.r.6', 'Family History', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''EXPL''][ns:observation/ns:code[@code=''38''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', NULL, NULL, 1, 15900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8', 'Relevant past drug history', 'patientpastdrugtherapy', 'D.8.r', 'Relevant Past Drug History (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:substanceAdministration]', NULL, NULL, 1, 16000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8a', 'Name of Drug as Reported', 'patientdrugname', 'D.8.r.1', 'Name of Drug as Reported', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:name[1]/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:name[1]/@nullFlavor', NULL, 1, 16100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.8.r.2a', 'MPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@codeSystemVersion', NULL, NULL, 1, 16200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.8.r.2b', 'Medicinal Product Identifier (MPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@code', NULL, NULL, 1, 16300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.8.r.3a', 'PhPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@codeSystemVersion', NULL, NULL, 1, 16400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.8.r.3b', 'Pharmaceutical Product Identifier (PhPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@code', NULL, NULL, 1, 16500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8b', 'Patient drug Start date (format)', 'patientdrugstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 16600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8c', 'Patient Drug Start date', 'patientdrugstartdate', 'D.8.r.4', 'Start Date', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor', NULL, 1, 16700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8d', 'Patient Drug end date (format)', 'patientdrugenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 16800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8e', 'Patient Drug end date', 'patientdrugenddate', 'D.8.r.5', 'End Date', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor', NULL, 1, 16900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8f.1', 'Patient MedDRA version for indication', 'patientindicationmeddraversion', 'D.8.r.6a', 'MedDRA Version for Indication', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 1, 17000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8f.2', 'Patient Drug indication', 'patientdrugindication', 'D.8.r.6b', 'Indication (MedDRA code)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 1, 17100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8g.1', 'Patient MedDRA version for reaction', 'patientdrgreactionmeddraversion', 'D.8.r.7a', 'MedDRA Version for Reaction', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''CAUS''][ns:observation/ns:code[@code=''29''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 1, 17200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8g.2', 'Reaction', 'patientdrugreaction', 'D.8.r.7b', 'Reaction (MedDRA code)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''CAUS''][ns:observation/ns:code[@code=''29''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 1, 17300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9', 'In case of death:', 'patientdeath', 'D.9', 'In Case of Death', 
    NULL, NULL, NULL, 1, 17400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.1a', 'Date of death (format)', 'patientdeathdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 17500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.1b', 'Date of death', 'patientdeathdate', 'D.9.1', 'Date of Death', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:deceasedTime/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:deceasedTime/@nullFlavor', NULL, 1, 17600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.3', 'Was autopsy done?', 'patientautopsyyesno', 'D.9.3', 'Was Autopsy Done?', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''5''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''5''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 1, 17700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'Reported cause(s) of patient death', 'patientdeathcause', 'D.9.2.r', 'Reported Cause(s) of Death (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''32''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]', NULL, NULL, 1, 17800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.2.a', 'MedDRA version for reported cause(s) of death', 'patientdeathreportmeddraversion', 'D.9.2.r.1a', 'MedDRA Version for Reported Cause(s) of Death', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 1, 17900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.2.b', 'Reported cause(s) of death', 'patientdeathreport', 'D.9.2.r.1b', 'Reported Cause(s) of Death (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 1, 18000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.2.x', 'As Reported cause(s) of death', 'reportedcausedeath_extension', 'D.9.2.r.2', 'Reported Cause(s) of Death (free text)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/text()', NULL, NULL, 1, 18100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'patientautopsy', 'D.9.4.r', 'Autopsy-determined Cause(s) of Death (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''5''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''DRIV''][ns:observation/ns:code[@code=''8''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]', NULL, NULL, 1, 18200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.4a', 'MedDRA version for autopsy-determined cause(s) of death', 'patientdetermautopsmeddraversion', 'D.9.4.r.1a', 'MedDRA Version for Autopsy-determined Cause(s) of Death', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 1, 18300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.4b', 'Autopsy-determined cause(s) of death', 'patientdetermineautopsy', 'D.9.4.r.1b', 'Autopsy-determined Cause(s) of Death (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 1, 18400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.4x', 'Autopsy-As Reported cause(s) of death', 'autopsycauseofdeath_extension', 'D.9.4.r.2', 'Autopsy-determined Cause(s) of Death (free text)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/text()', NULL, NULL, 1, 18500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10', 'For a parent-child/fetus report, information concerning the parent', 'parent', 'D.10', 'For a Parent-child / Foetus Report, Information Concerning the Parent', 
    NULL, NULL, NULL, 1, 18600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.1', 'Parent identification', 'parentidentification', 'D.10.1', 'Parent Identification', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name[1]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name[1]/@nullFlavor', NULL, 1, 18700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.2', 'Parent Age Information (header)', NULL, 'D.10.2', 'Parent Age Information', 
    NULL, NULL, NULL, 1, 18800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.2.1a', 'Date of birth of parent (format)', 'parentbirthdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 18900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.2.1b', 'Date of birth of parent', 'parentbirthdate', 'D.10.2.1', 'Date of Birth of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:birthTime/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:birthTime/@nullFlavor', NULL, 1, 19000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.2.2a', 'Age of parent', 'parentage', 'D.10.2.2a', 'Age of Parent (number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@value', NULL, NULL, 1, 19100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.2.2b', 'Age of parent (Unit)', 'parentageunit', 'D.10.2.2b', 'Age of Parent (unit)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@unit', NULL, NULL, 1, 19200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.3a', 'Last menstrual period date (format)', 'parentlastmenstrualdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 19300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.3b', 'Parent last menstrual period date', 'parentlastmenstrualdate', 'D.10.3', 'Last Menstrual Period Date of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''22''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''TS''][1]/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''22''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''TS''][1]/@nullFlavor', NULL, 1, 19400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.4', 'Weight (kg) of parent', 'parentweight', 'D.10.4', 'Body Weight (kg) of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''7''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][@unit=''kg''][1]/@value', NULL, NULL, 1, 19500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.5', 'Height (cm) of parent', 'parentheight', 'D.10.5', 'Height (cm) of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''17''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][@unit=''cm''][1]/@value', NULL, NULL, 1, 19600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.6', 'Sex of parent', 'parentsex', 'D.10.6', 'Sex of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:administrativeGenderCode[@codeSystem=''1.0.5218'']/@code', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:administrativeGenderCode[@codeSystem=''1.0.5218'']/@nullFlavor', NULL, 1, 19700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.2', 'Text for relevant medical history and concurrent conditions of parent', 'parentmedicalrelevanttext', 'D.10.7.2', 'Text for Relevant Medical History and Concurrent Conditions of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@code=''18''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 1, 19800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7', 'Relevant medical history and concurrent conditions of parent', 'parentmedicalhistoryepisode', 'D.10.7', 'Relevant Medical History and Concurrent Conditions of Parent', 
    NULL, NULL, NULL, 1, 19900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'parentmedicalhistoryepisode', 'D.10.7.1.r', 'Structured Information of Parent (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@codeSystem=''2.16.840.1.113883.6.163'']]', NULL, NULL, 1, 20000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1a.1', 'MedDRA version for parent medical history', 'parentmdepisodemeddraversion', 'D.10.7.1.r.1a', 'MedDRA Version for Medical History', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@codeSystemVersion', NULL, NULL, 1, 20100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1a.2', 'Structured information(Parent episode name)', 'parentmedicalepisodename', 'D.10.7.1.r.1b', 'Medical History (disease / surgical procedure/ etc.) (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@code', NULL, NULL, 1, 20200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1b', 'Parent medical start date (format)', 'parentmedicalstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 20300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1c', 'Parent medical start date', 'parentmedicalstartdate', 'D.10.7.1.r.2', 'Start Date', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', NULL, NULL, 1, 20400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1d', 'Parent medical continuing', 'parentmedicalcontinue', 'D.10.7.1.r.3', 'Continuing', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''13''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''13''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 1, 20500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1e', 'Parent medical end date (format)', 'parentmedicalenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 20600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1f', 'Parent medical end date', 'parentmedicalenddate', 'D.10.7.1.r.4', 'End Date', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor', NULL, 1, 20700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1g', 'Parent medical comments', 'parentmedicalcomment', 'D.10.7.1.r.5', 'Comments', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:observation/ns:code[@code=''10''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 1, 20800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8', 'Relevant past drug history', 'parentpastdrugtherapy', 'D.10.8.r', 'Relevant Past Drug History of Parent (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:substanceAdministration]', NULL, NULL, 1, 20900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8a', 'Name of drug as reported', 'parentdrugname', 'D.10.8.r.1', 'Name of Drug as Reported', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:name[1]/text()', NULL, NULL, 1, 21000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.10.8.r.2a', 'MPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@codeSystemVersion', NULL, NULL, 1, 21100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.10.8.r.2b', 'Medicinal Product Identifier (MPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@code', NULL, NULL, 1, 21200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.10.8.r.3a', 'PhPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@codeSystemVersion', NULL, NULL, 1, 21300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.10.8.r.3b', 'Pharmaceutical Product Identifier (PhPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@code', NULL, NULL, 1, 21400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8b', 'Start date (format)', 'parentdrugstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 21500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8c', 'Start date', 'parentdrugstartdate', 'D.10.8.r.4', 'Start Date', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor', NULL, 1, 21600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8d', 'End date (format)', 'parentdrugenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 21700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8e', 'End date', 'parentdrugenddate', 'D.10.8.r.5', 'End Date', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor', NULL, 1, 21800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8f.1', 'Parent MedDRA version for indication', 'parentdrgindicationmeddraversion', 'D.10.8.r.6a', 'MedDRA Version for Indication', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 1, 21900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8f.2', 'Parent drug indication', 'parentdrugindication', 'D.10.8.r.6b', 'Indication (MedDRA code)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 1, 22000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8g.1', 'Parent MedDRA version for reaction', 'parentdrgreactionmeddraversion', 'D.10.8.r.7a', 'MedDRA Version for Reaction', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''CAUS''][ns:observation/ns:code[@code=''29''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 1, 22100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8g.2', 'Reactions (if any and known)', 'parentdrugreaction', 'D.10.8.r.7b', 'Reactions (MedDRA code)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''CAUS''][ns:observation/ns:code[@code=''29''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 1, 22200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2', 'Reaction(s)/Event(s)', 'reaction', 'E.i', 'Reaction(s) / Event(s) (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation[ns:id][ns:code[@code=''29''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]]', NULL, NULL, 1, 22300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E.i.1', 'Reaction / Event as Reported by the Primary Source', 
    NULL, NULL, NULL, 1, 22400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x.1a', 'Reaction / Event as Reported by the Primary Source in Native Language', 'eventinnative_extension', 'E.i.1.1a', 'Reaction / Event as Reported by the Primary Source in Native Language', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/text()', NULL, NULL, 1, 22500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x.1b', 'Reaction / Event as Reported by the Primary Source in Native Language Source', 'eventnativelang_extension', 'E.i.1.1b', 'Reaction / Event as Reported by the Primary Source Language', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/@language', NULL, NULL, 1, 22600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.0', 'Reaction/event as reported by primary source', 'primarysourcereaction', 'E.i.1.2', 'Reaction / Event as Reported by the Primary Source for Translation', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''30''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 1, 22700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.1.a', 'MedDRA version for reaction/event term LLT', 'reactionmeddraversionllt', 'E.i.2.1a', 'MedDRA Version for Reaction / Event', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 1, 22800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.1.b', 'Reaction/event in MedDRA terminology (LLT)', 'reactionmeddrallt', 'E.i.2.1b', 'Reaction / Event (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 1, 22900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.2.a', 'MedDRA version for reaction/event term PT', 'reactionmeddraversionpt', NULL, NULL, 
    NULL, NULL, NULL, 1, 23000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.2.b', 'Reaction/event MedDRA term (PT)', 'reactionmeddrapt', NULL, NULL, 
    NULL, NULL, NULL, 1, 23100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.3', 'Term highlighted by the reporter', 'termhighlighted', 'E.i.3.1', 'Term Highlighted by the Reporter', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''37''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.10''][1]/@code', NULL, NULL, 1, 23200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E.i.3.2', 'Seriousness Criteria at Event Level', 
    NULL, NULL, NULL, 1, 23300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x1', 'Results in Death', 'seriousnessdeath_extension', 'E.i.3.2a', 'Results in Death', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''34''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''34''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 1, 23400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x2', 'Life Threatening', 'seriousnessthreat_extension', 'E.i.3.2b', 'Life Threatening', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''21''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''21''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 1, 23500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x3', 'Caused / Prolonged Hospitalisation', 'seriousnesshosp_extension', 'E.i.3.2c', 'Caused / Prolonged Hospitalisation', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''33''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''33''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 1, 23600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x4', 'Disabling / Incapacitating', 'seriousnessdisable_extension', 'E.i.3.2d', 'Disabling / Incapacitating', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''35''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''35''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 1, 23700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x5', 'Congenital Anomaly / Birth Defect', 'seriousnessanomaly_extension', 'E.i.3.2e', 'Congenital Anomaly / Birth Defect', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''12''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''12''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 1, 23800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x6', 'Other Medically Important Condition', 'seriousnessother_extension', 'E.i.3.2f', 'Other Medically Important Condition', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''26''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''26''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 1, 23900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.4a', 'Date of start of reaction/event (format)', 'reactionstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 24000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.4b', 'Date of start of reaction/event', 'reactionstartdate', 'E.i.4', 'Date of Start of Reaction / Event', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor', NULL, 1, 24100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.5a', 'Date of end of reaction/event (format)', 'reactionenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 24200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.5b', 'Date of end of reaction/event', 'reactionenddate', 'E.i.5', 'Date of End of Reaction / Event', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor', NULL, 1, 24300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.6a', 'Duration of reaction/event', 'reactionduration', 'E.i.6a', 'Duration of Reaction / Event (number)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@nullFlavor', NULL, 1, 24400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.6b', 'Duration of reaction/event (Unit)', 'reactiondurationunit', 'E.i.6b', 'Duration of Reaction / Event (unit)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@unit', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@nullFlavor', NULL, 1, 24500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.7.1a', 'Time between suspect drug administration and start of reaction/event', 'reactionfirsttime', NULL, NULL, 
    NULL, NULL, NULL, 1, 24600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.7.1b', 'Time unit between suspect drug administration and start of reaction/event', 'reactionfirsttimeunit', NULL, NULL, 
    NULL, NULL, NULL, 1, 24700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.7.2a', 'Time between last dose and start of reaction/event', 'reactionlasttime', NULL, NULL, 
    NULL, NULL, NULL, 1, 24800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.7.2b', 'Time unit between last dose and start of reaction/event', 'reactionlasttimeunit', NULL, NULL, 
    NULL, NULL, NULL, 1, 24900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.8', 'Outcome of reaction/event at the time of last observation', 'reactionoutcome', 'E.i.7', 'Outcome of Reaction / Event at the Time of Last Observation', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''27''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.11''][1]/@code', NULL, NULL, 1, 25000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x7', 'Medical Confirmation by Healthcare Professional', 'confirmedbyhcp_extension', 'E.i.8', 'Medical Confirmation by Healthcare Professional', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''24''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', NULL, NULL, 1, 25100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x8', 'Identification of the Country Where the Reaction / Event Occurred', 'eventcountry_extension', 'E.i.9', 'Identification of the Country Where the Reaction / Event Occurred', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:location[@typeCode=''LOC''][1]/ns:locatedEntity[@classCode=''LOCE'']/ns:locatedPlace[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@code', NULL, NULL, 1, 25200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3', 'Results of tests and procedures for investigation of the patient:', 'test', 'F.r', 'Results of Tests and Procedures Relevant to the Investigation of the Patient (repeat as necessary)', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP'']', NULL, NULL, 1, 25300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1a', 'Structured information (format)', 'testdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 25400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1b', 'Date', 'testdate', 'F.r.1', 'Test Date', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime/@nullFlavor', NULL, 1, 25500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.2', 'Test Name', 
    NULL, NULL, NULL, 1, 25600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1c', 'Test', 'testname', 'F.r.2.1', 'Test Name (free text)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/ns:originalText/text()', NULL, NULL, 1, 25700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.2.2a', 'MedDRA Version for Test Name', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@codeSystemVersion', NULL, NULL, 1, 25800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.2.2b', 'Test Name (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@code', NULL, NULL, 1, 25900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.3', 'Test Result', 
    NULL, NULL, NULL, 1, 26000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.3.1', 'Test Result (code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:interpretationCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.12''][1]/@code', NULL, NULL, 1, 26100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.3.2', 'Test Result (value / qualifier)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][1]/ns:center/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:high/@nullFlavor=''PINF''][1]/ns:low[@inclusive=''false'']/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:high/@nullFlavor=''PINF''][1]/ns:low[@inclusive=''true'']/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:low/@nullFlavor=''NINF''][1]/ns:high[@inclusive=''false'']/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:low/@nullFlavor=''NINF''][1]/ns:high[@inclusive=''true'']/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][1]/ns:low/@nullFlavor|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][1]/ns:high/@nullFlavor', NULL, 1, 26200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1d', 'Result', 'testresult', 'F.r.3.4', 'Result Unstructured Data (free text)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 1, 26300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1e', 'Unit', 'testunit', 'F.r.3.3', 'Test Result (unit)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][1]/ns:center/@unit|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:high/@nullFlavor=''PINF''][1]/ns:low[@inclusive=''false'']/@unit|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:high/@nullFlavor=''PINF''][1]/ns:low[@inclusive=''true'']/@unit|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:low/@nullFlavor=''NINF''][1]/ns:high[@inclusive=''false'']/@unit|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:low/@nullFlavor=''NINF''][1]/ns:high[@inclusive=''true'']/@unit', NULL, NULL, 1, 26400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1.1', 'Normal low range', 'lowtestrange', 'F.r.4', 'Normal Low Value', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:referenceRange[@typeCode=''REFV''][ns:observationRange/ns:interpretationCode[@code=''L''][@codeSystem=''2.16.840.1.113883.5.83'']][1]/ns:observationRange[@classCode=''OBS''][@moodCode=''EVN.CRT'']/ns:value[@xsi:type=''PQ'']/@value', NULL, NULL, 1, 26500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1.2', 'Normal high range', 'hightestrange', 'F.r.5', 'Normal High Value', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:referenceRange[@typeCode=''REFV''][ns:observationRange/ns:interpretationCode[@code=''H''][@codeSystem=''2.16.840.1.113883.5.83'']][1]/ns:observationRange[@classCode=''OBS''][@moodCode=''EVN.CRT'']/ns:value[@xsi:type=''PQ'']/@value', NULL, NULL, 1, 26600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.6', 'Comments (free text)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''10''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 1, 26700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1.3', 'More information available (Y/N)', 'moreinformation', 'F.r.7', 'More Information Available', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''REFR''][ns:observation/ns:code[@code=''25''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', NULL, NULL, 1, 26800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
	Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4', 'Drug(s) Information', 'drug[starts-with(prodseq_extension,''D'')]', 'G.k', 'Drug(s) Information (repeat as necessary)',    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''4''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer/ns:component[@typeCode=''COMP''][ns:substanceAdministration/ns:id]', NULL, NULL, 24, 30500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.1', 'Characterization of drug role', 'drugcharacterization', 'G.k.1', 'Characterisation of Drug Role', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:causalityAssessment/ns:code[@code=''20''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN''][ns:subject2[@typeCode=''SUBJ'']/ns:productUseReference[@classCode=''SBADM''][@moodCode=''EVN'']/ns:id[@root=''UUID of k-th drug'']]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.13'']/@code', NULL, NULL, 1, 27000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2', 'Drug Identification', 
    NULL, NULL, NULL, 1, 27100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.1', 'Medical Product Unique Identifier / Pharmaceutical Product Identifier', 
    NULL, NULL, NULL, 1, 27200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.1.1a', 'MPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@codeSystemVersion', NULL, NULL, 1, 27300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.1.1b', 'Medicinal Product Identifier (MPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@code', NULL, NULL, 1, 27400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.1.2a', 'PhPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@codeSystemVersion', NULL, NULL, 1, 27500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.1.2b', 'Pharmaceutical Product Identifier (PhPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@code', NULL, NULL, 1, 27600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2.1', 'Proprietary medicinal product name', 'medicinalproduct', 'G.k.2.2', 'Medicinal Product Name as Reported by the Primary Source', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:name[1]/text()', NULL, NULL, 1, 27700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2.x1', 'Batch #', 'devlotno_extension', 'G.k.2.2.EU.9.r.4', 'Device batch lot number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:productInstanceInstance[@classCode=''MMAT''][@determinerCode=''INSTANCE'']/ns:part[@classCode=''PART'']/ns:partDeviceInstance[@classCode=''DEV'']/ns:lotNumberText/text()', NULL, NULL, 1, 27800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2.3', 'Identification of the country where the drug was obtained', 'obtaindrugcountry', 'G.k.2.4', 'Identification of the Country Where the Drug Was Obtained', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:subjectOf[@typeCode=''SBJ''][1]/ns:productEvent[@classCode=''ACT''][@moodCode=''EVN''][ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.18'']]/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:country[1]/text()', NULL, NULL, 1, 27900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.5', 'Investigational Product Blinded', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''6''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', NULL, NULL, 1, 28000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.3', 'Holder and Authorisation / Application Number of Drug', 
    NULL, NULL, NULL, 1, 28100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.4.1', 'Authorization/Application Number', 'drugauthorizationnumb', 'G.k.3.1', 'Authorisation / Application Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:asManufacturedProduct[@classCode=''MANU'']/ns:subjectOf[@typeCode=''SBJ''][1]/ns:approval[@classCode=''CNTRCT''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.4'']/@extension', NULL, NULL, 1, 28200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.4.2', 'Country of authorization/application', 'drugauthorizationcountry', 'G.k.3.2', 'Country of Authorisation / Application', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:asManufacturedProduct[@classCode=''MANU'']/ns:subjectOf[@typeCode=''SBJ''][1]/ns:approval[@classCode=''CNTRCT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:territorialAuthority[@classCode=''TERR'']/ns:territory[@classCode=''NAT''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@code', NULL, NULL, 1, 28300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.4.3', 'Name of holder/applicant', 'drugauthorizationholder', 'G.k.3.3', 'Name of Holder / Applicant', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:asManufacturedProduct[@classCode=''MANU'']/ns:subjectOf[@typeCode=''SBJ''][1]/ns:approval[@classCode=''CNTRCT''][@moodCode=''EVN'']/ns:holder[@typeCode=''HLD''][1]/ns:role[@classCode=''HLD'']/ns:playingOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:asManufacturedProduct[@classCode=''MANU'']/ns:subjectOf[@typeCode=''SBJ''][1]/ns:approval[@classCode=''CNTRCT''][@moodCode=''EVN'']/ns:holder[@typeCode=''HLD''][1]/ns:role[@classCode=''HLD'']/ns:playingOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/@nullFlavor', NULL, 1, 28400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5', 'Structured Dosage Information (header)', NULL, 'G.k.4.r', 'Dosage and Relevant Information (repeat as necessary)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration]', NULL, NULL, 1, 28500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.1', 'dose (number)', 'drugstructuredosagenumb', 'G.k.4.r.1a', 'Dose (number)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:doseQuantity/@value', NULL, NULL, 1, 28600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.2', 'dose (unit)', 'drugstructuredosageunit', 'G.k.4.r.1b', 'Dose (unit)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:doseQuantity/@unit', NULL, NULL, 1, 28700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.3', 'number of separate dosages', 'drugseparatedosagenumb', NULL, NULL, 
    NULL, NULL, NULL, 1, 28800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.4', 'number of units in the interval', 'drugintervaldosageunitnumb', 'G.k.4.r.2', 'Number of Units in the Interval', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS'']/ns:period/@value', NULL, NULL, 1, 28900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.5', 'definition of the interval', 'drugintervaldosagedefinition', 'G.k.4.r.3', 'Definition of the Time Interval Unit', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS'']/ns:period/@unit', NULL, NULL, 1, 29000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.12a', 'Date of start of drug (format)', 'drugstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 29100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.12b', 'Date of start of drug', 'drugstartdate', 'G.k.4.r.4', 'Date and Time of Start of Drug', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:low/@value', NULL, NULL, 1, 29200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.14a', 'Date of last administration (format)', 'drugenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 1, 29300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.14b', 'Date of last administration', 'drugenddate', 'G.k.4.r.5', 'Date and Time of Last Administration', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:high/@value', NULL, NULL, 1, 29400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.15a', 'Duration of drug administration', 'drugtreatmentduration', 'G.k.4.r.6a', 'Duration of Drug Administration (number)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@value', NULL, NULL, 1, 29500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.15b', 'Duration of drug administration unit', 'drugtreatmentdurationunit', 'G.k.4.r.6b', 'Duration of Drug Administration (unit)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@unit', NULL, NULL, 1, 29600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.3', 'Batch/lot number', 'drugbatchnumb', 'G.k.4.r.7', 'Batch / Lot Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:productInstanceInstance[@classCode=''MMAT''][@determinerCode=''INSTANCE'']/ns:lotNumberText/text()', NULL, NULL, 1, 29700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.6', 'Dosage text', 'drugdosagetext', 'G.k.4.r.8', 'Dosage Text', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:text/text()', NULL, NULL, 1, 29800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.9', 'Pharmaceutical Dose Form', 
    NULL, NULL, NULL, 1, 29900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.7', 'Pharmaceutical form (Dosage form)', 'drugdosageform', 'G.k.4.r.9.1', 'Pharmaceutical Dose Form (free text)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode/ns:originalText/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode/ns:originalText/@nullFlavor', NULL, 1, 30000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.9.2a', 'Pharmaceutical Dose Form TermID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode[@codeSystem=''TBD-DoseForm'']/@codeSystemVersion', NULL, NULL, 1, 30100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.9.2b', 'Pharmaceutical Dose Form TermID', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode[@codeSystem=''TBD-DoseForm'']/@code', NULL, NULL, 1, 30200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.10', 'Route of Administration', 
    NULL, NULL, NULL, 1, 30300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.8', 'Route of administration', 'drugadministrationroute', 'G.k.4.r.10.1', 'Route of Administration (free text)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/ns:originalText/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/ns:originalText/@nullFlavor', NULL, 1, 30400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.10.2a', 'Route of Administration TermID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/@codeSystemVersion', NULL, NULL, 1, 30500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.10.2b', 'Route of Administration TermID', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/@code', NULL, NULL, 1, 30600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.11', 'Parent Route of Administration (in case of a parent child / foetus report)', 
    NULL, NULL, NULL, 1, 30700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.9', 'Parent route of administration (in case of a parent child/fetus report)', 'drugparadministration', 'G.k.4.r.11.1', 'Parent Route of Administration (free text)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/ns:originalText/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/ns:originalText/@nullFlavor', NULL, 1, 30800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.11.2a', 'Parent Route of Administration TermID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/@codeSystemVersion', NULL, NULL, 1, 30900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.11.2b', 'Parent Route of Administration TermID', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/@code', NULL, NULL, 1, 31000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.6', 'Cumulative Dose to First Reaction (number)', 'drugcumulativedosagenumb', 'G.k.5a', 'Cumulative Dose to First Reaction (number)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''SUMM''][ns:observation/ns:code[@code=''14''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@value', NULL, NULL, 1, 31100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.7', 'cumulative dose to first reaction (unit)', 'drugcumulativedosageunit', 'G.k.5b', 'Cumulative Dose to First Reaction (unit)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''SUMM''][ns:observation/ns:code[@code=''14''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@unit', NULL, NULL, 1, 31200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.10a', 'Gestation period at time of exposure', 'reactiongestationperiod', 'G.k.6a', 'Gestation Period at Time of Exposure (number)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''16''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@value', NULL, NULL, 1, 31300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.10b', 'Gestation period at time of exposure (Unit)', 'reactiongestationperiodunit', 'G.k.6b', 'Gestation Period at Time of Exposure (unit)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''16''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@unit', NULL, NULL, 1, 31400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.7.r', 'Indication for Use in Case (repeat as necessary)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]', NULL, NULL, 1, 31500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.11.x', 'Indication as Reported', 'indicationreported_extension', 'G.k.7.r.1', 'Indication as Reported by the Primary Source', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']][1]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']][1]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/@nullFlavor', NULL, 1, 31600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.11a', 'MedDRA version for indication', 'drugindicationmeddraversion', 'G.k.7.r.2a', 'MedDRA Version for Indication', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']][1]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 1, 31700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.11b', 'Indication for use in the case', 'drugindication', 'G.k.7.r.2b', 'Indication (MedDRA code)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']][1]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 1, 31800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.13.1a', 'Time between drug administration and start of reaction/event', 'drugstartperiod', 'G.k.9.i.3.1a', 'Time Interval between Beginning of Drug Administration and Start of Reaction / Event (number)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''SAS''][ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[''RID1'']]/ns:pauseQuantity/@value', NULL, NULL, 1, 31900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.13.1b', 'Time between drug administration and start of reaction/event (unit)', 'drugstartperiodunit', 'G.k.9.i.3.1b', 'Time Interval between Beginning of Drug Administration and Start of Reaction / Event (unit)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''SAS''][ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[''RID1'']]/ns:pauseQuantity/@unit', NULL, NULL, 1, 32000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.13.2a', 'Time between last dose of drug and start of reaction/event', 'druglastperiod', 'G.k.9.i.3.2a', 'Time Interval between Last Dose of Drug and Start of Reaction / Event (number)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''SAE''][ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[''RID1'']]/ns:pauseQuantity/@value', NULL, NULL, 1, 32100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.13.2b', 'Time between last dose of drug and start of reaction/event (unit)', 'druglastperiodunit', 'G.k.9.i.3.2b', 'Time Interval between Last Dose of Drug and Start of Reaction / Event (unit)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''SAE''][ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[''RID1'']]/ns:pauseQuantity/@unit', NULL, NULL, 1, 32200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.17.1', 'Did Reaction Recur on Readministration?', 'drugrecurreadministration', 'G.k.9.i.4', 'Did Reaction Recur on Re-administration?', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.16'']/@code', NULL, NULL, 1, 32300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.16', 'Action(s) taken with drug', 'actiondrug', 'G.k.8', 'Action(s) Taken with Drug', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''CAUS''][ns:act/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.15'']][1]/ns:act[@classCode=''ACT''][@moodCode=''EVN'']/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.15'']/@code', NULL, NULL, 1, 32400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.19', 'Additional information on drug', 'drugadditional', 'G.k.11', 'Additional Information on Drug (free text)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''REFR''][ns:observation/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ST''][1]/text()', NULL, NULL, 1, 32500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2', 'Active Substance Information', 'activesubstance', 'G.k.2.3.r', 'Substance / Specified Substance Identifier and Strength (repeat as necessary)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:ingredient[@classCode=''ACTI'']', NULL, NULL, 1, 32600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2.2', 'Active Drug substance names', 'activesubstancename', 'G.k.2.3.r.1', 'Substance / Specified Substance Name', 
    'ns:ingredientSubstance[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:name[1]/text()', NULL, NULL, 1, 32700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.3.r.2a', 'Substance / Specified Substance TermID Version Date / Number', 
    'ns:ingredientSubstance[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-Substance'']/@codeSystemVersion', NULL, NULL, 1, 32800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.3.r.2b', 'Substance / Specified Substance TermID', 
    'ns:ingredientSubstance[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-Substance'']/@code', NULL, NULL, 1, 32900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2.x1a', 'Strength (number)', '../strength_extension', 'G.k.2.3.r.3a', 'Strength (number)', 
    'ns:quantity[ns:denominator/@value=''1'']/ns:numerator/@value', NULL, NULL, 1, 33000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2.x1b', 'Strength (unit)', '../strengthunit_extension', 'G.k.2.3.r.3b', 'Strength (unit)', 
    'ns:quantity[ns:denominator/@value=''1'']/ns:numerator/@unit', NULL, NULL, 1, 33100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.17.2a', 'MedDRA version for reaction(s)/event(s) recurred', 'drugrecuractionmeddraversion', NULL, NULL, 
    NULL, NULL, NULL, 1, 33200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.17.2b', 'If yes, which reaction(s)/event(s) recurred?', 'drugrecuraction', NULL, NULL, 
    NULL, NULL, NULL, 1, 33300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18', 'Relatedness of drug to reaction(s)/event(s)', 'drugreactionrelatedness', 'G.k.9.i', 'Drug-reaction(s) / Event(s) Matrix (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'' ]/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:causalityAssessment[ns:code[@code=''39''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][ns:subject1[@typeCode=''SUBJ'']/ns:adverseEffectReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''UUID of i-th reaction'']][ns:subject2[@typeCode=''SUBJ'']/ns:productUseReference[@classCode=''SBADM''][@moodCode=''EVN'']/ns:id[@root=''UUID of k-th drug'']]]', NULL, NULL, 1, 33400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.1a', 'MedDRA version for Reaction assessed', 'drugreactionassesmeddraversion', NULL, NULL, 
    NULL, NULL, NULL, 1, 33500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.1b', 'Reaction assessed', 'drugreactionasses', 'G.k.9.i.1', 'Reaction(s) / Event(s) Assessed', 
    'ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SUBJ'']/ns:adverseEffectReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id/@root|//ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:id[@root=''reactionid'']]/ns:value[@xsi:type=''CE'']/@code', NULL, NULL, 1, 33600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.9.i.2.r', 'Assessment of Relatedness of Drug to Reaction(s) / Event(s) (repeat as necessary)', 
    NULL, NULL, NULL, 1, 33700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.2', 'Source of assessment', 'drugassessmentsource', 'G.k.9.i.2.r.1', 'Source of Assessment', 
    'ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT''][1]/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code/ns:originalText/text()', NULL, NULL, 1, 33800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.3', 'Method of assessment', 'drugassessmentmethod', 'G.k.9.i.2.r.2', 'Method of Assessment', 
    'ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN'']/ns:methodCode[1]/ns:originalText/text()', NULL, NULL, 1, 33900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.4', 'Drug result', 'drugresult', 'G.k.9.i.2.r.3', 'Result of Assessment', 
    'ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ST'']/text()', NULL, NULL, 1, 34000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.2', 'Assessment merged in R2', NULL, 'G.k.9.i.2.r.1.EU.1', 'EU Source of Assessment', 
    'ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT''][1]/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code/@code', NULL, NULL, 1, 34100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.3', 'Assessment merged in R2', NULL, 'G.k.9.i.2.r.2.EU.1', 'EU Method of Assessment', 
    'ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN'']/ns:methodCode/@code', NULL, NULL, 1, 34200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.4', 'Assessment merged in R2', NULL, 'G.k.9.i.2.r.3.EU.1', 'EU Result of Assessment', 
    'ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN'']/ns:value/@code', NULL, NULL, 1, 34300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5', 'Narrative case summary and further information:', 'summary', 'H', 'Narrative Case Summary and Further Information', 
    NULL, NULL, NULL, 1, 34400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.1', 'Case narrative', 'narrativeincludeclinical', 'H.1', 'Case Narrative Including Clinical Course, Therapeutic Measures, Outcome and Additional Relevant Information', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:text/text()', NULL, NULL, 1, 34500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.2', 'Reporter''s comments', 'reportercomment', 'H.2', 'Reporter''s Comments', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component1[@typeCode=''COMP''][ns:observationEvent[ns:code[@code=''10''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']]][1]/ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED'']/text()', NULL, NULL, 1, 34600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'summary', 'H.3.r', 'Sender''s Diagnosis (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component1[@typeCode=''COMP''][ns:observationEvent[ns:code[@code=''15''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']]]', NULL, NULL, 1, 34700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.3a', 'MedDRA Version for Sender''s diagnosis', 'senderdiagnosismeddraversion', 'H.3.r.1a', 'MedDRA Version for Sender''s Diagnosis / Syndrome and / or Reclassification of Reaction / Event', 
    'ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163'']/@codeSystemVersion', NULL, NULL, 1, 34800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.3b', 'Sender''s diagnosis/syndrome and/or reclassification of reaction/event', 'senderdiagnosis', 'H.3.r.1b', 'Sender''s Diagnosis / Syndrome and / or Reclassification of Reaction / Event  (MedDRA code)', 
    'ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163'']/@code', NULL, NULL, 1, 34900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.4', 'Sender''s comments', 'sendercomment', 'H.4', 'Sender''s Comments', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component1[@typeCode=''COMP''][ns:observationEvent[ns:code[@code=''10''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']]][1]/ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED'']/text()', NULL, NULL, 1, 35000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H.5.r', 'Case Summary and Reporter''s Comments in Native Language (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observationEvent[ns:code[@code=''36''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']]]', NULL, NULL, 1, 35100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H.5.r.1a', 'Case Summary and Reporter''s Comments Text', 
    'ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED'']/text()', NULL, NULL, 1, 35200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H.5.r.1b', 'Case Summary and Reporter''s Comments Language', 
    'ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED'']/@language', NULL, NULL, 1, 35300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1', 'ICSR Message Header (header / entity)', 'ichicsrmessageheader', 'ACK.M/A', 'ICH ICSR Batch Acknowledgement Header', 
    NULL, NULL, NULL, 4, 100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.1', 'Message Type', 'messagetype', NULL, NULL, 
    NULL, NULL, NULL, 4, 200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.2', 'Message Format Version', 'messageformatversion', NULL, NULL, 
    NULL, NULL, NULL, 4, 300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.3', 'Message Format Release', 'messageformatrelease', NULL, NULL, 
    NULL, NULL, NULL, 4, 400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.4', 'Message Number', 'messagenumb', 'ACK.M.1', 'Acknowledgement Batch Number', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.20'']/@extension', NULL, NULL, 4, 500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.5', 'Message Sender Identifier', 'messagesenderidentifier', 'ACK.M.2', 'Acknowledgement  Batch Sender Identifier', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:sender[@typeCode=''SND'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.17''][1]/@extension', NULL, NULL, 4, 600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.6', 'Message Receiver Identifier', 'messagereceiveridentifier', 'ACK.M.3', 'Acknowledgement Batch Receiver Identifier', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:receiver[@typeCode=''RCV'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.18''][1]/@extension', NULL, NULL, 4, 700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.7a', 'Message Date (date format)', 'messagedateformat', NULL, NULL, 
    NULL, NULL, NULL, 4, 800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.7b', 'Message Date', 'messagedate', 'ACK.M.4', 'Acknowledgement Date of Batch Transmission', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:creationTime/@value', NULL, NULL, 4, 900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'acknowledgment', NULL, NULL, 
    NULL, NULL, NULL, 4, 1000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1', 'Message Acknowledgement (header / entity)', 'messageacknowledgment', NULL, NULL, 
    NULL, NULL, NULL, 4, 1100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.1', 'ICSR Message Number', 'icsrmessagenumb', 'ACK.A.1', 'ICSR Batch Number', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:acknowledgement/ns:targetBatch/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.22'']/@extension', NULL, NULL, 4, 1200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.2', 'Local Message Number', 'localmessagenumb', 'ACK.A.2', 'Acknowledgement Local Message Number', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:attentionLine[ns:keyWordText[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.24'']][1]/ns:value[@xsi:type=''II''][@root=''2.16.840.1.113883.3.989.2.1.3.21'']/@extension', NULL, NULL, 4, 1300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.3', 'ICSR Message Sender ID', 'icsrmessagesenderidentifier', NULL, NULL, 
    NULL, NULL, NULL, 4, 1400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.4', 'ICSR Message Receiver ID', 'icsrmessagereceiveridentifier', NULL, NULL, 
    NULL, NULL, NULL, 4, 1500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5a', 'ICSR Message Date (date format)', 'icsrmessagedateformat', NULL, NULL, 
    NULL, NULL, NULL, 4, 1600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5b', 'ICSR Message Date', 'icsrmessagedate', 'ACK.A.3', 'Date of ICSR Batch Transmission', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:attentionLine[ns:keyWordText[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.24'']][1]/ns:value[@xsi:type=''TS'']/@value', NULL, NULL, 4, 1700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.6', 'Transmission Acknowledgement Code', 'transmissionacknowledgmentcode', 'ACK.A.4', 'Transmission Acknowledgement Code', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:acknowledgement/@typeCode', NULL, NULL, 4, 1800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.7', 'Parsing Error Message', 'parsingerrormessage', 'ACK.A.5', 'Batch Validation Error', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:acknowledgement[@typeCode=''AA'']/ns:acknowledgementDetail[1]/text/text()', NULL, NULL, 4, 1900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1', 'Report Acknowledgment (header / entity)', 'reportacknowledgment', 'ACK.B.r', 'ICH ICSR Message Acknowledgement Header', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:MCCI_IN000002UV01', NULL, NULL, 4, 2000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1', 'Safety Report ID', 'safetyreportid', 'ACK.B.r.1', 'ICSR Message Number', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:MCCI_IN000002UV01[1]/ns:acknowledgement[@typeCode][1]/ns:targetMessage/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.1'']/@extension', NULL, NULL, 4, 2100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2', 'Safety Report Version Number', 'safetyreportversion', NULL, NULL, 
    NULL, NULL, NULL, 4, 2200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.3', 'Local Report Number', 'localreportnumb', 'ACK.B.r.2', 'Local Report Number', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:MCCI_IN000002UV01[1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.19'']/@extension', NULL, NULL, 4, 2300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.4', 'Regulatory Authority''s Case Report Number', 'authoritynumb', NULL, NULL, 
    NULL, NULL, NULL, 4, 2400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.5', 'Other Sender''s Case Report Number', 'companynumb', NULL, NULL, 
    NULL, NULL, NULL, 4, 2500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7a', 'Date of Receipt of the Most Recent Information (date format)', 'receiptdateformat', NULL, NULL, 
    NULL, NULL, NULL, 4, 2600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7b', 'Date of Receipt of the Most Recent Information', 'receiptdate', NULL, NULL, 
    NULL, NULL, NULL, 4, 2700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'ACK.B.r.3', 'ICSR Message ACK Receiver', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:MCCI_IN000002UV01[1]/ns:receiver[@typeCode=''RCV'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.16'']/@extension', NULL, NULL, 4, 2800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'ACK.B.r.4', 'ICSR Message ACK Sender', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:MCCI_IN000002UV01[1]/ns:sender[@typeCode=''SND'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.15'']/@extension', NULL, NULL, 4, 2900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'ACK.B.r.5', 'Date of ICSR Message Creation', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:MCCI_IN000002UV01[1]/ns:attentionLine[ns:keyWordText[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.24'']][1]/ns:value[@xsi:type=''TS'']/@value', NULL, NULL, 4, 3000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8', 'Acknowledgment Code for a Report', 'reportacknowledgmentcode', 'ACK.B.r.6', 'Acknowledgment Code for a ICSR Message', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:MCCI_IN000002UV01[1]/ns:acknowledgement[1]/@typeCode', NULL, NULL, 4, 3100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9', 'Error Message or Comment', 'errormessagecomment', 'ACK.B.r.7', 'Error / Warning Message or Comment', 
    '/ns:MCCI_IN200101UV01[@ITSVersion=''XML_1.0'']/ns:MCCI_IN000002UV01[1]/ns:acknowledgement[@typeCode=''CA''][1]/ns:acknowledgementDetail[1]/ns:text/text()', NULL, NULL, 4, 3200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'A.0.Temp1', 'Version Code', 
    '//ns:versionCode/@code', NULL, '0', 7, 100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.0.1', 'Sender''s (Case) Safety Report Unique Identifier', 'safetyreportid', 'A.0.Temp2', 'Batch ID', 
    '//ns:id[@assigningAuthorityName="MessageSender"]/@extension', NULL, '0', 7, 200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.1', 'Message Type', 'messagetype', NULL, NULL, 
    NULL, NULL, '0', 7, 300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.2', 'Message Format Version', 'messageformatversion', NULL, NULL, 
    NULL, NULL, '0', 7, 400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.4', 'Message Number', 'messagenumb', 'A.0.Temp3', 'Message ID', 
    '//ns:message/ns:id/@extension', NULL, '0', 7, 500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.5', 'Message Sender Identifier', 'messagesenderidentifier', NULL, NULL, 
    NULL, NULL, '0', 7, 600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.6', 'Message Receiver Identifier', 'messagereceiveridentifier', NULL, NULL, 
    NULL, NULL, '0', 7, 700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.3b', 'Date of this transmission', 'transmissiondate', NULL, NULL, 
    NULL, NULL, '0', 7, 800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'A.0.Temp4', 'Form Source', 
    '//ns:message/ns:controlActProcess/ns:reasonOf/ns:detectedIssueEvent/ns:code[@code=''F77770'']/../ns:value/@code', NULL, '0', 7, 900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1', 'Patient Identifier', 'patientinitial', 'A1', 'Patient Identifier', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectAffectedPerson/ns:name/text()', NULL, '0', 7, 1000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1.1d', 'Investigation number', 'patientinvestigationnumb', 'A1', 'Patient Identifier', 
    NULL, NULL, '0', 7, 1100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.1b', 'Date of birth', 'patientbirthdate', 'A2', 'Date of birth', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectAffectedPerson/ns:birthTime/@value', NULL, '0', 7, 1200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.2a', 'Age at time of event ', 'patientonsetage', 'A2.a', 'Age at time of event ', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf/ns:observation/ns:code[@code=''C25150'']/../ns:value/@value', NULL, '0', 7, 1300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.2b', 'Age at time of event Unit', 'patientonsetageunit', 'A2.b', 'Age at time of event Unit', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf/ns:observation/ns:code[@code=''C25150'']/../ns:value/@unit', NULL, '0', 7, 1400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.5', 'Sex', 'patientsex', 'A3', 'Sex', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectAffectedPerson/ns:administrativeGenderCode/@code', NULL, '0', 7, 1500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.3', 'Weight ', 'patientweight', 'A4.a', 'Weight ', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf/ns:observation/ns:code[@code=''C25208'']/../ns:value/@value', NULL, '0', 7, 1600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'A4.b', 'Weight Unit', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf/ns:observation/ns:code[@code=''C25208'']/../ns:value/@unit', NULL, '0', 7, 1700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.5', 'Report Type', 'medrpttype_extension', 'B1', 'Report Type', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:code/@code', NULL, '0', 7, 1800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Outcomes attributed to adverse event - Seriousness Death', 'seriousnessdeath', 'B2.1.a', 'Outcomes attributed to adverse event - Seriousness Death', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation2/ns:caseSeriousness/ns:code[@code=''C49489'']/../ns:value[@code=''C28554'']/@code', NULL, '0', 7, 1900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.1b', 'Date of death', 'patientdeathdate', 'B2.1.b', 'Date of Death', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectAffectedPerson/ns:deceasedTime/@value', NULL, '0', 7, 2000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Outcomes attributed to adverse event - Event Caused Hosp', 'seriousnesshospitalization', 'B2.2', 'Outcomes attributed to adverse event - Event Caused Hosp', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation2/ns:caseSeriousness/ns:code[@code=''C49489'']/../ns:value[@code=''C25179'']/@code', NULL, '0', 7, 2100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Outcomes attributed to adverse event - Seriousness Threat', 'seriousnesslifethreatening', 'B2.3', 'Outcomes attributed to adverse event - Seriousness Threat', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation2/ns:caseSeriousness/ns:code[@code=''C49489'']/../ns:value[@code=''C41337'']/@code', NULL, '0', 7, 2200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Outcomes attributed to adverse event - Seriousness Congential Anamoly', 'seriousnesscongenitalanomali', 'B2.4', 'Outcomes attributed to adverse event - Seriousness Congential Anamoly', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation2/ns:caseSeriousness/ns:code[@code=''C49489'']/../ns:value[@code=''C2849'']/@code', NULL, '0', 7, 2300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Outcomes attributed to adverse event - Seriousness Disable', 'seriousnessdisabling', 'B2.5', 'Outcomes attributed to adverse event - Seriousness Disable', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation2/ns:caseSeriousness/ns:code[@code=''C49489'']/../ns:value[@code=''C21007'']/@code', NULL, '0', 7, 2400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('S.11', 'Outcomes attributed to adverse event - Intervention Reqd', 'intervenrequire_extension', 'B2.6', 'Outcomes attributed to adverse event - Intervention Reqd', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation2/ns:caseSeriousness/ns:code[@code=''C49489'']/../ns:value[@code=''C52668'']/@code', NULL, '0', 7, 2500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Outcomes attributed to adverse event - Seriousness Other', 'seriousnessother', 'B2.7', 'Outcomes attributed to adverse event - Seriousness Other', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation2/ns:caseSeriousness/ns:code[@code=''C49489'']/../ns:value[@code=''C17649'']/@code', NULL, '0', 7, 2600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('S.10', 'Date of Event', 'onsetdate_extension', 'B3', 'Date of Event', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:effectiveTime/@value', NULL, '0', 7, 2700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.6a', 'Date Format of this report', 'receivedateformat', NULL, NULL, 
    NULL, NULL, '0', 7, 2800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.6b', 'Date of this report', 'receivedate', 'B4', 'Date of this report', 
    '//ns:message/ns:controlActProcess/ns:code[@codeSystem=''HL7''][@code=''PORR_TE040001UV01''][@codeSystemName=''HL7 Trigger Event Id'']/../ns:effectiveTime/@value', NULL, '0', 7, 2900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2', NULL, 'reaction', 'B5', 'Describe event or problem', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:text', NULL, '0', 7, 3000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'B5', 'Describe event or problem', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:text/text()', NULL, '0', 7, 3100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.0', 'Describe event or problem', 'primarysourcereaction', NULL, 'Value Concatenated in B5', 
    NULL, NULL, '0', 7, 3200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.2.i.2.b', 'Reaction/event MedDRA term (PT)', 'reactionmeddrapt', NULL, 'Value Concatenated in B5', 
    NULL, NULL, NULL, 7, 3250, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, sysdate, 1, sysdate, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'B5.1', NULL, 
    NULL, NULL, '0', 7, 3300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.1', 'Describe event or problem', 'narrativeincludeclinical', NULL, 'Value Concatenated in B5', 
    NULL, NULL, '0', 7, 3400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.4', 'Describe event or problem', 'sendercomment', NULL, 'Value Concatenated in B5', 
    NULL, NULL, '0', 7, 3500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1', 'Relevent Tests', 'patient[resultstestsprocedures]', 'B6.1', 'Relevant tests ', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf/ns:observation/ns:code[@code=''C36292'']/../ns:value', NULL, '0', 7, 3600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1', 'Test Procedure', 'resultstestsprocedures', 'B6.1', 'Test Procedure', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf/ns:observation/ns:code[@code=''C36292'']/../ns:value/text()', NULL, '0', 7, 3700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'test', 'B6.2', 'Relevant Test', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf/ns:observation/ns:code[@code=''C36292'']/../ns:value', NULL, '0', 7, 3800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'B6.2.1', 'Relevant tests/laboratory data', 
    NULL, NULL, '0', 7, 3900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1b', 'Date', 'testdate', NULL, 'Value Concatenated in B6', 
    NULL, NULL, '0', 7, 4000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1c', 'Test', 'testname', NULL, 'Value Concatenated in B6', 
    NULL, NULL, '0', 7, 4100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1d', 'Result', 'testresult', NULL, 'Value Concatenated in B6', 
    NULL, NULL, '0', 7, 4200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1e', 'Unit', 'testunit', NULL, 'Value Concatenated in B6', 
    NULL, NULL, '0', 7, 4300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1.1', 'Normal low range', 'lowtestrange', NULL, 'Value Concatenated in B6', 
    NULL, NULL, '0', 7, 4400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1.2', 'Normal high range', 'hightestrange', NULL, 'Value Concatenated in B6', 
    NULL, NULL, '0', 7, 4500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1.3', 'More information available (Y/N)', 'moreinformation', NULL, 'Value Concatenated in B6', 
    NULL, NULL, '0', 7, 4600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'B6.2', NULL, 
    NULL, NULL, '0', 7, 4700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'B7', 'Other relevant history, including preexisting medical conditions', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf/ns:observation/ns:code[@code=''C53263'']/../ns:value/text()', NULL, '0', 7, 4800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('P.1', 'Patient Pregnancy Extension', 'pregnant_extension', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 4900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.6b', 'Patient last menstrual period date', 'patientlastmenstrualdate', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 5000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('P.2', 'Race', 'patracecode_extension', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 5100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7', 'Medical History Episode', 'medicalhistoryepisode', 'B7.1', 'Patient Medical History', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf/ns:observation/ns:code[@code=''C53263'']/../ns:value', NULL, '0', 7, 5200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1a.2', 'Patient Episode Name', 'patientepisodename', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 5300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1c', 'Patient Medical Start Date
', 'patientmedicalstartdate', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 5400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1d', 'Patient Medical continuing', 'patientmedicalcontinue', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 5500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1f', 'Patient Medical End Date', 'patientmedicalenddate', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 5600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1g', 'Patient Medical Comment', 'patientmedicalcomment', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 5700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1h', 'Patient Condition', 'condition_extension', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 5800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'B7.1', NULL, 
    NULL, NULL, '0', 7, 5900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8', 'Patient Past Drug Therapy', 'patientpastdrugtherapy', 'B7.2', 'Patient Past Drug Therapy', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf/ns:observation/ns:code[@code=''C53263'']/../ns:value', NULL, '0', 7, 6000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8a', 'Patient Drug Name', 'patientdrugname', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 6100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8c', 'Patient Drug Start Date', 'patientdrugstartdate', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 6200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8e', 'Patient Drug End Date', 'patientdrugenddate', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 6300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8f.2', 'Patient Drug Indication', 'patientdrugindication', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 6400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8g.2', 'Patient Drug Reaction', 'patientdrugreaction', NULL, 'Value Concatenated in B7', 
    NULL, NULL, '0', 7, 6500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'B7.2', NULL, 
    NULL, NULL, '0', 7, 6600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'drug[drugcharacterization="1"]', 'D1', 'Suspect medical device', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo', NULL, '0', 7, 6700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.1', 'Drug Characterization', 'drugcharacterization', NULL, NULL, 
    NULL, NULL, '0', 7, 6800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2.1', 'Brand Name', 'medicinalproduct', 'D1', 'Brand Name', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:inventoryItem/ns:manufacturedDeviceModel/ns:manufacturerModelName/text()', NULL, '0', 7, 6900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.1', 'Type of device - Product Code', 'devicecode_extension', 'D2', 'Type of device - Product Code', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:inventoryItem/ns:manufacturedDeviceModel/ns:code/@code', NULL, '0', 7, 7000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.2', 'Device Type Name', 'devicetype_extension', 'D2', 'Device Type Name', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:inventoryItem/ns:manufacturedDeviceModel/ns:code/ns:originalText/text()', NULL, '0', 7, 7100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'Manufacturer name and address', NULL, 'D3', 'Manufacturer name and address', 
    NULL, NULL, '0', 7, 7200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.4.3', 'Manufacturer Name', 'drugauthorizationholder', 'D3.a', 'Manufacturer Name', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53616'']/../ns:name/text()', NULL, '0', 7, 7300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.39', 'Manufacturer Address Street Line 1', 'mfgaddress_extension', 'D3.b', 'Manufacturer Address Street Line 1', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53616'']/../ns:addr/ns:streetAddressLine[1]/text()', NULL, '0', 7, 7400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'Manufacturer Address Street Line 2', NULL, 'D3.c', 'Manufacturer Address Street Line 2', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53616'']/../ns:addr/ns:streetAddressLine[2]/text()', NULL, '0', 7, 7500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.40', 'Manufacturer City', 'mfgcity_extension', 'D3.d', 'Manufacturer City', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53616'']/../ns:addr/ns:city/text()', NULL, '0', 7, 7600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.41', 'Manufacturer State Code', 'mfgstate_extension', 'D3.e', 'Manufacturer State Code', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53616'']/../ns:addr/ns:state/text()', NULL, '0', 7, 7700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.42', 'Manufacturer Zip Code', 'mfgpostcode_extension', 'D3.f', 'Manufacturer Zip Code', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53616'']/../ns:addr/ns:postalCode/text()', NULL, '0', 7, 7800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.43', 'Manufacturer Country Code', 'mfgcountry_extension', 'D3.g', 'Manufacturer Country Code', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53616'']/../ns:addr/ns:country/text()', NULL, '0', 7, 7900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D3.h', 'Manufacturer Email Address', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53616'']/../ns:telecom[starts-with(@value,''mailto:'')]/@value', NULL, '0', 7, 8000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.44', 'Manufacturer Fax No', 'mfgfax_extension', 'D3.i', 'Manufacturer Fax No', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53616'']/../ns:telecom[starts-with(@value,''fax:'')]/@value', NULL, '0', 7, 8100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'Manufacturer Postal Code', NULL, 'D4', 'Model #,  Lot #, Catalog #, Expiration Date, Serial #, Other #', 
    NULL, NULL, '0', 7, 8200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.3', 'Model Number ', 'modelno_extension', 'D4.a', 'Model Number ', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:inventoryItem/ns:manufacturedDeviceModel/ns:id/@extension', NULL, '0', 7, 8300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.4', 'Lot Number', 'lotno_extension', 'D4.b', 'Lot Number', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:lotNumberText/text()', NULL, '0', 7, 8400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.6', 'Catalog Number', 'devicecatalogno_extension', 'D4.c', 'Catalog Number', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:id/@extension', NULL, '0', 7, 8500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.5', 'Expiration Date', 'expirationdate_extension', 'D4.d', 'Expiration Date', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:expirationTime/@value', NULL, '0', 7, 8600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.6', 'Serial Number', 'deviceserialnum_extension', 'D4.e', 'Serial Number', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:id/@extension', NULL, '0', 7, 8700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('D.7', 'Unique Identifier (UDI #)', 'devicecatalogother_extension', 'D4.f', 'Unique Identifier (UDI #)', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct[1]/ns:code/@code', 'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct[1]/ns:code/@nullFlavor', '0', 7, 8800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.9', 'Operator of device', 'deviceoperator_extension', 'D5.a', 'Operator of device', 
    'ns:procedureEvent/ns:authorOrPerformer/ns:assignedEntity/ns:code/@code', NULL, '0', 7, 8900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.10', 'Other Operator', 'operatorother_extension', 'D5.b', 'Other Operator', 
    'ns:procedureEvent/ns:authorOrPerformer/ns:assignedEntity/ns:code/ns:originalText/text()', NULL, '0', 7, 9000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.11', 'If Implanted give date', 'implantdate_extension', 'D6', 'If Implanted give date', 
    'ns:procedureEvent/ns:component1/ns:implantation/ns:effectiveTime/@value', NULL, '0', 7, 9100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.12', 'If explanted, give date', 'explantdate_extension', 'D7', 'If explanted, give date', 
    'ns:procedureEvent/ns:component2/ns:explantation/ns:effectiveTime/@value', NULL, '0', 7, 9200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.13', 'Is this a single-use device that was reprocessed and reused on a patient?', 'reprocessedreuse_extension', 'D8', 'Is this a single-use device that was reprocessed and reused on a patient?', 
    'ns:procedureEvent/ns:pertinentInformation1/ns:observation/ns:code[@code=''C53563'']/../ns:value/@value', 'ns:procedureEvent/ns:pertinentInformation1/ns:observation/ns:code[@code=''C53563'']/../ns:value/@nullFlavor', '0', 7, 9300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'If Implanted give date', NULL, 'D9', 'If yes to item 8, enter name and address of reprocessor', 
    NULL, NULL, '0', 7, 9400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.14.a', 'Reprocessor Name', 'reprocessorname_extension', 'D9.a', 'Reprocessor Name', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53614'']/../ns:name/text()', NULL, '0', 7, 9500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.14.b', 'Reprocessor Address Street Line 1', 'reprocessoraddress_extension', 'D9.b', 'Reprocessor Address Street Line 1', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53614'']/../ns:addr/ns:streetAddressLine[1]/text()', NULL, '0', 7, 9600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.14.c', 'Reprocessor Address Street Line 2', NULL, 'D9.c', 'Reprocessor Address Street Line 2', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53614'']/../ns:addr/ns:streetAddressLine[2]/text()', NULL, '0', 7, 9700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.14.d', 'Reprocessor City', 'reprocessorcity_extension', 'D9.d', 'Reprocessor City', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53614'']/../ns:addr/ns:city/text()', NULL, '0', 7, 9800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.14.e', 'Reprocessor State Code', 'reprocessorstate_extension', 'D9.e', 'Reprocessor State Code', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53614'']/../ns:addr/ns:state/text()', NULL, '0', 7, 9900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.14.f', 'Reprocessor Postal Code', 'reprocessorpostcode_extension', 'D9.f', 'Reprocessor Postal Code', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53614'']/../ns:addr/ns:postalCode/text()', NULL, '0', 7, 10000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.14.g', 'Reprocessor Country Code', 'reprocessorcountry_extension', 'D9.g', 'Reprocessor Country Code', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53614'']/../ns:addr/ns:country/text()', NULL, '0', 7, 10100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.14.h', 'Reprocessor Email', NULL, 'D9.h', 'Reprocessor Email', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53614'']/../ns:telecom[starts-with(@value, ''mailto:'')]/@value', NULL, '0', 7, 10200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.14.i', 'Reprocessor Fax Number', NULL, 'D9.i', 'Reprocessor Fax Number', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:code[@code=''C53614'']/../ns:telecom[starts-with(@value, ''fax:'')]/@value', NULL, '0', 7, 10300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.7', 'Device available for evaluation', 'availbleforeval_extension', 'D10.a', 'Device available for evaluation?', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53449'']/../ns:value/@value', 'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53449'']/../ns:value/@nullFlavor', '0', 7, 10400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.8', 'Date returned to manufacturer', 'returndate_extension', 'D10.b', 'Date returned to manufacturer', 
    'ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53449'']/../ns:effectiveTime/@value', NULL, '0', 7, 10500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D1', NULL, 
    NULL, NULL, '0', 7, 10600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'drug[drugcharacterization="2"]', 'D.11', 'Concomitant medical products', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo/ns:procedureEvent/ns:pertinentInformation1[ns:observation/ns:code[@code=''C53630'']]', NULL, '0', 7, 10700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.11.a', 'Concomitant medical products', 
    'ns:observation/ns:value/text()', NULL, '0', 7, 10800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2.1', 'Concomitant medical products', 'medicinalproduct_extension', NULL, 'Value Concatenated in D.11.a', 
    NULL, NULL, '0', 7, 10900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.7', 'Pharmaceutical form (Dosage form)', 'drugdosageform', NULL, 'Value Concatenated in D.11.a', 
    NULL, NULL, '0', 7, 11000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.11.b', 'Therapy dates', 
    'ns:observation/ns:effectiveTime/@value', NULL, '0', 7, 11100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.12b', 'Date of start of drug', 'drugstartdate', NULL, 'Value Concatenated in D.11.b', 
    NULL, NULL, '0', 7, 11200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.14b', 'Date of last administration', 'drugenddate', NULL, 'Value Concatenated in D.11.b', 
    NULL, NULL, '0', 7, 11300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.11', NULL, 
    NULL, NULL, '0', 7, 11400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2', 'Reporter Details', 'primarysource', 'E1', '  Initial Reporter Name ', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:pertinentInformation/ns:primarySourceReport/ns:author', NULL, '0', 7, 11500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1b', 'Reporter Given Name', 'reportergivename', 'E1.a', 'Reporter Given Name', 
    'ns:assignedEntity/ns:assignedPerson/ns:name/ns:given[1]/text()', NULL, '0', 7, 11600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1c', 'Reporter Middle Name', 'reportermiddlename', 'E1.b', 'Reporter Middle Name', 
    'ns:assignedEntity/ns:assignedPerson/ns:name/ns:given[2]/text()', NULL, '0', 7, 11700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1d', 'Reporter Last Name', 'reporterfamilyname', 'E1.c', 'Reporter Last Name', 
    'ns:assignedEntity/ns:assignedPerson/ns:name/ns:family/text()', NULL, '0', 7, 11800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1a', 'Reporter Title', 'reportertitle', 'E1.d', 'Title', 
    'ns:assignedEntity/ns:assignedPerson/ns:name/ns:prefix/text()', NULL, '0', 7, 11900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2a', 'Reporter organization', 'reporterorganization', 'E1.e', 'Reporter organization', 
    'ns:assignedEntity/ns:representedOrganization/ns:name/text()', NULL, '0', 7, 12000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2c', 'Reporter''s address-street', 'reporterstreet', 'E1.f', 'Reporter''s address-street', 
    'ns:assignedEntity/ns:assignedPerson/ns:addr/ns:streetAddressLine[1]/text()', NULL, '0', 7, 12100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E1.g', 'streetAddressLine 2', 
    'ns:assignedEntity/ns:assignedPerson/ns:addr/ns:streetAddressLine[2]/text()', NULL, '0', 7, 12200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2d', 'Reporter''s city', 'reportercity', 'E1.h', 'Reporter''s city', 
    'ns:assignedEntity/ns:assignedPerson/ns:addr/ns:city/text()', NULL, '0', 7, 12300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2e', 'Reporter''s state or province', 'reporterstate', 'E1.i', 'Reporter''s state or province', 
    'ns:assignedEntity/ns:assignedPerson/ns:addr/ns:state/text()', NULL, '0', 7, 12400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2f', 'Reporter''s postcode', 'reporterpostcode', 'E1.j', 'Reporter''s postcode', 
    'ns:assignedEntity/ns:assignedPerson/ns:addr/ns:postalCode/text()', NULL, '0', 7, 12500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.3', 'Reporter country code', 'reportercountry', 'E1.k', 'Reporter country code', 
    'ns:assignedEntity/ns:assignedPerson/ns:addr/ns:country/text()', NULL, '0', 7, 12600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.5', 'Reporter Email Address', 'repemail_extension', 'E1.l', 'Reporter Email Address', 
    'ns:assignedEntity/ns:assignedPerson/ns:telecom[starts-with(@value, ''mailto:'')]/@value', NULL, '0', 7, 12700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.6', 'Reporter Phone', 'repphone_extension', 'E1.m', 'Reporter Phone', 
    'ns:assignedEntity/ns:assignedPerson/ns:telecom[starts-with(@value, ''tel:'')]/@value', NULL, '0', 7, 12800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.6a', 'Reporter Fax Number', 'repfax_extension', 'E1.n', 'Reporter Fax number', 
    'ns:assignedEntity/ns:assignedPerson/ns:telecom[starts-with(@value, ''fax:'')]/@value', NULL, '0', 7, 12900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E2', 'Health Professional?', 
    NULL, NULL, '0', 7, 13000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.7', 'Occupation', 'rptoccupation_extension', 'E3.a', 'Occupation', 
    'ns:assignedEntity/ns:code/@code', NULL, '0', 7, 13100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E3.b', 'Other Occupation', 
    'ns:assignedEntity/ns:code/ns:originalText/text()', NULL, '0', 7, 13200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.8', 'Initial reporter also sent report to FDA', 'rptsenttofda_extension', 'E4', 'Initial Reporter Did Not Send Report to FDA', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:pertinentInformation/ns:primarySourceReport/ns:receiver/@negationInd', '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:pertinentInformation/ns:primarySourceReport/ns:receiver/@nullFlavor', '0', 7, 13300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E1.z', NULL, 
    NULL, NULL, NULL, 7, 13400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F', 'For use by user facility/distributor - devices only', 
    NULL, NULL, '0', 7, 13500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.9', 'Check One(User Facility/Importer)', 'checkone_extension', 'F1', 'Check one: user facility, distributor', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:code[@codeSystemName=''Type_of_Reporter'']/@code', NULL, '0', 7, 13600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.10', 'UF/Importer Report Number', 'importreportno_extension', 'F2', 'UF/Importer Report Number', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:id/@extension', NULL, '0', 7, 13700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.11', 'UF/Distributor Name , Address', 'importername_extension', 'F3.a', 'User Facility or Importer Name/Address', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:additionalLocator/text()', NULL, '0', 7, 13800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'UF/Distributor Name , Address', NULL, 'F3.b', 'streetAddressLine', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:streetAddressLine[1]/text()', NULL, '0', 7, 13900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'UF/Distributor Name , Address', NULL, 'F3.c', 'streetAddressLine 2', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:streetAddressLine[2]/text()', NULL, '0', 7, 14000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'UF/Distributor Name , Address', NULL, 'F3.d', 'city', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:city/text()', NULL, '0', 7, 14100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'UF/Distributor Name , Address', NULL, 'F3.e', 'state', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:state/text()', NULL, '0', 7, 14200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'UF/Distributor Name , Address', NULL, 'F3.f', 'Zip Code', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:postalCode/text()', NULL, '0', 7, 14300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'UF/Distributor Name , Address', NULL, 'F3.g', 'country', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:country/text()', NULL, '0', 7, 14400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F4', 'Contact person', 
    NULL, NULL, '0', 7, 14500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3c', 'Sender Given Name', 'sendergivename', 'F4.a', 'Contact First Name', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:contactParty/ns:contactPerson/ns:name/ns:given[1]/text()', NULL, '0', 7, 14600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3d', 'Sender Middle Name', 'sendermiddlename', 'F4.b', 'Contact Middle Name', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:contactParty/ns:contactPerson/ns:name/ns:given[2]/text()', NULL, '0', 7, 14700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3e', 'Sender Family Name', 'senderfamilyname', 'F4.c', 'Contact Last Name', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:contactParty/ns:contactPerson/ns:name/ns:family/text()', NULL, '0', 7, 14800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3b', 'Sender Identifier Title', 'sendertitle', 'F4.d', 'Contact Title', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:contactParty/ns:contactPerson/ns:name/ns:prefix/text()', NULL, '0', 7, 14900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4h', 'Sender''s country code (TEL)', 'sendertelcountrycode', 'F5.a', 'Phone #', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:contactParty/ns:contactPerson/ns:telecom[starts-with(@value, ''tel:'')]/@value', NULL, '0', 7, 15000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4f', 'Sender''s Telephone Number', 'sendertel', 'F5.b', 'Phone #', 
    NULL, NULL, '0', 7, 15100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4g', 'Sender''s extension (TEL)', 'sendertelextension', 'F5.c', 'Phone #', 
    NULL, NULL, '0', 7, 15200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F5.d', 'email address', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:author/ns:assignedEntity/ns:assignedOrganization/ns:contactParty/ns:contactPerson/ns:telecom[starts-with(@value, ''mailto:'')]/@value', NULL, '0', 7, 15300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.12', 'Date aware of event', 'awaredate_extension', 'F6', 'Date user facility or distributor became aware of event', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:effectiveTime/@value', NULL, '0', 7, 15400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.27', 'Type of report', 'reporttype_extension', 'F7.a', 'Type of report', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:code/@code', NULL, '0', 7, 15500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
INSERT INTO &TRANSFORMPV_USER..E2B_R2R3MAPPING
            (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM,
             R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID,
             SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY,
             MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF
            )
     VALUES ('B.1.2', 'Safety Report Version', 'safetyreportversion', NULL,
             NULL, NULL, NULL, '0', 7,
             15600, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1,
             SYSDATE, 1, 0, NULL
            );
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'Date of this report', NULL, 'F8', 'Date of this report', 
    NULL, NULL, '0', 7, 15700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.17', 'Approximate age of device', 'deviceage_extension', 'F9.a', 'Approximate age of device', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53451'']/../ns:value/@value', NULL, '0', 7, 15800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'Approximate age of device unit', 'deviceageunit_extension', 'F9.b', 'Approximate age of device unit', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53451'']/../ns:value/@unit', NULL, '0', 7, 15900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.15', 'Report sent to FDA', 'senttofda_extension', 'F11.a', 'Report sent to FDA?', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[1]/ns:secondaryCaseNotification/ns:receiver/@negationInd', '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[1]/ns:secondaryCaseNotification/ns:receiver/@nullFlavor', '0', 7, 16200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.16', 'Date report was sent to FDA', 'datesenttofda_extension', 'F11.b', 'Date report was sent to FDA', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[1]/ns:secondaryCaseNotification/ns:receiver/ns:time/@value', NULL, '0', 7, 16300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.23', 'Location where event occurred - Other', 'locother_extension', 'F12.a', 'Location where event occurred', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:location/ns:locatedEntity/ns:location/ns:code[@code=''C17649'']/@code', NULL, '0', 7, 16400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.23', 'Location where event occurred - Home', 'lochome_extension', 'F12.a', 'Location where event occurred - Home', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:location/ns:locatedEntity/ns:location/ns:code[@code=''C18002'']/@code', NULL, '0', 7, 16500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.23', 'Location where event occurred - Nursing Home', 'locnursinhome_extension', 'F12.a', 'Location where event occurred - Nursing Home', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:location/ns:locatedEntity/ns:location/ns:code[@code=''C53533'']/@code', NULL, '0', 7, 16600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.23', 'Location where event occurred - Opt', 'locopt_extension', 'F12.a', 'Location where event occurred - Opt', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:location/ns:locatedEntity/ns:location/ns:code[@code=''C53549'']/@code', NULL, '0', 7, 16700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.23', 'Location where event occurred - Opd', 'locopd_extension', 'F12.a', 'Location where event occurred - Opd', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:location/ns:locatedEntity/ns:location/ns:code[@code=''C53548'']/@code', NULL, '0', 7, 16800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.23', 'Location where event occurred - Ambulatory Surg', 'locambulatorysurg_extension', 'F12.a', 'Location where event occurred - Ambulatory Surg', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:location/ns:locatedEntity/ns:location/ns:code[@code=''C51945'']/@code', NULL, '0', 7, 16900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.23', 'Location where event occurred - Hospital', 'lochosp_extension', 'F12.a', 'Location where event occurred - Hospital', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:location/ns:locatedEntity/ns:location/ns:code[@code=''C16696'']/@code', NULL, '0', 7, 17000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.24', 'Location where event occurred - Desc', 'locotherdesc_extension', 'F12.b', 'Other', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:location/ns:locatedEntity/ns:location/ns:code/ns:originalText/text()', NULL, '0', 7, 17100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.25', 'Report Sent to MFR', 'senttomfr_extension', 'F13.a', 'Report sent to manufacturer?', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/@negationInd', '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/@nullFlavor', '0', 7, 17200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.26', 'Report Sent to MFR Date', 'senttomfrdate_extension', 'F13.b', 'Date report was sent to manufacturer?', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/ns:time/ns:low/@value', NULL, '0', 7, 17300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.17', 'Location where event occurred - Hospital', 'lochosp_extension', NULL, NULL, 
    NULL, NULL, '0', 7, 17400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F14', 'Manufacturer name/address', 
    NULL, NULL, '0', 7, 17500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.18', 'Location where event occurred - Home', 'lochome_extension', NULL, NULL, 
    NULL, NULL, '0', 7, 17600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.4.3', 'Manufacturer Name', 'drugauthorizationholder', 'F14.a', 'Manufacturer Name', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/ns:assignedEntity/ns:assignedOrganization/ns:name/text()', NULL, '0', 7, 17700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.19', 'Location where event occurred - Nursing Home', 'locnursinhome_extension', NULL, NULL, 
    NULL, NULL, '0', 7, 17800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F14.b', 'Manufacturer Address Street Line 1', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:streetAddressLine[1]/text()', NULL, '0', 7, 17900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F14.c', 'Manufacturer Address Street Line 2', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:streetAddressLine[2]/text()', NULL, '0', 7, 18000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F14.d', 'Manufacturer City', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:city/text()', NULL, '0', 7, 18100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F14.e', 'Manufacturer State Code', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:state/text()', NULL, '0', 7, 18200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F14.f', 'Manufacturer Country Code', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:country/text()', NULL, '0', 7, 18300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F14.g', 'Manufacturer Postal Code', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/ns:assignedEntity/ns:assignedOrganization/ns:addr/ns:postalCode/text()', NULL, '0', 7, 18400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F14.h', 'Manufacturer Email', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/ns:assignedEntity/ns:assignedOrganization/ns:telecom[starts-with(@value,''mailto:'')]/@value', NULL, '0', 7, 18500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F14.i', 'Manufacturer Fax Number', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1[2]/ns:secondaryCaseNotification/ns:receiver/ns:assignedEntity/ns:assignedOrganization/ns:telecom[starts-with(@value,''fax:'')]/@value', NULL, '0', 7, 18600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G', 'All manufacturers', 
    NULL, NULL, '0', 7, 18700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G1.a', 'Contact office - Name and Address', 
    NULL, NULL, '0', 7, 18800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.4.3', 'Manufacturer Name', 'drugauthorizationholder', 'G1.b', 'Site Name', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:addr/ns:additionalLocator/text()', NULL, '0', 7, 18900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.39', 'Manufacturer Address Street Line 1', 'mfgaddress_extension', 'G1.c', 'streetAddressLine', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[2]/ns:addr/ns:streetAddressLine[1]/text()', NULL, '0', 7, 19000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G1.d', 'streetAddressLine2', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[2]/ns:addr/ns:streetAddressLine[2]/text()', NULL, '0', 7, 19100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.40', 'Manufacturer City', 'mfgcity_extension', 'G1.e', 'city', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[2]/ns:addr/ns:city/text()', NULL, '0', 7, 19200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.41', 'Manufacturer State Code', 'mfgstate_extension', 'G1.f', 'state', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[2]/ns:addr/ns:state/text()', NULL, '0', 7, 19300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.42', 'Manufacturer Zip Code', 'mfgpostcode_extension', 'G1.h', 'postal code', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[2]/ns:addr/ns:postalCode/text()', NULL, '0', 7, 19400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.43', 'Manufacturer Country Code', 'mfgcountry_extension', 'G1.i', 'country', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[2]/ns:addr/ns:country/text()', NULL, '0', 7, 19500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G1.j', 'email address', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[2]/ns:telecom[starts-with(@value, ''mailto:'')]/@value', NULL, '0', 7, 19600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.44', 'Manufacturer Fax No', 'mfgfax_extension', 'G1.k', 'Fax number', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[2]/ns:telecom[starts-with(@value, ''fax:'')]/@value', NULL, '0', 7, 19700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3b', 'Sender Identifier Title', 'sendertitle', 'G1.l', 'Prefix', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:contactManufacturerContact/ns:name/ns:prefix/text()', NULL, '0', 7, 19800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3c', 'Sender Given Name', 'sendergivename', 'G1.m', 'Contact first name', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:contactManufacturerContact/ns:name/ns:given[1]/text()', NULL, '0', 7, 19900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3d', 'Sender Middle Name', 'sendermiddlename', 'G1.n', 'Contact middle name', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:contactManufacturerContact/ns:name/ns:given[2]/text()', NULL, '0', 7, 20000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3e', 'Sender Family Name', 'senderfamilyname', 'G1.o', 'Contact last name', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:contactManufacturerContact/ns:name/ns:family/text()', NULL, '0', 7, 20100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G1.p', 'Contact Site Name', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[2]/ns:addr/ns:additionalLocator/text()', NULL, '0', 7, 20200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4a', 'Contact Street Address Line', 'senderstreetaddress', 'G1.q', 'Contact streetAddressLine', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:addr/ns:streetAddressLine[1]/text()', NULL, '0', 7, 20300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G1.r', 'Contact streetAddressLine2', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:addr/ns:streetAddressLine[2]/text()', NULL, '0', 7, 20400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4b', 'Contact city', 'sendercity', 'G1.s', 'Contact city', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:addr/ns:city/text()', NULL, '0', 7, 20500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4c', 'Contact State', 'senderstate', 'G1.t', 'Contact state', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:addr/ns:state/text()', NULL, '0', 7, 20600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4d', 'Contact Postal Code', 'senderpostcode', 'G1.u', 'Contact postal code', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:addr/ns:postalCode/text()', NULL, '0', 7, 20700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4e', 'Contact country', 'sendercountrycode', 'G1.v', 'Contact country', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:addr/ns:country/text()', NULL, '0', 7, 20800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4l', 'Sender''s E-mail Address', 'senderemailaddress', 'G1.w', 'Contact email address', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:telecom[starts-with(@value, ''mailto:'')]/@value', NULL, '0', 7, 20900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4i', 'Sender''s Fax Number', 'senderfax', 'G1.x', 'Contact Fax number', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:telecom[starts-with(@value, ''fax:'')]/@value', NULL, '0', 7, 21000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4f', 'Sender''s Telephone Number', 'sendertel', 'G2', 'Contact Phone number', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:contactParty[1]/ns:telecom[starts-with(@value, ''tel:'')]/@value', NULL, '0', 7, 21100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('G3.1', 'Contact Report source- Foreign', 'rptsrcforeign_extension', 'G3.1', 'Contact Report source- Foreign', 
    '//ns:message/ns:controlActProcess/ns:reasonOf[ns:detectedIssueEvent/ns:code[@code=''C53566'']][1]/ns:detectedIssueEvent/ns:value/@code', NULL, '0', 7, 21200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.30', 'Contact Report source- Study', 'rptsrcstudy_extension', 'G3.2', 'Contact Report source- Study', 
    '//ns:message/ns:controlActProcess/ns:reasonOf[ns:detectedIssueEvent/ns:code[@code=''C53566'']][2]/ns:detectedIssueEvent/ns:value/@code', NULL, '0', 7, 21300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.31', 'Contact Report source- Literature', 'rptsrcliterature_extension', 'G3.3', 'Contact Report source- Literature', 
    '//ns:message/ns:controlActProcess/ns:reasonOf[ns:detectedIssueEvent/ns:code[@code=''C53566'']][3]/ns:detectedIssueEvent/ns:value/@code', NULL, '0', 7, 21400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.32', 'Contact Report source- Consumer', 'rptsrcconsumer_extension', 'G3.4', 'Contact Report source- Consumer', 
    '//ns:message/ns:controlActProcess/ns:reasonOf[ns:detectedIssueEvent/ns:code[@code=''C53566'']][4]/ns:detectedIssueEvent/ns:value/@code', NULL, '0', 7, 21500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.33', 'Contact Report source- HCP', 'rptsrchcp_extension', 'G3.5', 'Contact Report source- HCP', 
    '//ns:message/ns:controlActProcess/ns:reasonOf[ns:detectedIssueEvent/ns:code[@code=''C53566'']][5]/ns:detectedIssueEvent/ns:value/@code', NULL, '0', 7, 21600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.34', 'Contact Report source- User Facility', 'rptsrcuserfacility_extension', 'G3.6', 'Contact Report source- User Facility', 
    '//ns:message/ns:controlActProcess/ns:reasonOf[ns:detectedIssueEvent/ns:code[@code=''C53566'']][6]/ns:detectedIssueEvent/ns:value/@code', NULL, '0', 7, 21700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.35', 'Contact Report source- Company Representative', 'rptsrccomprep_extension', 'G3.7', 'Contact Report source- Company Representative', 
    '//ns:message/ns:controlActProcess/ns:reasonOf[ns:detectedIssueEvent/ns:code[@code=''C53566'']][7]/ns:detectedIssueEvent/ns:value/@code', NULL, '0', 7, 21800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.36', 'Contact Report source- Distributor', 'rptsrcdist_extension', 'G3.8', 'Contact Report source- Distributor', 
    '//ns:message/ns:controlActProcess/ns:reasonOf[ns:detectedIssueEvent/ns:code[@code=''C53566'']][8]/ns:detectedIssueEvent/ns:value/@code', NULL, '0', 7, 21900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.37', 'Contact Report source- Other', 'rptsrcoth_extension', 'G3.9', 'Contact Report source- Other', 
    '//ns:message/ns:controlActProcess/ns:reasonOf[ns:detectedIssueEvent/ns:code[@code=''C53566'']][9]/ns:detectedIssueEvent/ns:value/@code', NULL, '0', 7, 22000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.5.38', 'Contact Report Source - Other Text', 'rptsourcetext_extension', 'G3.10', 'Contact Report Source - Other Text', 
    '//ns:message/ns:controlActProcess/ns:reasonOf[ns:detectedIssueEvent/ns:code[@code=''C53566'']][9]/ns:detectedIssueEvent/ns:code/ns:originalText/text()', NULL, '0', 7, 22100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.7a', 'Date format of receipt of the most recent information', 'receiptdateformat', NULL, NULL, 
    NULL, NULL, '0', 7, 22200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.7b', 'Date of receipt of the most recent information', 'receiptdate', 'G4', 'Date received by manufacturer', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertinentInformation1/ns:secondaryCaseNotification/ns:receiver/ns:time/ns:high/@value', NULL, '0', 7, 22300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('G5', 'PMA PMN Numbers', 'pmano_extension', 'G5', 'PMA PMN Numbers', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:inventoryItem/ns:manufacturedDeviceModel/ns:asRegulatedProduct/ns:id/@extension', NULL, '0', 7, 22400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G6', 'If IND, protocol #', 
    NULL, NULL, '0', 7, 22500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('G7.a', 'Type of Report: Five Day?', 'five_day_extension', 'G7.a', 'Type of report', 
    '//ns:message/ns:controlActProcess/ns:reasonOf/ns:detectedIssueEvent/ns:code[@code=''C53571'']/../ns:value/@code', NULL, '0', 7, 22600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('G7.b', 'Follow up number', 'funum_extension', 'G7.b', 'Follow up number', 
    '//ns:message/ns:controlActProcess/ns:reasonOf/ns:detectedIssueEvent/ns:code[@code=''C53571'']/../ns:text/text()', NULL, '0', 7, 22700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G8', 'Adverse Event Terms', 
    NULL, NULL, '0', 7, 22800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.10.2', 'Other sender''s case report number', 'mfrreportnumber_extension', 'G9', 'MFR Report #', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:id/@extension', NULL, '0', 7, 22900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H', 'Device manufacturers only', 
    NULL, NULL, '0', 7, 23000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H1', 'Type of reportable event', 
    '//ns:message/ns:controlActProcess/ns:reasonOf/ns:detectedIssueEvent/ns:code[@code=''C53570'']/../ns:value/@code', '//ns:message/ns:controlActProcess/ns:reasonOf/ns:detectedIssueEvent/ns:code[@code=''C53570'']/../ns:value/@nullFlavor', '0', 7, 23100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness Death', 'seriousnessdeath', NULL, 'Value Combined in H1', 
    NULL, NULL, '0', 7, 23200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness Hospitalization', 'seriousnesshospitalization', NULL, 'Value Combined in H1', 
    NULL, NULL, '0', 7, 23300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness Life Threatening', 'seriousnesslifethreatening', NULL, 'Value Combined in H1', 
    NULL, NULL, '0', 7, 23400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B2.1.d', 'Malfunction', 'malfunction_extension', NULL, 'Value Combined in H1', 
    NULL, NULL, '0', 7, 23500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.18a', 'Response to FDA Request, Correction, Additional Information, Device Evaluation', 'followuptype_extension', 'H2', 'If Follow-up, What Type', 
    NULL, NULL, '0', 7, 23600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H2.a', 'Response to FDA Request', 
    '//ns:message/ns:controlActProcess/ns:reasonOf/ns:detectedIssueEvent/ns:code[@code=''C53584'']/../ns:value[@code=''C53587'']/@code', NULL, '0', 7, 23700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H2.b', 'Additional Information', 
    '//ns:message/ns:controlActProcess/ns:reasonOf/ns:detectedIssueEvent/ns:code[@code=''C53584'']/../ns:value[@code=''C53586'']/@code', NULL, '0', 7, 23800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H2.c', 'Device Evaluation', 
    '//ns:message/ns:controlActProcess/ns:reasonOf/ns:detectedIssueEvent/ns:code[@code=''C53584'']/../ns:value[@code=''C53588'']/@code', NULL, '0', 7, 23900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H2.d', 'Correction', 
    '//ns:message/ns:controlActProcess/ns:reasonOf/ns:detectedIssueEvent/ns:code[@code=''C53584'']/../ns:value[@code=''C53585'']/@code', NULL, '0', 7, 24000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H2.e', 'No Information', 
    '//ns:message/ns:controlActProcess/ns:reasonOf/ns:detectedIssueEvent/ns:code[@code=''C53584'']/../ns:value[@code=''NI'']/@code', NULL, '0', 7, 24100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.19.a', 'Device evaluated by mfr?', 'evaluatedbymfr_extension', 'H3.a', 'Device evaluated by mfr?', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53629'']/../ns:value/@value', '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53629'']/../ns:value/@nullFlavor', '0', 7, 24200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.19.b', 'Device evaluated by mfr? Summary Attached', 'evaluatedsummary_extension', 'H3.b', 'Device evaluated by mfr? Summary Attached', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53592'']/../ns:value/@value', NULL, '0', 7, 24300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.19.c', 'Device evaluated by mfr? Evaluation summary or reason for not evaluating', 'reasonfornoteval_extension', 'H3.c', 'Device evaluated by mfr? Evaluation summary or reason for not evaluating', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53593'']/../ns:value/@code', NULL, '0', 7, 24400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.19.d', 'Reason for Non-Evaluation', NULL, 'H3.d', 'Reason for Non-Evaluation', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53593'']/../ns:value/ns:originalText/text()', NULL, '0', 7, 24500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.20', 'Returned to Mfr?', 'returnedtomfr_extension', 'H3.e', 'Returned to Mfr?', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53591'']/../ns:value/@value', NULL, '0', 7, 24600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.21', 'Device manufacture date', 'mfgdate_extension', 'H4', 'Device manufacture date', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:existenceTime/@value', NULL, '0', 7, 24700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.21.1', 'Labeled for single use?', 'singleuse_extension', 'H5', 'Labeled for single use?', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53602'']/../ns:value/@value', NULL, '0', 7, 24800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.13', 'Device Problem Code', 'problemcode_extension', NULL, NULL, 
    NULL, NULL, '0', 7, 24810, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H6 part 1', 'Device Problem Code 1', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53982'']][1]/ns:deviceObservation/ns:value/@code', '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53982'']/../ns:value/@nullFlavor', '0', 7, 24820, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H6 part 1', 'Device Problem Code 2', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53982'']][2]/ns:deviceObservation/ns:value/@code', NULL, '0', 7, 24830, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H6 part 1', 'Device Problem Code 3', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53982'']][3]/ns:deviceObservation/ns:value/@code', NULL, '0', 7, 24840, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.14', 'Patient Problem Code', 'patientprblmcode_extension', NULL, NULL, 
    NULL, NULL, '0', 7, 24850, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H6 part 2', 'Patient Problem Code 1', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf[ns:observation/ns:code[@code=''C53983'']][1]/ns:observation/ns:value/@code', '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf/ns:observation/ns:code[@code=''C53983'']/../ns:value/@nullFlavor', '0', 7, 24860, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H6 part 2', 'Patient Problem Code 2', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf[ns:observation/ns:code[@code=''C53983'']][2]/ns:observation/ns:value/@code', NULL, '0', 7, 24870, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H6 part 2', 'Patient Problem Code 3', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:trigger/ns:reaction/ns:subject/ns:investigativeSubject/ns:subjectOf[ns:observation/ns:code[@code=''C53983'']][3]/ns:observation/ns:value/@code', NULL, '0', 7, 24880, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.22', 'Evaluation Code Method 1', 'evaluationmethod1_extension', 'H6 part 3', 'Evaluation Code Method 1', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component3[1]/ns:evaluationMethod/ns:code[@code=''C53984'']/../ns:value/@code', NULL, '0', 7, 24900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.23', 'Evaluation Code Method 2', 'evaluationmethod2_extension', 'H6 part 3', 'Evaluation Code Method 2', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component3[2]/ns:evaluationMethod/ns:code[@code=''C53984'']/../ns:value/@code', NULL, '0', 7, 25000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.24', 'Evaluation Code Method 3', 'evaluationmethod3_extension', 'H6 part 3', 'Evaluation Code Method 3', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component3[3]/ns:evaluationMethod/ns:code[@code=''C53984'']/../ns:value/@code', NULL, '0', 7, 25100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.25', 'Evaluation Code Method 4', 'evaluationmethod4_extension', 'H6 part 3', 'Evaluation Code Method 4', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component3[4]/ns:evaluationMethod/ns:code[@code=''C53984'']/../ns:value/@code', NULL, '0', 7, 25200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.30', 'Evaluation Code Result 1', 'evaluationresult1_extension', 'H6 part 4', 'Evaluation Code Result 1', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component1[1]/ns:evaluationResult/ns:code[@code=''C53985'']/../ns:value/@code', NULL, '0', 7, 25300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.31', 'Evaluation Code Result 2', 'evaluationresult2_extension', 'H6 part 4', 'Evaluation Code Result 2', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component1[2]/ns:evaluationResult/ns:code[@code=''C53985'']/../ns:value/@code', NULL, '0', 7, 25400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.32', 'Evaluation Code Result 3', 'evaluationresult3_extension', 'H6 part 4', 'Evaluation Code Result 3', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component1[3]/ns:evaluationResult/ns:code[@code=''C53985'']/../ns:value/@code', NULL, '0', 7, 25500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.33', 'Evaluation Code Result 4', 'evaluationresult4_extension', 'H6 part 4', 'Evaluation Code Result 4', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component1[4]/ns:evaluationResult/ns:code[@code=''C53985'']/../ns:value/@code', NULL, '0', 7, 25600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.26', 'Evaluation Code Conclusion 1', 'evaluationcode1_extension', 'H6 part 5', 'Evaluation Code Conclusion 1', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component2[1]/ns:evaluationConclusion/ns:code[@code=''C53986'']/../ns:value/@code', NULL, '0', 7, 25700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.27', 'Evaluation Code Conclusion 2', 'evaluationcode2_extension', 'H6 part 5', 'Evaluation Code Conclusion 2', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component2[2]/ns:evaluationConclusion/ns:code[@code=''C53986'']/../ns:value/@code', NULL, '0', 7, 25800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.28', 'Evaluation Code Conclusion 3', 'evaluationcode3_extension', 'H6 part 5', 'Evaluation Code Conclusion 3', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component2[3]/ns:evaluationConclusion/ns:code[@code=''C53986'']/../ns:value/@code', NULL, '0', 7, 25900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.29', 'Evaluation Code Conclusion 4', 'evaluationcode4_extension', 'H6 part 5', 'Evaluation Code Conclusion 4', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:identifiedDevice/ns:asManufacturedProduct/ns:manufacturerOrReprocessor/ns:asRole/ns:performance/ns:investigationEvent/ns:component2[4]/ns:evaluationConclusion/ns:code[@code=''C53986'']/../ns:value/@code', NULL, '0', 7, 26000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);		
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.34.1', 'Remedial Action-Other', 'other_extension', 'H7.a.1', 'Remedial Action-Other', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53603'']/../ns:value[@code=''C17649'']]/ns:deviceObservation/ns:value/@code', NULL, '0', 7, 26100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.35', 'Remedial Action-Other Text', 'evaluatinmethdothr_extension', 'H7.b', 'Remedial Action-Other Text', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53603'']/../ns:value[@code=''C17649'']]/ns:deviceObservation/ns:value/ns:originalText/text()', NULL, '0', 7, 26200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.34.2', 'Remedial Action-Inspection', 'inspection_extension', 'H7.a.2', 'Remedial Action-Inspection', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53603'']/../ns:value[@code=''C53604'']]/ns:deviceObservation/ns:value/@code', NULL, '0', 7, 26300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.34.3', 'Remedial Action-Modification', 'modification_extension', 'H7.a.3', 'Remedial Action-Modification', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53603'']/../ns:value[@code=''C53606'']]/ns:deviceObservation/ns:value/@code', NULL, '0', 7, 26400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.34.4', 'Remedial Action-Notification', 'notification_extension', 'H7.a.4', 'Remedial Action-Notification', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53603'']/../ns:value[@code=''C25297'']]/ns:deviceObservation/ns:value/@code', NULL, '0', 7, 26500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, 
    CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, 
    HEADER)
Values
   ('D.34.5', 'Remedial Action-Patient Monitoring', 'patientmonitoring_extension', 'H7.a.5', 'Remedial Action-Patient Monitoring', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53603'']/../ns:value[@code=''C53607'']]/ns:deviceObservation/ns:value/@code', '0', 7, 26600, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 
    1, SYSDATE, 1, SYSDATE, 0, 
    0);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.34.6', 'Remedial Action-Relabelling', 'relabeling_extension', 'H7.a.6', 'Remedial Action-Relabelling', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53603'']/../ns:value[@code=''C53608'']]/ns:deviceObservation/ns:value/@code', NULL, '0', 7, 26700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.34.7', 'Remedial Action-Recall', 'recall_extension', 'H7.a.7', 'Remedial Action-Recall', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53603'']/../ns:value[@code=''C53609'']]/ns:deviceObservation/ns:value/@code', NULL, '0', 7, 26800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.34.8', 'Remedial Action-Replace', 'replace_extension', 'H7.a.8', 'Remedial Action-Replace', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53603'']/../ns:value[@code=''C53610'']]/ns:deviceObservation/ns:value/@code', NULL, '0', 7, 26900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.34.9', 'Remedial Action-Repair', 'repair_extension', 'H7.a.9', 'Remedial Action-Repair', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf[ns:deviceObservation/ns:code[@code=''C53603'']/../ns:value[@code=''C53611'']]/ns:deviceObservation/ns:value/@code', NULL, '0', 7, 27000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.36', 'Device Usage', 'deviceusage_extension', 'H8', 'Device Usage', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53645'']/../ns:value/@code', '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo[1]/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53645'']/../ns:value/@nullFlavor', '0', 7, 27100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.37', '21 USC 360i(f), list correction/removal reporting number', 'usc_extension', 'H9', '21 USC 360i(f), list correction/removal reporting number', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:pertainsTo/ns:procedureEvent/ns:device/ns:identifiedDevice/ns:subjectOf/ns:deviceObservation/ns:code[@code=''C53619'']/../ns:value/text()', NULL, '0', 7, 27200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('D.38', 'Manufactured Narrative', 'mfgnarrative_extension', 'H10', 'Manufactured Narrative', 
    '//ns:message/ns:controlActProcess/ns:subject/ns:investigationEvent/ns:text/text()', NULL, '0', 7, 27300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1', 'ICH ICSR Message Header', 'ichicsrmessageheader', 'N.1', 'ICH ICSR Transmission Identification (batch wrapper)', 
    NULL, NULL, NULL, 24, 100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.1', 'Message Type', 'messagetype', 'N.1.1', 'Type of Messages in Batch', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:name[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.1'']/@code', NULL, NULL, 24, 200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.2', 'Message Format Version', 'messageformatversion', NULL, NULL, 
    NULL, NULL, NULL, 24, 300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.3', 'Message Format Release', 'messageformatrelease', NULL, NULL, 
    NULL, NULL, NULL, 24, 400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.4', 'Message Number', 'messagenumb', 'N.1.2', 'Batch Number', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.22'']/@extension', NULL, NULL, 24, 500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.5', 'Message Sender Identifier', 'messagesenderidentifier', 'N.1.3', 'Batch Sender Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:sender[@typeCode=''SND'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.13''][1]/@extension', NULL, NULL, 24, 600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.6', 'Message Receiver Identifier', 'messagereceiveridentifier', 'N.1.4', 'Batch Receiver Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:receiver[@typeCode=''RCV'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.14''][1]/@extension', NULL, NULL, 24, 700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.7a', 'Message Date (Format)', 'messagedateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('M.1.7b', 'Message Date', 'messagedate', 'N.1.5', 'Date of Batch Transmission', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:creationTime/@value', NULL, NULL, 24, 900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'N.2.r', 'ICH ICSR Message Header (message wrapper) (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV', NULL, NULL, 24, 1000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'N.2.r.1', 'Message Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.1''][1]/@extension', NULL, NULL, 24, 1100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'N.2.r.2', 'Message Sender Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:sender[@typeCode=''SND'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.11''][1]/@extension', NULL, NULL, 24, 1200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'N.2.r.3', 'Message Receiver Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:receiver[@typeCode=''RCV'']/ns:device[@classCode=''DEV''][@determinerCode=''INSTANCE'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.12''][1]/@extension', NULL, NULL, 24, 1300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'N.2.r.4', 'Date of Message Creation', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:creationTime/@value', NULL, NULL, 24, 1400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1', 'Identification of the case safety report', 'safetyreport', 'C.1', 'Identification of the Case Safety Report', 
    NULL, NULL, NULL, 24, 1500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   (NULL, 'Safety Report Version Number', 'safetyreportversion', NULL, NULL, 
    NULL, NULL, NULL, 24, 1600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.0.1', 'Sender''s (Case) Safety Report Unique Identifier', 'safetyreportid', 'C.1.1', 'Sender''s (case) Safety Report Unique Identifier', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.1''][1]/@extension', NULL, NULL, 24, 1700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.1', 'Identification of the country of the primary', 'primarysourcecountry', NULL, NULL, 
    NULL, NULL, NULL, 24, 1800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.2', 'Identification of the country where the reaction/event occurred', 'occurcountry', NULL, NULL, 
    NULL, NULL, NULL, 24, 1900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.3a', 'Date of this transmission (format)', 'transmissiondateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 2000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.3b', 'Date of this transmission', 'transmissiondate', 'C.1.2', 'Date of Creation', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:effectiveTime/@value', NULL, NULL, 24, 2100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.4', 'Type of report', 'reporttype', 'C.1.3', 'Type of Report', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:investigationCharacteristic/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.2'']/@code', NULL, NULL, 24, 2200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.1', 'Serious', 'serious', NULL, NULL, 
    NULL, NULL, NULL, 24, 2300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Results in death', 'seriousnessdeath', NULL, NULL, 
    NULL, NULL, NULL, 24, 2400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Life threatening', 'seriousnesslifethreatening', NULL, NULL, 
    NULL, NULL, NULL, 24, 2500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Caused/prolonged hospitalization', 'seriousnesshospitalization', NULL, NULL, 
    NULL, NULL, NULL, 24, 2600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Disabling/Incapacitating', 'seriousnessdisabling', NULL, NULL, 
    NULL, NULL, NULL, 24, 2700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Congenital anomaly/birth defect', 'seriousnesscongenitalanomali', NULL, NULL, 
    NULL, NULL, NULL, 24, 2800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness criteria-Other medically important condition', 'seriousnessother', NULL, NULL, 
    NULL, NULL, NULL, 24, 2900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.6a', 'Date report was first received from source (Format)', 'receivedateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 3000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.6b', 'Date report was first received from source', 'receivedate', 'C.1.4', 'Date Report Was First Received from Source', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:effectiveTime/ns:low/@value', NULL, NULL, 24, 3100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.7a', 'Date of receipt of the most recent information (format)', 'receiptdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 3200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.7b', 'Date of receipt of the most recent information', 'receiptdate', 'C.1.5', 'Date of Most Recent Information for This Report', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:availabilityTime/@value', NULL, NULL, 24, 3300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.8', 'Additional Available Documents Held by Sender (header)', NULL, 'C.1.6', 'Additional Available Documents Held by Sender', 
    NULL, NULL, NULL, 24, 3400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.8.1', 'Are additional documents available', 'additionaldocument', 'C.1.6.1', 'Are Additional Documents Available?', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observationEvent/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', NULL, NULL, 24, 3500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'documentlist', 'C.1.6.1.r', 'Documents Held by Sender (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:reference[@typeCode=''REFR''][ns:document/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.27'']]', NULL, NULL, 24, 3600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.8.2', 'List of documents held by sender', '.', 'C.1.6.1.r.1', 'Documents Held by Sender', 
    'ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:title/text()', NULL, NULL, 24, 3700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.1.6.1.r.2', 'Included Documents ', 
    'ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:text/ns:reference/@value', NULL, NULL, 24, 3800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.8.2x', 'Attachment File Name', 'attachmentname_extension', 'C.1.6.1.r.x', 'Attachment File Name', 
    'ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:text/ns:reference/@value', NULL, NULL, 24, 3900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.9', 'Does this case fulfill the local criteria for an expedited report?', 'fulfillexpeditecriteria', 'C.1.7', 'Does This Case Fulfil the Local Criteria for an Expedited Report?', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observationEvent/ns:code[@code=''23''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][observationEvent/ns:code[@code=''23''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@nullFlavor', NULL, 24, 4000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.10', 'Worldwide Unique Case Identification Number (header)', NULL, 'C.1.8', 'Worldwide Unique Case Identification', 
    NULL, NULL, NULL, 24, 4100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.10.1', 'Regulatory authority''s case report number', 'authoritynumb', 'C.1.8.1', 'Worldwide Unique Case Identification Number', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.2''][1]/@extension', NULL, NULL, 24, 4200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.10.2', 'Other sender''s case report number', 'companynumb', 'C.1.8.2', 'First Sender of This Case', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:outboundRelationship[@typeCode=''SPRT''][ns:relatedInvestigation/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.22'']][1]/ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.3'']/@code', NULL, NULL, 24, 4300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.1.9', 'Other Case Identifiers', 
    NULL, NULL, NULL, 24, 4400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.11', 'Other case identifiers in previous transmissions', 'duplicate', 'C.1.9.1', 'Other Case Identifiers in Previous Transmissions', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:investigationCharacteristic/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][investigationCharacteristic/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', NULL, 24, 4500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.1.11', 'Report Nullification / Amendment', 
    NULL, NULL, NULL, 24, 4600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.13', 'Report nullification', 'casenullification', 'C.1.11.1', 'Report Nullification / Amendment', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:investigationCharacteristic/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.5'']/@code', NULL, NULL, 24, 4700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.13.1', 'Reason for nullification', 'nullificationreason', 'C.1.11.2', 'Reason for Nullification / Amendment', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][ns:investigationCharacteristic/ns:code[@code=''4''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.23'']][1]/ns:investigationCharacteristic[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE'']/ns:originalText/text()', NULL, NULL, 24, 4800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.14', 'Was case medically confirmed, if not initially from health prof.?', 'medicallyconfirm', NULL, NULL, 
    NULL, NULL, NULL, 24, 4900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'reportduplicate', 'C.1.9.1.r', 'Source(s) of the Case Identifier (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:id]', NULL, NULL, 24, 5000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.11.1', 'Source(s) of the case identifier', 'duplicatesource', 'C.1.9.1.r.1', 'Source(s) of the Case Identifier', 
    'ns:controlActEvent/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.3''][1]/@assigningAuthorityName', NULL, NULL, 24, 5100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.11.2', 'Case identifiers', 'duplicatenumb', 'C.1.9.1.r.2', 'Case Identifier(s)', 
    'ns:controlActEvent/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.3''][1]/@extension', NULL, NULL, 24, 5200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.12', 'Identification number of the report which is linked to this report', 'linkedreport', 'C.1.10', 'Identification Number of the Report Which Is Linked to This Report (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:outboundRelationship[@typeCode=''SPRT''][ns:relatedInvestigation/ns:code/@nullFlavor=''NA'']', NULL, NULL, 24, 5300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.12.1', 'Identification number of the report which is linked to this report', 'linkreportnumb', 'C.1.10.r', 'Identification Number of the Report Which Is Linked to This Report (repeat as necessary)', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ''][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.2''][1]/@extension', NULL, NULL, 24, 5400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2', 'Primary source(s) of information', 'primarysource', 'C.2.r', 'Primary Source(s) of Information (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:outboundRelationship[@typeCode=''SPRT''][ns:relatedInvestigation/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.22'']]', NULL, NULL, 24, 5500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1', 'Primary Source(s) (header)', NULL, 'C.2.r.1', 'Reporter''s Name', 
    NULL, NULL, NULL, 24, 5600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1a', 'Reporter title', 'reportertitle', 'C.2.r.1.1', 'Reporter''s Title', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:prefix[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:prefix[1]/@nullFlavor', NULL, 24, 5700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1b', 'Reporter given name', 'reportergivename', 'C.2.r.1.2', 'Reporter''s Given Name', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[1]/@nullFlavor', NULL, 24, 5800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1c', 'Reporter middle name', 'reportermiddlename', 'C.2.r.1.3', 'Reporter''s Middle Name', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[2]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[2]/@nullFlavor', NULL, 24, 5900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.1d', 'Reporter family name', 'reporterfamilyname', 'C.2.r.1.4', 'Reporter''s Family Name', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:family[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:family[1]/@nullFlavor', NULL, 24, 6000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.2.r.2', 'Reporter''s Address and Telephone', 
    NULL, NULL, NULL, 24, 6100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2a', 'Reporter organization', 'reporterorganization', 'C.2.r.2.1', 'Reporter''s Organisation', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/@nullFlavor', NULL, 24, 6200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2b', 'Reporter department', 'reporterdepartment', 'C.2.r.2.2', 'Reporter''s Department', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/@nullFlavor', NULL, 24, 6300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2c', 'Reporter''s address-street', 'reporterstreet', 'C.2.r.2.3', 'Reporter''s Street', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:streetAddressLine[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:streetAddressLine[1]/@nullFlavor', NULL, 24, 6400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2d', 'Reporter''s city', 'reportercity', 'C.2.r.2.4', 'Reporter''s City', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:city[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:city[1]/@nullFlavor', NULL, 24, 6500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2e', 'Reporter''s state or province', 'reporterstate', 'C.2.r.2.5', 'Reporter''s State or Province', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:state[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:state[1]/@nullFlavor', NULL, 24, 6600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.2.r.2.5x', 'Reporter County', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:county[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:county[1]/@nullFlavor', '0', 24, 6700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   (NULL, NULL, NULL, 'C.2.r.2.x', 'Reporter''s Email', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value,''mailto:'')][1]/@value', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value,''mailto'')]/@nullFlavor', '0', 24, 6800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);


Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.2f', 'Reporter''s postcode', 'reporterpostcode', 'C.2.r.2.6', 'Reporter''s Postcode', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:postalCode[1]/text()', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:postalCode[1]/@nullFlavor', NULL, 24, 6900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('A.2.1.x3', 'Reporter''s Telephone', 'reporterphone_extension', 'C.2.r.2.7', 'Reporter''s Telephone', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value,''tel:'')][1]/@value', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value,''tel'')]/@nullFlavor', NULL, 24, 7000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);


Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.1.3', 'Reporter country code', 'reportercountry', 'C.2.r.3', 'Reporter''s Country Code', 
    'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asLocatedEntity[@classCode=''LOCE''][1]/ns:location[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@code', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asLocatedEntity[@classCode=''LOCE''][1]/ns:location[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@nullFlavor', NULL, 24, 7100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('A.2.1.4', 'Qualification', 'qualification', 'C.2.r.4', 'Qualification',     'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asQualifiedEntity[@classCode=''QUAL''][1]/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.6'']/@code|ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asQualifiedEntity[@classCode=''QUAL''][1]/ns:code[@codeSystem=''2.16.840.1.113883.3.26.1.1'']/@code', 'ns:relatedInvestigation[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf2[@typeCode=''SUBJ'']/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asQualifiedEntity[@classCode=''QUAL''][1]/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.6'']/@nullFlavor', NULL, 24, 7200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.2.r.5', 'Primary Source for Regulatory Purposes', 
    'ns:priorityNumber/@value', 'ns:priorityNumber/@value', NULL, 24, 7300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3', 'Information on Sender and Receiver of Case Safety Report (header)', NULL, 'C.3', 'Information on Sender of Case Safety Report', 
    NULL, NULL, NULL, 24, 7400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1', 'Sender', 'sender', NULL, NULL, 
    NULL, NULL, NULL, 24, 7500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.1', 'Sender type', 'sendertype', 'C.3.1', 'Sender Type', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']/@code', NULL, NULL, 24, 7600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.2', 'Sender Identifier organization', 'senderorganization', 'C.3.2', 'Sender''s Organisation', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/text()', NULL, NULL, 24, 7700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.3.3', 'Person Responsible for Sending the Report', 
    NULL, NULL, NULL, 24, 7800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3a', 'Sender Identifier department', 'senderdepartment', 'C.3.3.1', 'Sender''s Department', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/text()', NULL, NULL, 24, 7900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3b', 'Sender Identifier Title', 'sendertitle', 'C.3.3.2', 'Sender''s Title', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:prefix[1]/text()', NULL, NULL, 24, 8000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3c', 'Sender Given Name', 'sendergivename', 'C.3.3.3', 'Sender''s Given Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[1]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[1]/@nullFlavor', NULL, 24, 8100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3d', 'Sender Middle Name', 'sendermiddlename', 'C.3.3.4', 'Sender''s Middle Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[2]/text()', NULL, NULL, 24, 8200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.3e', 'Sender Family Name', 'senderfamilyname', 'C.3.3.5', 'Sender''s Family Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:family[1]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:family[1]/@nullFlavor', NULL, 24, 8300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.3.4', 'Sender''s Address, Fax, Telephone and E-mail Address', 
    NULL, NULL, NULL, 24, 8400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4a', 'Sender''s Address-street', 'senderstreetaddress', 'C.3.4.1', 'Sender''s Street Address', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:streetAddressLine[1]/text()', NULL, NULL, 24, 8500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4b', 'Sender''s City', 'sendercity', 'C.3.4.2', 'Sender''s City', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:city[1]/text()', NULL, NULL, 24, 8600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4c', 'Sender''s State', 'senderstate', 'C.3.4.3', 'Sender''s State or Province', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:state[1]/text()', NULL, NULL, 24, 8700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4d', 'Sender''s Post Code', 'senderpostcode', 'C.3.4.4', 'Sender''s Postcode', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:addr[1]/ns:postalCode[1]/text()', NULL, NULL, 24, 8800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4e', 'Sender''s country code', 'sendercountrycode', 'C.3.4.5', 'Sender''s Country Code', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asLocatedEntity[@classCode=''LOCE''][1]/ns:location[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@code', NULL, NULL, 24, 8900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4f', 'Sender''s Telephone Number', 'sendertel', 'C.3.4.6', 'Sender''s Telephone', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value, ''tel:'')][1]/@value', NULL, NULL, 24, 9000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4g', 'Sender''s extension (TEL)', 'sendertelextension', NULL, NULL, 
    NULL, NULL, NULL, 24, 9100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4h', 'Sender''s country code (TEL)', 'sendertelcountrycode', NULL, NULL, 
    NULL, NULL, NULL, 24, 9200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4i', 'Sender''s Fax Number', 'senderfax', 'C.3.4.7', 'Sender''s Fax', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value, ''fax:'')][1]/@value', NULL, NULL, 24, 9300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4j', 'Sender''s extension (FAX)', 'senderfaxextension', NULL, NULL, 
    NULL, NULL, NULL, 24, 9400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4k', 'Sender''s country code (FAX)', 'senderfaxcountrycode', NULL, NULL, 
    NULL, NULL, NULL, 24, 9500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.1.4l', 'Sender''s E-mail Address', 'senderemailaddress', 'C.3.4.8', 'Sender''s E-mail Address', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subjectOf1[@typeCode=''SUBJ''][ns:controlActEvent/ns:author/ns:assignedEntity/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.7'']][1]/ns:controlActEvent[@classCode=''CACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:telecom[starts-with(@value, ''mailto:'')][1]/@value', NULL, NULL, 24, 9600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2', 'Receiver', 'receiver', NULL, NULL, 
    NULL, NULL, NULL, 24, 9700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.1', 'Receiver type', 'receivertype', NULL, NULL, 
    NULL, NULL, NULL, 24, 9800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2a', 'Receiver identifier-Receiver organization', 'receiverorganization', NULL, NULL, 
    NULL, NULL, NULL, 24, 9900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2b', 'Receiver identifier-Receiver department', 'receiverdepartment', NULL, NULL, 
    NULL, NULL, NULL, 24, 10000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2c', 'Receiver identifier-Title', 'receivertitle', NULL, NULL, 
    NULL, NULL, NULL, 24, 10100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2d', 'Receiver identifier-Given name', 'receivergivename', NULL, NULL, 
    NULL, NULL, NULL, 24, 10200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2e', 'Receiver identifier-Middle name', 'receivermiddlename', NULL, NULL, 
    NULL, NULL, NULL, 24, 10300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.2f', 'Receiver identifier-Family name', 'receiverfamilyname', NULL, NULL, 
    NULL, NULL, NULL, 24, 10400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3a', 'Receiver''s Address-Street address', 'receiverstreetaddress', NULL, NULL, 
    NULL, NULL, NULL, 24, 10500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3b', 'Receiver''s Address-City', 'receivercity', NULL, NULL, 
    NULL, NULL, NULL, 24, 10600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3c', 'Receiver''s Address-State or Province', 'receiverstate', NULL, NULL, 
    NULL, NULL, NULL, 24, 10700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3d', 'Receiver''s Address-Postcode', 'receiverpostcode', NULL, NULL, 
    NULL, NULL, NULL, 24, 10800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3e', 'Receiver''s Address-Country Code', 'receivercountrycode', NULL, NULL, 
    NULL, NULL, NULL, 24, 10900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3f', 'Receiver''s Telephone Number-Telephone', 'receivertel', NULL, NULL, 
    NULL, NULL, NULL, 24, 11000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3g', 'Receiver''s Telephone Number', 'receivertelextension', NULL, NULL, 
    NULL, NULL, NULL, 24, 11100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3h', 'Receiver''s Telephone Number-Telephone country code', 'receivertelcountrycode', NULL, NULL, 
    NULL, NULL, NULL, 24, 11200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3i', 'Receiver''s Fax Number-Fax', 'receiverfax', NULL, NULL, 
    NULL, NULL, NULL, 24, 11300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3j', 'Receiver''s Fax Number-Fax extension', 'receiverfaxextension', NULL, NULL, 
    NULL, NULL, NULL, 24, 11400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3k', 'Receiver''s Fax Number-Fax country code', 'receiverfaxcountrycode', NULL, NULL, 
    NULL, NULL, NULL, 24, 11500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.3.2.3l', 'Receiver''s E-mail Address', 'receiveremailaddress', NULL, NULL, 
    NULL, NULL, NULL, 24, 11600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'primarysource[literaturereference]', 'C.4.r', 'Literature Reference(s) (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:reference[@typeCode=''REFR''][ns:document/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.27'']]', NULL, NULL, 24, 11700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.2', 'Literature reference(s)', 'literaturereference', 'C.4.r.1', 'Literature Reference(s)', 
    'ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:bibliographicDesignationText/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:reference[@typeCode=''REFR''][ns:document/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.27'']][r]/ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:bibliographicDesignationText/@nullFlavor', NULL, 24, 11800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.4.r.2', 'Included Documents', 
    'ns:document[@classCode=''DOC''][@moodCode=''EVN'']/ns:text/text()', NULL, NULL, 24, 11900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.3', 'Study Identification (header)', NULL, 'C.5', 'Study Identification', 
    NULL, NULL, NULL, 24, 12000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.5.1.r', 'Study Registration (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf1[@typeCode=''SBJ''][1]/ns:researchStudy[@classCode=''CLNTRL''][@moodCode=''EVN'']/ns:authorization[@typeCode=''AUTH'']', NULL, NULL, 24, 12100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.5.1.r.1', 'Study Registration Number', 
    'ns:studyRegistration[@classCode=''ACT''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.6'']/@extension', 'ns:studyRegistration[@classCode=''ACT''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.6'']/@nullFlavor', NULL, 24, 12200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'C.5.1.r.2', 'Study Registration Country', 
    'ns:studyRegistration[@classCode=''ACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:territorialAuthority[@classCode=''TERR'']/ns:governingPlace[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@code', 'ns:studyRegistration[@classCode=''ACT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:territorialAuthority[@classCode=''TERR'']/ns:governingPlace[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@nullFlavor', NULL, 24, 12300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.3.1', 'Study name', 'studyname', 'C.5.2', 'Study Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf1[@typeCode=''SBJ''][1]/ns:researchStudy[@classCode=''CLNTRL''][@moodCode=''EVN'']/ns:title/text()', NULL, NULL, 24, 12400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.3.2', 'Sponsor study number', 'sponsorstudynumb', 'C.5.3', 'Sponsor Study Number', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf1[@typeCode=''SBJ''][1]/ns:researchStudy[@classCode=''CLNTRL''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.5'']/@extension', NULL, NULL, 24, 12500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.2.3.3', 'Study type in which the reaction(s)/event(s) were observed', 'observestudytype', 'C.5.4', 'Study Type Where Reaction(s) / Event(s) Were Observed', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf1[@typeCode=''SBJ''][1]/ns:researchStudy[@classCode=''CLNTRL''][@moodCode=''EVN'']/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.8'']/@code', NULL, NULL, 24, 12600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1', 'Patient characteristics', 'patient', 'D', 'Patient Characteristics', 
    NULL, NULL, NULL, 24, 12700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1', 'Patient', 'patientinitial', 'D.1', 'Patient (name or initials)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:prefix/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:prefix/@nullFlavor', NULL, 24, 12800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.1.1', 'Patient Medical Record Number(s) and Source(s) of the Record Number (if allowable)', 
    NULL, NULL, NULL, 24, 12900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1.1a', 'Patient medical record number(s) and source(s) of the record number', 'patientgpmedicalrecordnumb', 'D.1.1.1', 'Patient Medical Record Number(s) and Source(s) of the Record Number (GP Medical Record Number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.7''][1]/@extension', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.7''][1]/@nullFlavor', NULL, 24, 13000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1.1b', 'Patient medical record number(s) and source(s) of the record number(Special)', 'patientspecialistrecordnumb', 'D.1.1.2', 'Patient Medical Record Number(s) and Source(s) of the Record Number (Specialist Record Number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.8''][1]/@extension', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.8''][1]/@nullFlavor', NULL, 24, 13100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1.1c', 'Patient medical record number(s) and source(s) of the record number(hospital)', 'patienthospitalrecordnumb', 'D.1.1.3', 'Patient Medical Record Number(s) and Source(s) of the Record Number (Hospital Record Number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.9''][1]/@extension', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.9''][1]/@nullFlavor', NULL, 24, 13200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.1.1d', 'Patient medical record number(s) and source(s) of the record number(investigation)', 'patientinvestigationnumb', 'D.1.1.4', 'Patient Medical Record Number(s) and Source(s) of the Record Number (Investigation Number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''4''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.10''][1]/@extension', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:asIdentifiedEntity[@classCode=''IDENT''][ns:code[@code=''4''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.4'']][1]/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.10''][1]/@nullFlavor', NULL, 24, 13300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2', 'Age Information (header)', NULL, 'D.2', 'Age Information', 
    NULL, NULL, NULL, 24, 13400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.1a', 'Date of birth-Date format', 'patientbirthdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 13500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.1b', 'Date of birth', 'patientbirthdate', 'D.2.1', 'Date of Birth', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:birthTime/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:birthTime/@nullFlavor', NULL, 24, 13600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.2.2', 'Age at Time of Onset of Reaction / Event', 
    NULL, NULL, NULL, 24, 13700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.2a', 'Age at time of onset of reaction/event', 'patientonsetage', 'D.2.2a', 'Age at Time of Onset of Reaction / Event (number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@value', NULL, NULL, 24, 13800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.2b', 'Age at time of onset of reaction/event (Unit)', 'patientonsetageunit', 'D.2.2b', 'Age at Time of Onset of Reaction / Event (unit)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@unit', NULL, NULL, 24, 13900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.2.1a', 'Gestation period when reaction/event was observed in the fetus', 'gestationperiod', 'D.2.2.1a', 'Gestation Period When Reaction / Event Was Observed in the Foetus (number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''16''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@value', NULL, NULL, 24, 14000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.2.1b', 'Gestation period when reaction/event was observed in the fetus unit', 'gestationperiodunit', 'D.2.2.1b', 'Gestation Period When Reaction / Event Was Observed in the Foetus (unit)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''16''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@unit', NULL, NULL, 24, 14100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.2.3', 'Patient age group', 'patientagegroup', 'D.2.3', 'Patient Age Group (as per reporter)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''4''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.9''][1]/@code', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''4''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.9''][1]/@nullFlavor', NULL, 24, 14200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.3', 'Weight (kg)', 'patientweight', 'D.3', 'Body Weight (kg)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''7''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][@unit=''kg''][1]/@value', NULL, NULL, 24, 14300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.4', 'Height (cm)', 'patientheight', 'D.4', 'Height (cm)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''17''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][@unit=''cm''][1]/@value', NULL, NULL, 24, 14400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.5', 'Sex', 'patientsex', 'D.5', 'Sex', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:administrativeGenderCode[@codeSystem=''1.0.5218'']/@code', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:administrativeGenderCode[@codeSystem=''1.0.5218'']/@nullFlavor', NULL, 24, 14500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.6a', 'Last menstrual period date-Date format', 'lastmenstrualdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 14600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.6b', 'Patient last menstrual period date', 'patientlastmenstrualdate', 'D.6', 'Last Menstrual Period Date', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''22''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''TS''][1]/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''22''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''TS''][1]/@nullFlavor', NULL, 24, 14700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.2', 'Text for relevant medical history and concurrent conditions', 'patientmedicalhistorytext', 'D.7.2', 'Text for Relevant Medical History and Concurrent Conditions (not including reaction / event)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@code=''18''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@code=''18''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/@nullFlavor', NULL, 24, 14800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.2', 'Results of tests and procedures for investigation of the patient:', 'resultstestsprocedures', NULL, NULL, 
    NULL, NULL, NULL, 24, 14900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x1', 'Patient First Name', 'patfirstname_extension', 'D.x1', 'Patient First Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[1]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[1]/@nullFlavor', NULL, 24, 15000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x2', 'Patient Middle Name', 'patmidname_extension', 'D.x2', 'Patient Middle Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[2]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[2]/@nullFlavor', NULL, 24, 15100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x3', 'Patient Last Name', 'patlastname_extension', 'D.x3', 'Patient Last Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:family/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:family/@nullFlavor', NULL, 24, 15200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x4', 'Patient Address Line', 'pataddress_extension', 'D.x4', 'Patient Address Line 1', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr/ns:streetAddressLine/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr/ns:streetAddressLine/@nullFlavor', NULL, 24, 15300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x5', 'Patient Address City', 'patcity_extension', 'D.x5', 'Patient Address City', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr/ns:city/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr/ns:city/@nullFlavor', NULL, 24, 15400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x6', 'Patient Address State', 'patstate_extension', 'D.x6a', 'Patient Address State', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr/ns:state/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr/ns:state/@nullFlavor', NULL, 24, 15500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.x6b', 'Patient Address County', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr[1]/ns:county[1]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr[1]/ns:county[1]/@nullFlavor', NULL, 24, 15600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x7', 'Patient Address Country', 'patcountry_extension', 'D.x7', 'Patient Address Country', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr/ns:country/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr/ns:country/@nullFlavor', NULL, 24, 15700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x8', 'Patient Address Postal Code', 'patpost_extension', 'D.x8', 'Patient Address Postal Code', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr/ns:postalCode/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:addr/ns:postalCode/@nullFlavor', NULL, 24, 15800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.1.x9', 'Patient Telephone', 'patphone_extension', 'D.x9', 'Patient Telephone', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:telecom[starts-with(@value,''tel:'')][1]/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:telecom[starts-with(@value,''tel'')]/@nullFlavor', NULL, 24, 15900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   (NULL, NULL, NULL, 'D.x10', 'Patient Email', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:telecom[starts-with(@value,''mailto:'')][1]/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:telecom[starts-with(@value,''mailto'')]/@nullFlavor', NULL, 24, 16000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x11', 'Age at time of Vaccination (number)', 'patage_extension', 'D.x11', 'Age at time of Vaccination (number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C103173''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@value', NULL, NULL, 24, 16100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x12', 'Age at time of Vaccination (unit)', 'patageunit_extension', 'D.x12', 'Age at time of Vaccination (unit)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C103173''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@unit', NULL, NULL, 24, 16200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x13', 'Patient Race Code (1)', 'patracecode_extension', 'D.x13', 'Patient Race Code (1)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C17049''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][1]/@code', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C17049''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][1]/@nullFlavor', NULL, 24, 16300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x14', 'Patient Ethnicity code', 'ethnicity_extension', 'D.x14', 'Patient Ethnicity code', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C16564''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][1]/@code', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C16564''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][1]/@nullFlavor', NULL, 24, 16400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.x15', 'Concomitant Therapies', 'concomitanttherapy_extension', 'D.7.3', 'Concomitant Therapies', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@code=''11''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', NULL, NULL, 24, 16500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7', 'Relevant medical history and concurrent conditions', 'medicalhistoryepisode', 'D.7', 'Relevant Medical History and Concurrent Conditions (not including reaction / event)', 
    NULL, NULL, NULL, 24, 16600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'medicalhistoryepisode[patientepisodename]', 'D.7.1.r', 'Structured Information on Relevant Medical History (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@codeSystem=''2.16.840.1.113883.6.163'']]', NULL, NULL, 24, 16700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1a.1', 'MedDRA version for Medical History', 'patientepisodenamemeddraversion', 'D.7.1.r.1a', 'MedDRA Version for Medical History', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@codeSystemVersion', NULL, NULL, 24, 16800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1a.2', 'Structured information(Patient episode name)', 'patientepisodename', 'D.7.1.r.1b', 'Medical History (disease / surgical procedure / etc.) (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@code', NULL, NULL, 24, 16900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1b', 'Patient medical start date (format)', 'patientmedicalstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 17000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1c', 'Patient Medical start date', 'patientmedicalstartdate', 'D.7.1.r.2', 'Start Date', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor', NULL, 24, 17100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1d', 'Patient Medical continuing', 'patientmedicalcontinue', 'D.7.1.r.3', 'Continuing', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''13''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''13''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 24, 17200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1e', 'Patient Medical end date (format)', 'patientmedicalenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 17300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1f', 'Patient Medical end date', 'patientmedicalenddate', 'D.7.1.r.4', 'End Date', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor', NULL, 24, 17400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1g', 'Patient Medical comments', 'patientmedicalcomment', 'D.7.1.r.5', 'Comments', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:observation/ns:code[@code=''10''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 24, 17500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.1x', 'Patient Medical Family History', 'familyhistory_extension', 'D.7.1.r.6', 'Family History', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''EXPL''][ns:observation/ns:code[@code=''38''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', NULL, NULL, 24, 17600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.x', 'Vaccination Illness', 'medicalhistoryepisode[conditiontype_extension]', 'D.7.1.x', 'Vaccination Illness', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C102468''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']]', NULL, NULL, 24, 17700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.x.1', 'Condition Type', 'conditiontype_extension', NULL, NULL, 
    NULL, NULL, NULL, 24, 17800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.x.2', 'MedDRA Version for Medical History', 'patientepisodenamemeddraversion', 'D.7.1.x.1', 'MedDRA Version for Medical History', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][1]/@codeSystemVersion', NULL, NULL, 24, 17900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.7.x.3', 'Medical History (disease / surgical procedure / etc.) (MedDRA code)', 'vaccinationillness_extension', 'D.7.1.x.2', 'Medical History (disease / surgical procedure / etc.) (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][1]/@code', NULL, NULL, 24, 18000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8', 'Relevant past drug history', 'patientpastdrugtherapy', 'D.8.r', 'Relevant Past Drug History (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:substanceAdministration]', NULL, NULL, 24, 18100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8a', 'Name of Drug as Reported', 'patientdrugname', 'D.8.r.1', 'Name of Drug as Reported', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:name[1]/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:name[1]/@nullFlavor', NULL, 24, 18200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.8.r.2a', 'MPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@codeSystemVersion', NULL, NULL, 24, 18300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.8.r.2b', 'Medicinal Product Identifier (MPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@code', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''2.16.840.1.113883.6.69'']/@nullFlavor', NULL, 24, 18400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, sysdate, 1, sysdate, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.8.r.3a', 'PhPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@codeSystemVersion', NULL, NULL, 24, 18500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.8.r.3b', 'Pharmaceutical Product Identifier (PhPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@code', NULL, NULL, 24, 18600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8b', 'Patient drug Start date (format)', 'patientdrugstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 18700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8c', 'Patient Drug Start date', 'patientdrugstartdate', 'D.8.r.4', 'Start Date', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor', NULL, 24, 18800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8d', 'Patient Drug end date (format)', 'patientdrugenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 18900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8e', 'Patient Drug end date', 'patientdrugenddate', 'D.8.r.5', 'End Date', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor', NULL, 24, 19000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8f.1', 'Patient MedDRA version for indication', 'patientindicationmeddraversion', 'D.8.r.6a', 'MedDRA Version for Indication', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 24, 19100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8f.2', 'Patient Drug indication', 'patientdrugindication', 'D.8.r.6b', 'Indication (MedDRA code)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 24, 19200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8g.1', 'Patient MedDRA version for reaction', 'patientdrgreactionmeddraversion', 'D.8.r.7a', 'MedDRA Version for Reaction', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''CAUS''][ns:observation/ns:code[@code=''29''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 24, 19300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.8g.2', 'Reaction', 'patientdrugreaction', 'D.8.r.7b', 'Reaction (MedDRA code)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''CAUS''][ns:observation/ns:code[@code=''29''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 24, 19400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9', 'In case of death:', 'patientdeath', 'D.9', 'In Case of Death', 
    NULL, NULL, NULL, 24, 19500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.1a', 'Date of death (format)', 'patientdeathdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 19600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.1b', 'Date of death', 'patientdeathdate', 'D.9.1', 'Date of Death', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:deceasedTime/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:deceasedTime/@nullFlavor', NULL, 24, 19700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.3', 'Was autopsy done?', 'patientautopsyyesno', 'D.9.3', 'Was Autopsy Done?', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''5''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''5''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 24, 19800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, 'Reported cause(s) of patient death', 'patientdeathcause', 'D.9.2.r', 'Reported Cause(s) of Death (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''32''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]', NULL, NULL, 24, 19900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.2.a', 'MedDRA version for reported cause(s) of death', 'patientdeathreportmeddraversion', 'D.9.2.r.1a', 'MedDRA Version for Reported Cause(s) of Death', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 24, 20000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.2.b', 'Reported cause(s) of death', 'patientdeathreport', 'D.9.2.r.1b', 'Reported Cause(s) of Death (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 24, 20100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.2.x', 'As Reported cause(s) of death', 'reportedcausedeath_extension', 'D.9.2.r.2', 'Reported Cause(s) of Death (free text)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/text()', NULL, NULL, 24, 20200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'patientautopsy', 'D.9.4.r', 'Autopsy-determined Cause(s) of Death (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''5''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''DRIV''][ns:observation/ns:code[@code=''8''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]', NULL, NULL, 24, 20300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.4a', 'MedDRA version for autopsy-determined cause(s) of death', 'patientdetermautopsmeddraversion', 'D.9.4.r.1a', 'MedDRA Version for Autopsy-determined Cause(s) of Death', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 24, 20400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.4b', 'Autopsy-determined cause(s) of death', 'patientdetermineautopsy', 'D.9.4.r.1b', 'Autopsy-determined Cause(s) of Death (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 24, 20500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.9.4x', 'Autopsy-As Reported cause(s) of death', 'autopsycauseofdeath_extension', 'D.9.4.r.2', 'Autopsy-determined Cause(s) of Death (free text)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/text()', NULL, NULL, 24, 20600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10', 'For a parent-child/fetus report, information concerning the parent', 'parent', 'D.10', 'For a Parent-child / Foetus Report, Information Concerning the Parent', 
    NULL, NULL, NULL, 24, 20700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.1', 'Parent identification', 'parentidentification', 'D.10.1', 'Parent Identification', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:prefix/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name[1]/ns:prefix/@nullFlavor', NULL, 24, 20800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.2', 'Parent Age Information (header)', NULL, 'D.10.2', 'Parent Age Information', 
    NULL, NULL, NULL, 24, 20900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.2.1a', 'Date of birth of parent (format)', 'parentbirthdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 21000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.2.1b', 'Date of birth of parent', 'parentbirthdate', 'D.10.2.1', 'Date of Birth of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:birthTime/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:birthTime/@nullFlavor', NULL, 24, 21100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.2.2a', 'Age of parent', 'parentage', 'D.10.2.2a', 'Age of Parent (number)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@value', NULL, NULL, 24, 21200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.2.2b', 'Age of parent (Unit)', 'parentageunit', 'D.10.2.2b', 'Age of Parent (unit)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@unit', NULL, NULL, 24, 21300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.3a', 'Last menstrual period date (format)', 'parentlastmenstrualdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 21400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.3b', 'Parent last menstrual period date', 'parentlastmenstrualdate', 'D.10.3', 'Last Menstrual Period Date of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''22''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''TS''][1]/@value', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''22''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''TS''][1]/@value', NULL, 24, 21500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.4', 'Weight (kg) of parent', 'parentweight', 'D.10.4', 'Body Weight (kg) of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''7''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][@unit=''kg''][1]/@value', NULL, NULL, 24, 21600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.5', 'Height (cm) of parent', 'parentheight', 'D.10.5', 'Height (cm) of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''17''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][@unit=''cm''][1]/@value', NULL, NULL, 24, 21700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.6', 'Sex of parent', 'parentsex', 'D.10.6', 'Sex of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:administrativeGenderCode[@codeSystem=''1.0.5218'']/@code', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0''][@xsi:schemaLocation=''urn:hl7-org:v3 MCCI_IN200100UV01.xsd'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:administrativeGenderCode[@codeSystem=''1.0.5218'']/@nullFlavor', NULL, 24, 21800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.2', 'Text for relevant medical history and concurrent conditions of parent', 'parentmedicalrelevanttext', 'D.10.7.2', 'Text for Relevant Medical History and Concurrent Conditions of Parent', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@code=''18''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 24, 21900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.x.0', 'Parent First Name', 'parfirstname_extension', 'D.10.x0', 'Parent First Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name[1]/ns:given[1]/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name[1]/ns:given[1]/@nullFlavor', NULL, 24, 22000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.x.1', 'Parent Last Name', 'parentlastname_extension', 'D.10.x1', 'Parent Last Name', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name[1]/ns:family/text()', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:associatedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name[1]/ns:family/@nullFlavor', NULL, 24, 22100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.x.2', 'Parent Race Code 1', 'parracecode_extension', 'D.10.x2', 'Parent Race Code 1', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C17049''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE'']/@code', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C17049''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE'']/@nullFlavor', NULL, 24, 22200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.x.3', 'Parent Ethnicity Code', 'parethnicitycode_extension', 'D.10.x3', 'Parent Ethnicity Code', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C16564''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE'']/@code', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C16564''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE'']/@nullFlavor', NULL, 24, 22300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.x.4', 'Parent Age at Vaccination Number', 'parentvacage_extension', 'D.10.2.x4.1', 'Parent Age at Vaccination Number', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C103173''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ'']/@value', NULL, NULL, 24, 22400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.x.5', 'Parent Age at Vaccination Unit', 'parentvacageunit_extension', 'D.10.2.x4.2', 'Parent Age at Vaccination Unit', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:observation/ns:code[@code=''C103173''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ'']/@unit', NULL, NULL, 24, 22500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7', 'Relevant medical history and concurrent conditions of parent', 'parentmedicalhistoryepisode', 'D.10.7', 'Relevant Medical History and Concurrent Conditions of Parent', 
    NULL, NULL, NULL, 24, 22600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'parentmedicalhistoryepisode', 'D.10.7.1.r', 'Structured Information of Parent (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@codeSystem=''2.16.840.1.113883.6.163'']]', NULL, NULL, 24, 22700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1a.1', 'MedDRA version for parent medical history', 'parentmdepisodemeddraversion', 'D.10.7.1.r.1a', 'MedDRA Version for Medical History', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@codeSystemVersion', NULL, NULL, 24, 22800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1a.2', 'Structured information(Parent episode name)', 'parentmedicalepisodename', 'D.10.7.1.r.1b', 'Medical History (disease / surgical procedure/ etc.) (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@code', NULL, NULL, 24, 22900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1b', 'Parent medical start date (format)', 'parentmedicalstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 23000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1c', 'Parent medical start date', 'parentmedicalstartdate', 'D.10.7.1.r.2', 'Start Date', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', NULL, NULL, 24, 23100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1d', 'Parent medical continuing', 'parentmedicalcontinue', 'D.10.7.1.r.3', 'Continuing', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''13''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', NULL, NULL, 24, 23200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1e', 'Parent medical end date (format)', 'parentmedicalenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 23300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1f', 'Parent medical end date', 'parentmedicalenddate', 'D.10.7.1.r.4', 'End Date', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor', NULL, 24, 23400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.7.1g', 'Parent medical comments', 'parentmedicalcomment', 'D.10.7.1.r.5', 'Comments', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:observation/ns:code[@code=''10''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 24, 23500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8', 'Relevant past drug history', 'parentpastdrugtherapy', 'D.10.8.r', 'Relevant Past Drug History of Parent (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:player1[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:role[@classCode=''PRS''][1]/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:substanceAdministration]', NULL, NULL, 24, 23600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8a', 'Name of drug as reported', 'parentdrugname', 'D.10.8.r.1', 'Name of Drug as Reported', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:name[1]/text()', NULL, NULL, 24, 23700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.10.8.r.2a', 'MPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@codeSystemVersion', NULL, NULL, 24, 23800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.10.8.r.2b', 'Medicinal Product Identifier (MPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@code', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''2.16.840.1.113883.6.69'']/@nullFlavor', NULL, 24, 23900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, sysdate, 1, sysdate, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.10.8.r.3a', 'PhPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@codeSystemVersion', NULL, NULL, 24, 24000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'D.10.8.r.3b', 'Pharmaceutical Product Identifier (PhPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@code', NULL, NULL, 24, 24100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8b', 'Start date (format)', 'parentdrugstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 24200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8c', 'Start date', 'parentdrugstartdate', 'D.10.8.r.4', 'Start Date', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor', NULL, 24, 24300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8d', 'End date (format)', 'parentdrugenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 24400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8e', 'End date', 'parentdrugenddate', 'D.10.8.r.5', 'End Date', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor', NULL, 24, 24500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8f.1', 'Parent MedDRA version for indication', 'parentdrgindicationmeddraversion', 'D.10.8.r.6a', 'MedDRA Version for Indication', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 24, 24600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8f.2', 'Parent drug indication', 'parentdrugindication', 'D.10.8.r.6b', 'Indication (MedDRA code)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 24, 24700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8g.1', 'Parent MedDRA version for reaction', 'parentdrgreactionmeddraversion', 'D.10.8.r.7a', 'MedDRA Version for Reaction', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''CAUS''][ns:observation/ns:code[@code=''29''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 24, 24800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.1.10.8g.2', 'Reactions (if any and known)', 'parentdrugreaction', 'D.10.8.r.7b', 'Reactions (MedDRA code)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''CAUS''][ns:observation/ns:code[@code=''29''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 24, 24900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2', 'Reaction(s)/Event(s)', 'reaction', 'E.i', 'Reaction(s) / Event(s) (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:observation[ns:id][ns:code[@code=''29''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]]', NULL, NULL, 24, 25000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E.i.1', 'Reaction / Event as Reported by the Primary Source', 
    NULL, NULL, NULL, 24, 25100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E.i.1.1b', 'Reaction / Event as Reported by the Primary Source Language', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/@language', NULL, NULL, 24, 25200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.0', 'Reaction/event as reported by primary source', 'primarysourcereaction', 'E.i.1.2', 'Reaction / Event as Reported by the Primary Source for Translation', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''30''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 24, 25300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.1.a', 'MedDRA version for reaction/event term LLT', 'reactionmeddraversionllt', 'E.i.2.1a', 'MedDRA Version for Reaction / Event', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion', NULL, NULL, 24, 25400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.1.b', 'Reaction/event in MedDRA terminology (LLT)', 'reactionmeddrallt', 'E.i.2.1b', 'Reaction / Event (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 24, 25500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.2.a', 'MedDRA version for reaction/event term PT', 'reactionmeddraversionpt', NULL, NULL, 
    NULL, NULL, NULL, 24, 25600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.2.b', 'Reaction/event MedDRA term (PT)', 'reactionmeddrapt', NULL, NULL, 
    NULL, NULL, NULL, 24, 25700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.3', 'Term highlighted by the reporter', 'termhighlighted', 'E.i.3.1', 'Term Highlighted by the Reporter', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''37''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.10''][1]/@code', NULL, NULL, 24, 25800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E.i.3.2', 'Seriousness Criteria at Event Level', 
    NULL, NULL, NULL, 24, 25900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x1', 'Results in Death', 'seriousnessdeath_extension', 'E.i.3.2a', 'Results in Death', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''34''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''34''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 24, 26000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x2', 'Life Threatening', 'seriousnessthreat_extension', 'E.i.3.2b', 'Life Threatening', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''21''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''21''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 24, 26100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x3', 'Caused / Prolonged Hospitalisation', 'seriousnesshosp_extension', 'E.i.3.2c', 'Caused / Prolonged Hospitalisation', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''33''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''33''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 24, 26200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x4', 'Disabling / Incapacitating', 'seriousnessdisable_extension', 'E.i.3.2d', 'Disabling / Incapacitating', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''35''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''35''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 24, 26300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x5', 'Congenital Anomaly / Birth Defect', 'seriousnessanomaly_extension', 'E.i.3.2e', 'Congenital Anomaly / Birth Defect', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''12''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''12''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 24, 26400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x6', 'Other Medically Important Condition', 'seriousnessother_extension', 'E.i.3.2f', 'Other Medically Important Condition', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''26''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''26''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@nullFlavor', NULL, 24, 26500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x7', 'VAERS Outcome', 'vaersoutcome_extension', NULL, 'Mapped to E.i.3.2x', 
    NULL, NULL, NULL, 24, 26600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E.i.3.2.x1', 'Emergency Room', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C53513''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C53513''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@nullFlavor', NULL, 24, 26700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E.i.3.2.x2', 'Physician Office', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C16988''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C16988''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@nullFlavor', NULL, 24, 26800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'E.i.3.2.x3', 'AE Outcome None of the Above', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C17649''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C17649''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@nullFlavor', NULL, 24, 26900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.4a', 'Date of start of reaction/event (format)', 'reactionstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 27000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.4b', 'Date of start of reaction/event', 'reactionstartdate', 'E.i.4', 'Date of Start of Reaction / Event', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@nullFlavor', NULL, 24, 27100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.5a', 'Date of end of reaction/event (format)', 'reactionenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 27200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.5b', 'Date of end of reaction/event', 'reactionenddate', 'E.i.5', 'Date of End of Reaction / Event', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:high/@nullFlavor', NULL, 24, 27300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.6a', 'Duration of reaction/event', 'reactionduration', 'E.i.6a', 'Duration of Reaction / Event (number)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@nullFlavor', NULL, 24, 27400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.6b', 'Duration of reaction/event (Unit)', 'reactiondurationunit', 'E.i.6b', 'Duration of Reaction / Event (unit)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@unit', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:width/@nullFlavor', NULL, 24, 27500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.7.1a', 'Time between suspect drug administration and start of reaction/event', 'reactionfirsttime', NULL, NULL, 
    NULL, NULL, NULL, 24, 27600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.7.1b', 'Time unit between suspect drug administration and start of reaction/event', 'reactionfirsttimeunit', NULL, NULL, 
    NULL, NULL, NULL, 24, 27700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.7.2a', 'Time between last dose and start of reaction/event', 'reactionlasttime', NULL, NULL, 
    NULL, NULL, NULL, 24, 27800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.7.2b', 'Time unit between last dose and start of reaction/event', 'reactionlasttimeunit', NULL, NULL, 
    NULL, NULL, NULL, 24, 27900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.8', 'Outcome of reaction/event at the time of last observation', 'reactionoutcome', 'E.i.7', 'Outcome of Reaction / Event at the Time of Last Observation', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''27''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.11''][1]/@code', NULL, NULL, 24, 28000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x8.1a', 'Hospitalization Required', 'hosprequired_extension', 'E.i.7.x1', 'Hospitalization Required', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C50414''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C50414''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@nullFlavor', NULL, 24, 28100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x8.1b', 'Number of days hospitalized', 'hospduration_extension', 'E.i.7.x2', 'Number of days hospitalized', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C50414''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT'']/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''INT'']/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C50414''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT'']/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''INT'']/@nullFlavor', NULL, 24, 28200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x8.1c', 'Resulted in Prolongation of Hospitalization', 'hosprolonged_extension', 'E.i.7.x3', 'Resulted in Prolongation of Hospitalization', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C102450''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', 'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C102450''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@nullFlavor', NULL, 24, 28300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x9.1a', 'Treatment Facility Hospital Name', 'hospfacilityname_extension', 'E.i.x4.1', 'Treatment Facility Hospital Name', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C50414''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT'']/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG'']/ns:name/text()', NULL, NULL, 24, 28400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x9.1b', 'Treatment Facility City', 'hospfacilitycity_extension', 'E.i.x4.2', 'Treatment Facility City', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C50414''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT'']/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG'']/ns:addr/ns:city/text()', NULL, NULL, 24, 28500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x9.1c', 'Treatment Facility State', 'hospfacilitystate_extension', 'E.i.x4.3', 'Treatment Facility State', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''C50414''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT'']/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG'']/ns:addr/ns:state/text()', NULL, NULL, 24, 28600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x10', 'Medical Confirmation by Healthcare Professional', 'confirmedbyhcp_extension', 'E.i.8', 'Medical Confirmation by Healthcare Professional', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''24''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', NULL, NULL, 24, 28700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.2.i.x11', 'Identification of the Country Where the Reaction / Event Occurred', 'eventcountry_extension', 'E.i.9', 'Identification of the Country Where the Reaction / Event Occurred', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:location[@typeCode=''LOC''][1]/ns:locatedEntity[@classCode=''LOCE'']/ns:locatedPlace[@classCode=''COUNTRY''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@code', NULL, NULL, 24, 28800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3', 'Results of tests and procedures for investigation of the patient:', 'test', 'F.r', 'Results of Tests and Procedures Relevant to the Investigation of the Patient (repeat as necessary)', '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP'']', NULL, NULL, 24, 28900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1a', 'Structured information (format)', 'testdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 29000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1b', 'Date', 'testdate', 'F.r.1', 'Test Date', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime/@value
', 'ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observation/ns:code[@codeSystem=''2.16.840.1.113883.6.163'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:effectiveTime/@nullFlavor', NULL, 24, 29100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.2', 'Test Name', 
    NULL, NULL, NULL, 24, 29200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1c', 'Test', 'testname', 'F.r.2.1', 'Test Name (free text)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/ns:originalText/text()', NULL, NULL, 24, 29300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.2.2a', 'MedDRA Version for Test Name', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@codeSystemVersion', NULL, NULL, 24, 29400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.2.2b', 'Test Name (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:code/@code', NULL, NULL, 24, 29500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.3', 'Test Result', 
    NULL, NULL, NULL, 24, 29600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.3.1', 'Test Result (code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:interpretationCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.12''][1]/@code', NULL, NULL, 24, 29700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.3.2', 'Test Result (value / qualifier)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][1]/ns:center/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:high/@nullFlavor=''PINF''][1]/ns:low[@inclusive=''false'']/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:high/@nullFlavor=''PINF''][1]/ns:low[@inclusive=''true'']/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:low/@nullFlavor=''NINF''][1]/ns:high[@inclusive=''false'']/@value|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:low/@nullFlavor=''NINF''][1]/ns:high[@inclusive=''true'']/@value', NULL, NULL, 24, 29800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1d', 'Result', 'testresult', 'F.r.3.4', 'Result Unstructured Data (free text)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 24, 29900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1e', 'Unit', 'testunit', 'F.r.3.3', 'Test Result (unit)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][1]/ns:center/@unit|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:high/@nullFlavor=''PINF''][1]/ns:low[@inclusive=''false'']/@unit|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:high/@nullFlavor=''PINF''][1]/ns:low[@inclusive=''true'']/@unit|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:low/@nullFlavor=''NINF''][1]/ns:high[@inclusive=''false'']/@unit|ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''IVL_PQ''][ns:low/@nullFlavor=''NINF''][1]/ns:high[@inclusive=''true'']/@unit', NULL, NULL, 24, 30000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1.1', 'Normal low range', 'lowtestrange', 'F.r.4', 'Normal Low Value', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:referenceRange[@typeCode=''REFV''][ns:observationRange/ns:interpretationCode[@code=''L''][@codeSystem=''2.16.840.1.113883.5.83'']][1]/ns:observationRange[@classCode=''OBS''][@moodCode=''EVN.CRT'']/ns:value[@xsi:type=''PQ'']/@value', NULL, NULL, 24, 30100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1.2', 'Normal high range', 'hightestrange', 'F.r.5', 'Normal High Value', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:referenceRange[@typeCode=''REFV''][ns:observationRange/ns:interpretationCode[@code=''H''][@codeSystem=''2.16.840.1.113883.5.83'']][1]/ns:observationRange[@classCode=''OBS''][@moodCode=''EVN.CRT'']/ns:value[@xsi:type=''PQ'']/@value', NULL, NULL, 24, 30200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'F.r.6', 'Comments (free text)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''10''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED''][1]/text()', NULL, NULL, 24, 30300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.3.1.3', 'More information available (Y/N)', 'moreinformation', 'F.r.7', 'More Information Available', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''REFR''][ns:observation/ns:code[@code=''25''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', NULL, NULL, 24, 30400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4', 'Drug(s) Information', 'drug', 'G.k', 'Drug(s) Information (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''4''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.20'']][1]/ns:organizer/ns:component[@typeCode=''COMP''][ns:substanceAdministration/ns:id]', NULL, NULL, 1, 26900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.1', 'Characterization of drug role', 'drugcharacterization', 'G.k.1', 'Characterisation of Drug Role', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:causalityAssessment/ns:code[@code=''20''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN''][ns:subject2[@typeCode=''SUBJ'']/ns:productUseReference[@classCode=''SBADM''][@moodCode=''EVN'']/ns:id[@root=''UUID of k-th drug'']]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.13'']/@code', NULL, NULL, 24, 30600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2', 'Drug Identification', 
    NULL, NULL, NULL, 24, 30700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.1', 'Medical Product Unique Identifier / Pharmaceutical Product Identifier', 
    NULL, NULL, NULL, 24, 30800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.1.1a', 'MPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@codeSystemVersion', NULL, NULL, 24, 30900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.1.1b', 'Medicinal Product Identifier (MPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-MPID'']/@code', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''2.16.840.1.113883.6.69'']/@nullFlavor', NULL, 24, 31000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, sysdate, 1, sysdate, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.1.2a', 'PhPID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@codeSystemVersion', NULL, NULL, 24, 31100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.1.2b', 'Pharmaceutical Product Identifier (PhPID)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-PhPID'']/@code', NULL, NULL, 24, 31200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2.1', 'Proprietary medicinal product name', 'medicinalproduct', 'G.k.2.2', 'Medicinal Product Name as Reported by the Primary Source', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:name[1]/text()', NULL, NULL, 24, 31300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2.3', 'Identification of the country where the drug was obtained', 'obtaindrugcountry', 'G.k.2.4', 'Identification of the Country Where the Drug Was Obtained', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:subjectOf[@typeCode=''SBJ''][1]/ns:productEvent[@classCode=''ACT''][@moodCode=''EVN''][ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.18'']]/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:country[1]/text()', NULL, NULL, 24, 31400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);	
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.x.29', 'Investigational Product Blinded', 'blindingstatus_extension', 'G.k.2.5', 'Investigational Product Blinded', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''6''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL''][1]/@value', NULL, NULL, 24, 31500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.3', 'Holder and Authorisation / Application Number of Drug', 
    NULL, NULL, NULL, 24, 31600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.4.1', 'Authorization/Application Number', 'drugauthorizationnumb', 'G.k.3.1', 'Authorisation / Application Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:asManufacturedProduct[@classCode=''MANU'']/ns:subjectOf[@typeCode=''SBJ''][1]/ns:approval[@classCode=''CNTRCT''][@moodCode=''EVN'']/ns:id[@root=''2.16.840.1.113883.3.989.2.1.3.4'']/@extension', NULL, NULL, 24, 31700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.4.2', 'Country of authorization/application', 'drugauthorizationcountry', 'G.k.3.2', 'Country of Authorisation / Application', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:asManufacturedProduct[@classCode=''MANU'']/ns:subjectOf[@typeCode=''SBJ''][1]/ns:approval[@classCode=''CNTRCT''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:territorialAuthority[@classCode=''TERR'']/ns:territory[@classCode=''NAT''][@determinerCode=''INSTANCE'']/ns:code[@codeSystem=''1.0.3166.1.2.2'']/@code', NULL, NULL, 24, 31800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.4.3', 'Name of holder/applicant', 'drugauthorizationholder', 'G.k.3.3', 'Name of Holder / Applicant', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:asManufacturedProduct[@classCode=''MANU'']/ns:subjectOf[@typeCode=''SBJ''][1]/ns:approval[@classCode=''CNTRCT''][@moodCode=''EVN'']/ns:holder[@typeCode=''HLD''][1]/ns:role[@classCode=''HLD'']/ns:playingOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:asManufacturedProduct[@classCode=''MANU'']/ns:subjectOf[@typeCode=''SBJ''][1]/ns:approval[@classCode=''CNTRCT''][@moodCode=''EVN'']/ns:holder[@typeCode=''HLD''][1]/ns:role[@classCode=''HLD'']/ns:playingOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/@nullFlavor', NULL, 24, 31900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5', 'Structured Dosage Information (header)', NULL, 'G.k.4.r', 'Dosage and Relevant Information (repeat as necessary)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration]', NULL, NULL, 24, 32000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.1', 'dose (number)', 'drugstructuredosagenumb', 'G.k.4.r.1a', 'Dose (number)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:doseQuantity/@value', NULL, NULL, 24, 32100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.2', 'dose (unit)', 'drugstructuredosageunit', 'G.k.4.r.1b', 'Dose (unit)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:doseQuantity/@unit', NULL, NULL, 24, 32200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.3', 'number of separate dosages', 'drugseparatedosagenumb', NULL, NULL, 
    NULL, NULL, NULL, 24, 32300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.4', 'number of units in the interval', 'drugintervaldosageunitnumb', 'G.k.4.r.2', 'Number of Units in the Interval', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS'']/ns:period/@value', NULL, NULL, 24, 32400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.5', 'definition of the interval', 'drugintervaldosagedefinition', 'G.k.4.r.3', 'Definition of the Time Interval Unit', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''PIVL_TS'']/ns:period/@unit', NULL, NULL, 24, 32500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.12a', 'Date of start of drug (format)', 'drugstartdateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 32600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.12b', 'Date of start of drug', 'drugstartdate', 'G.k.4.r.4', 'Date and Time of Start of Drug', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:low/@value', NULL, NULL, 24, 32700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.14a', 'Date of last administration (format)', 'drugenddateformat', NULL, NULL, 
    NULL, NULL, NULL, 24, 32800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.14b', 'Date of last administration', 'drugenddate', 'G.k.4.r.5', 'Date and Time of Last Administration', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:high/@value', NULL, NULL, 24, 32900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.15a', 'Duration of drug administration', 'drugtreatmentduration', 'G.k.4.r.6a', 'Duration of Drug Administration (number)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@value', NULL, NULL, 24, 33000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.15b', 'Duration of drug administration unit', 'drugtreatmentdurationunit', 'G.k.4.r.6b', 'Duration of Drug Administration (unit)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''SXPR_TS'']/ns:comp[@xsi:type=''IVL_TS'']/ns:width/@unit', NULL, NULL, 24, 33100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.3', 'Batch/lot number', 'drugbatchnumb', 'G.k.4.r.7', 'Batch / Lot Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:productInstanceInstance[@classCode=''MMAT''][@determinerCode=''INSTANCE'']/ns:lotNumberText/text()', NULL, NULL, 24, 33200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.6', 'Dosage text', 'drugdosagetext', 'G.k.4.r.8', 'Dosage Text', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:text/text()', NULL, NULL, 24, 33300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.9', 'Pharmaceutical Dose Form', 
    NULL, NULL, NULL, 24, 33400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.7', 'Pharmaceutical form (Dosage form)', 'drugdosageform', 'G.k.4.r.9.1', 'Pharmaceutical Dose Form (free text)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode/ns:originalText/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode/ns:originalText/@nullFlavor', NULL, 24, 33500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.9.2a', 'Pharmaceutical Dose Form TermID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode[@codeSystem=''TBD-DoseForm'']/@codeSystemVersion', NULL, NULL, 24, 33600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.9.2b', 'Pharmaceutical Dose Form TermID', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:formCode[@codeSystem=''TBD-DoseForm'']/@code', NULL, NULL, 24, 33700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.10', 'Route of Administration', 
    NULL, NULL, NULL, 24, 33800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.8', 'Route of administration', 'drugadministrationroute', 'G.k.4.r.10.1', 'Route of Administration (free text)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/ns:originalText/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/ns:originalText/@nullFlavor', NULL, 24, 33900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.10.2a', 'Route of Administration TermID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/@codeSystemVersion', NULL, NULL, 24, 34000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.10.2b', 'Route of Administration TermID', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14'']/@code', NULL, NULL, 24, 34100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.11', 'Parent Route of Administration (in case of a parent child / foetus report)', 
    NULL, NULL, NULL, 24, 34200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.9', 'Parent route of administration (in case of a parent child/fetus report)', 'drugparadministration', 'G.k.4.r.11.1', 'Parent Route of Administration (free text)', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/ns:originalText/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/ns:originalText/text()', NULL, 24, 34300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.4.r.11.2a', 'Parent Route of Administration TermID Version Date / Number', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/@codeSystemVersion', NULL, NULL, 24, 34400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   (NULL, NULL, NULL, 'G.k.4.r.11.2b', 'Parent Route of Administration TermID', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''28''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.14''][1]/@code', NULL, NULL, 24, 34500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.6', 'Cumulative Dose to First Reaction (number)', 'drugcumulativedosagenumb', 'G.k.5a', 'Cumulative Dose to First Reaction (number)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''SUMM''][ns:observation/ns:code[@code=''14''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@value', NULL, NULL, 24, 34600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.5.7', 'cumulative dose to first reaction (unit)', 'drugcumulativedosageunit', 'G.k.5b', 'Cumulative Dose to First Reaction (unit)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''SUMM''][ns:observation/ns:code[@code=''14''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@unit', NULL, NULL, 24, 34700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.10a', 'Gestation period at time of exposure', 'reactiongestationperiod', 'G.k.6a', 'Gestation Period at Time of Exposure (number)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''16''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@value', NULL, NULL, 24, 34800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.10b', 'Gestation period at time of exposure (Unit)', 'reactiongestationperiodunit', 'G.k.6b', 'Gestation Period at Time of Exposure (unit)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''16''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''PQ''][1]/@unit', NULL, NULL, 24, 34900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
            (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM,
             R3_ELEMENT,
             R3_XPATH,
             R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM,
             CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED,
             HEADER, E2B_ELEMENT_NUM_REF
            )
     VALUES (NULL, NULL, 'drugindication', 'G.k.7.r',
             'Indication for Use in Case (repeat as necessary)','ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]',
             NULL, NULL, 24, 35000, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL,
             1, SYSDATE, 1, SYSDATE, 0,
             2, NULL
            );
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
            (R2_ELEMENT_NUM, R2_ELEMENT,
             R2_XPATH, R3_ELEMENT_NUM,
             R3_ELEMENT,
             R3_XPATH,
             R3_NULL_XPATH,
             REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY,
             CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER,
             E2B_ELEMENT_NUM_REF
            )
     VALUES ('B.4.k.11.x', 'Indication as Reported',
             '../indicationreported_extension', 'G.k.7.r.1',
             'Indication as Reported by the Primary Source','ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']][1]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/text()',
             'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''RSON''][ns:observation/ns:code[@code=''19''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']][1]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/ns:originalText/@nullFlavor',
             NULL, 24, 35100, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1,
             SYSDATE, 1, SYSDATE, 0, 0,
             NULL
            );
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
            (R2_ELEMENT_NUM, R2_ELEMENT,
             R2_XPATH, R3_ELEMENT_NUM,
             R3_ELEMENT,
             R3_XPATH,
             R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM,
             CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED,
             HEADER, E2B_ELEMENT_NUM_REF
            )
     VALUES ('B.4.k.11a', 'MedDRA version for indication',
             '../drugindicationmeddraversion', 'G.k.7.r.2a',
             'MedDRA Version for Indication','ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']][1]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@codeSystemVersion',
             NULL, NULL, 24, 35200, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL,
             1, SYSDATE, 1, SYSDATE, 0,
             0, NULL
            );
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
            (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH,
             R3_ELEMENT_NUM, R3_ELEMENT,
             R3_XPATH,
             R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM,
             CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED,
             HEADER, E2B_ELEMENT_NUM_REF
            )
     VALUES ('B.4.k.11b', 'Indication for use in the case', '.',
             'G.k.7.r.2b', 'Indication (MedDRA code)','ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code',
             NULL, NULL, 24, 35300, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL,
             1, SYSDATE, 1, SYSDATE, 0,
             0, NULL
            );
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.11b.1', 'Indication for use in the case', '.', 'G.k.7.r.2b.1', 'Indication (MedDRA code)', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163''][1]/@code', NULL, NULL, 24, 35400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    1, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, 
    CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER)
Values
   ('B.4.k.13.1a', 'Time between drug administration and start of reaction/event', 'drugstartperiod', 'G.k.9.i.3.1a', 'Time Interval between Beginning of Drug Administration and Start of Reaction / Event (number)',    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''SAS''][ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''f7841423-d331-4736-b2ee-d17176f049f9'']]/ns:pauseQuantity/@value', 24, 35500, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, 
    SYSDATE, 1, SYSDATE, 0, 0);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, 
    CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER)
Values
   ('B.4.k.13.1b', 'Time between drug administration and start of reaction/event (unit)', 'drugstartperiodunit', 'G.k.9.i.3.1b', 'Time Interval between Beginning of Drug Administration and Start of Reaction / Event (unit)',    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''SAS''][ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''f7841423-d331-4736-b2ee-d17176f049f9'']]/ns:pauseQuantity/@unit', 24, 35600, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, 
    SYSDATE, 1, SYSDATE, 0, 0);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, 
    CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER)
Values
   ('B.4.k.13.2a', 'Time between last dose of drug and start of reaction/event', 'druglastperiod', 'G.k.9.i.3.2a', 'Time Interval between Last Dose of Drug and Start of Reaction / Event (number)',    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''SAE''][ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''f7841423-d331-4736-b2ee-d17176f049f9'']]/ns:pauseQuantity/@value', 24, 35700, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, 
    SYSDATE, 1, SYSDATE, 0, 0);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, 
    CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER)
Values
   ('B.4.k.13.2b', 'Time between last dose of drug and start of reaction/event (unit)', 'druglastperiodunit', 'G.k.9.i.3.2b', 'Time Interval between Last Dose of Drug and Start of Reaction / Event (unit)',     'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''SAE''][ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''f7841423-d331-4736-b2ee-d17176f049f9'']]/ns:pauseQuantity/@unit', 24, 35800, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, 
    SYSDATE, 1, SYSDATE, 0, 0);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.17.1', 'Did Reaction Recur on Readministration?', 'drugrecurreadministration', NULL, 'See section G.k.9.i.4', 
    NULL, NULL, NULL, 24, 35850, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.17.2', 'Drug Recurrance', 'drugrecurrence', 'G.k.9.i.4', 'Did Reaction Recur on Re-administration?', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''PERT''][ns:observation/ns:code[@code=''31''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']]/ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:outboundRelationship1[@typeCode=''REFR'']/ns:actReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''UUID of i-th reaction'']]/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.16''][1]/@nullFlavor', NULL, 24, 35900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.17.2a', 'MedDRA version for reaction(s)/event(s) recurred', 'drugrecuractionmeddraversion', 'G.k.9.i.4.1', 'Reaction Recur Action', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.16'']/@code', NULL, NULL, 24, 35925, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.17.2b', 'If yes, which reaction(s)/event(s) recurred?', 'drugrecuraction', 'G.k.9.i.4.2', 'Reaction Id', 
    'ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:outboundRelationship1[@typeCode=''REFR'']/ns:actReference[@classCode=''ACT''][@moodCode=''EVN'']/ns:id/@root|//ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:id[@root=''reactionid'']]/ns:value[@xsi:type=''CE'']/@code', NULL, NULL, 24, 35950, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.16', 'Action(s) taken with drug', 'actiondrug', 'G.k.8', 'Action(s) Taken with Drug', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''CAUS''][ns:act/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.15'']][1]/ns:act[@classCode=''ACT''][@moodCode=''EVN'']/ns:code[@codeSystem=''2.16.840.1.113883.3.989.2.1.1.15'']/@code', NULL, NULL, 24, 36000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.19', 'Additional information on drug', 'drugadditional', 'G.k.11', 'Additional Information on Drug (free text)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''REFR''][ns:observation/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ST''][1]/text()', NULL, NULL, 24, 36100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.1', 'US Generic Name', 'vaccgenericname_extension', 'G.k.2.x', 'US Generic Name', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:asEntityWithGeneric[@classCode=''GRIC'']/ns:genericMedicine/ns:name/text()', NULL, NULL, 24, 36200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.2', 'Vaccine Anatomical Approach Site', 'anatomicallocation_extension', 'G.k.4.r.11.x1', 'Vaccine Anatomical Approach Site', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:approachSiteCode[@codeSystem=''2.16.840.1.113883.3.26.1.1'']/@code', NULL, NULL, 24, 36300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.3', 'Dose Number in Series', 'dosenoseries_extension', 'G.k.4.r.11.x2', 'Dose Number in Series', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''FLFS'']/ns:sequenceNumber/@value', NULL, NULL, 24, 36400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.4', 'Best doctor/healthcare professional Title or Prefix', 'bestdoctitle_extension', 'G.k.4.r.11.x3.1', 'Best doctor/healthcare professional Title or Prefix', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:prefix/text()', NULL, NULL, 24, 36500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.5', 'Best doctor/healthcare professional Last Name', 'bestdoclastname_extension', 'G.k.4.r.11.x3.2', 'Best doctor/healthcare professional Last Name', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:family/text()', NULL, NULL, 24, 36600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.6', 'Best doctor/healthcare professional First  Name', 'bestdocfirstname_extension', 'G.k.4.r.11.x3.3', 'Best doctor/healthcare professional First  Name', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[1]/text()', NULL, NULL, 24, 36700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.7', 'Best doctor/healthcare professional Middle Name', 'bestdocmiddlename_extension', 'G.k.4.r.11.x3.4', 'Best doctor/healthcare professional Middle Name', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:name/ns:given[2]/text()', NULL, NULL, 24, 36800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.8', 'Best doctor/healthcare professional Telepone', 'bestdoctelepone_extension', 'G.k.4.r.11.x3.5', 'Best doctor/healthcare professional Telepone and extension', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:telecom[starts-with(@value,''tel:'')][1]/@value', NULL, NULL, 24, 36900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.9', 'Best doctor/healthcare professional Email', 'bestdocemail_extension', 'G.k.4.r.11.x3.6', 'Best doctor/healthcare professional Email', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:assignedPerson[@classCode=''PSN''][@determinerCode=''INSTANCE'']/ns:telecom[starts-with(@value,''mailto:'')][1]/@value', NULL, NULL, 24, 37000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.10', 'Vaccination Facility Name', 'facilityname_extension', 'G.k.4.r.11.x4.1', 'Vaccination Facility Name', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:name/@nullFlavor', NULL, 24, 37100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.11', 'Vaccination Facility Address', 'facilityaddrs_extension', 'G.k.4.r.11.x4.2', 'Vaccination Facility Address Line 1', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:streetAddressLine/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:streetAddressLine/@nullFlavor', NULL, 24, 37200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.12', 'Vaccination Facility City', 'facilitycity_extension', 'G.k.4.r.11.x4.3', 'Vaccination Facility City', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:city/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:city/@nullFlavor', NULL, 24, 37300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.13', 'Vaccination Facility State', 'facilitystate_extension', 'G.k.4.r.11.x4.4', 'Vaccination Facility State', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:state/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:state/@nullFlavor', NULL, 24, 37400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.14', 'Vaccination Facility Country', 'facilitycountry_extension', 'G.k.4.r.11.x4.5', 'Vaccination Facility Country', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:country/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:country/@nullFlavor', NULL, 24, 37500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.15', 'Vaccination Facility Postal Code', 'facilitypostcode_extension', 'G.k.4.r.11.x4.6', 'Vaccination Facility Postal Code', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:postalCode/text()', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:addr/ns:postalCode/@nullFlavor', NULL, 24, 37600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.x.16', 'Vaccination Facility Telephone', 'facilityphone_extension', 'G.k.4.r.11.x4.7', 'Vaccination Facility Telephone', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:telecom[starts-with(@value,''tel:'')][1]/@value', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:telecom[starts-with(@value,''tel'')]/@nullFlavor', NULL, 24, 37700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);



Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.17', 'Vaccination Facility Type', 'vaersfacilitytype_extension', 'G.k.4.r.11.x4.8', 'Vaccination Facility Type', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@codeSystem=''2.16.840.1.113883.3.26.1.1'']/@code', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@codeSystem=''2.16.840.1.113883.3.26.1.1'']/@nullFlavor', NULL, 24, 37800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.18', 'Vaccination Facility Military Flag', 'facilitymilitary_extension', 'G.k.4.r.11.x4.9', 'Vaccination Facility Military Flag', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''C114865''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@value', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:inboundRelationship[@typeCode=''REFR''][ns:observation/ns:code[@code=''C114865''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']][1]/ns:observation[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''BL'']/@nullFlavor', NULL, 24, 37900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   (NULL, NULL, NULL, 'G.k.4.r.11.x4.10', 'Vaccination Facility Fax', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:telecom[starts-with(@value,''fax:'')][1]/@value', 'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''COMP''][ns:substanceAdministration][1]/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:performer[@typeCode=''PRF'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:representedOrganization[@classCode=''ORG''][@determinerCode=''INSTANCE'']/ns:telecom[starts-with(@value,''fax'')]/@nullFlavor', NULL, 24, 38000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);

Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.20', 'FDA Specialized Product Category', 'fdaproductcategory_extension', 'G.k.10.x', 'FDA Specialized Product Category', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:asManufacturedProduct[@classCode=''MANU'']/ns:subjectOf/ns:characteristic/ns:value/@code', NULL, NULL, 24, 38100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2', 'Active Substance Information', 'activesubstance', 'G.k.2.3.r', 'Substance / Specified Substance Identifier and Strength (repeat as necessary)', 
    'ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM''][1]/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:ingredient[@classCode=''ACTI'']', NULL, NULL, 24, 38200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.2.2', 'Active Drug substance names', 'activesubstancename', 'G.k.2.3.r.1', 'Substance / Specified Substance Name', 
    'ns:ingredientSubstance[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:name[1]/text()', NULL, NULL, 24, 38300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.3.r.2a', 'Substance / Specified Substance TermID Version Date / Number', 
    'ns:ingredientSubstance[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-Substance'']/@codeSystemVersion', NULL, NULL, 24, 38400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.2.3.r.2b', 'Substance / Specified Substance TermID', 
    'ns:ingredientSubstance[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:code[@codeSystem=''TBD-Substance'']/@code', NULL, NULL, 24, 38500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.28a', 'Strength (number)', '../strength_extension', 'G.k.2.3.r.3a', 'Strength (number)', 
    'ns:quantity[ns:denominator/@value=''1'']/ns:numerator/@value', NULL, NULL, 24, 38600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.28b', 'Strength (unit)', '../strengthunit_extension', 'G.k.2.3.r.3b', 'Strength (unit)', 
    'ns:quantity[ns:denominator/@value=''1'']/ns:numerator/@unit', NULL, NULL, 24, 38700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18', 'Relatedness of drug to reaction(s)/event(s)', 'drugreactionrelatedness', 'G.k.9.i', 'Drug-reaction(s) / Event(s) Matrix (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'' ]/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:causalityAssessment[ns:code[@code=''39''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][ns:subject1[@typeCode=''SUBJ'']/ns:adverseEffectReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id[@root=''UUID of i-th reaction'']][ns:subject2[@typeCode=''SUBJ'']/ns:productUseReference[@classCode=''SBADM''][@moodCode=''EVN'']/ns:id[@root=''UUID of k-th drug'']]]', NULL, NULL, 24, 39000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.1a', 'MedDRA version for Reaction assessed', 'drugreactionassesmeddraversion', NULL, NULL, 
    NULL, NULL, NULL, 24, 39100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.1b', 'Reaction assessed', 'drugreactionasses', 'G.k.9.i.1', 'Reaction(s) / Event(s) Assessed', 
    'ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SUBJ'']/ns:adverseEffectReference[@classCode=''OBS''][@moodCode=''EVN'']/ns:id/@root|//ns:observation[@classCode=''OBS''][@moodCode=''EVN''][ns:id[@root=''reactionid'']]/ns:value[@xsi:type=''CE'']/@code', NULL, NULL, 24, 39200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'G.k.9.i.2.r', 'Assessment of Relatedness of Drug to Reaction(s) / Event(s) (repeat as necessary)', 
    NULL, NULL, NULL, 24, 39300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.2', 'Source of assessment', 'drugassessmentsource', 'G.k.9.i.2.r.1', 'Source of Assessment', 
    'ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN'']/ns:author[@typeCode=''AUT''][1]/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code/ns:originalText/text()', NULL, NULL, 24, 39400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.3', 'Method of assessment', 'drugassessmentmethod', 'G.k.9.i.2.r.2', 'Method of Assessment', 
    'ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN'']/ns:methodCode[1]/ns:originalText/text()', NULL, NULL, 24, 39500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.18.4', 'Drug result', 'drugresult', 'G.k.9.i.2.r.3', 'Result of Assessment', 
    'ns:causalityAssessment[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ST'']/text()', NULL, NULL, 24, 39600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x', 'Other Vaccinations Given within Four Weeks', 'drug[vaccgiven_extension]', 'G.r.10', 'Other Vaccinations Given within Four Weeks', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:subject1[@typeCode=''SBJ''][1]/ns:primaryRole[@classCode=''INVSBJ'']/ns:subjectOf2[@typeCode=''SBJ''][ns:organizer/ns:code[@code=''C102467''][@codeSystem=''2.16.840.1.113883.3.26.1.1'']]', NULL, NULL, 24, 39700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.21', 'Vaccine Type', 'vaccgiven_extension', 'G.r.10.x', 'Vaccine Type', 
    'ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP'']/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM'']/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:name/text()', NULL, NULL, 24, 39800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.22', 'Dose Number in Series', 'vaersprevdose_extension', 'G.r.10.x', 'Dose Number in Series', 
    'ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP'']/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:outboundRelationship2[@typeCode=''FLFS'']/ns:sequenceNumber/@value', NULL, NULL, 24, 39900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.23', 'Lot Number', 'vacclotno_extension', 'G.r.10.x', 'Lot Number', 
    'ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP'']/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM'']/ns:instanceOfKind[@classCode=''INST'']/ns:productInstanceInstance[@classCode=''MMAT''][@determinerCode=''INSTANCE'']/ns:lotNumberText/text()', NULL, NULL, 24, 40000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.24', 'Manufacturer Name', 'vaccmanfid_extension', 'G.r.10.x', 'Manufacturer Name', 
    'ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP'']/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:consumable[@typeCode=''CSM'']/ns:instanceOfKind[@classCode=''INST'']/ns:kindOfProduct[@classCode=''MMAT''][@determinerCode=''KIND'']/ns:asManufacturedProduct/ns:subjectOf/ns:approval/ns:holder/ns:role/ns:playingOrganization/ns:name/text()', NULL, NULL, 24, 40100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.4.k.x.25', 'Date Given', 'vaccinedategiven_extension', 'G.r.10.x', 'Date Given', 
    'ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP'']/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:effectiveTime[@xsi:type=''IVL_TS'']/ns:low/@value', NULL, NULL, 24, 40200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.x.26', 'Route of Administration', 'routeofadmin_extension', 'G.r.10.x1', 'Route of Administration', 'ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP'']/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:routeCode[@codeSystem=''2.16.840.1.113883.3.26.1.1'']/@code', NULL, NULL, 24, 40300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
Values
   ('B.4.k.x.27', 'Vaccine Anatomical Approach Site', 'vaerslocation_extension', 'G.r.10.x2', 'Vaccine Anatomical Approach Site', 'ns:organizer[@classCode=''CATEGORY''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP'']/ns:substanceAdministration[@classCode=''SBADM''][@moodCode=''EVN'']/ns:approachSiteCode[@codeSystem=''2.16.840.1.113883.3.26.1.1'']/@code', NULL, NULL, 24, 40400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5', 'Narrative case summary and further information:', 'summary', 'H', 'Narrative Case Summary and Further Information', 
    NULL, NULL, NULL, 24, 40500, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 1, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.1', 'Case narrative', 'narrativeincludeclinical', 'H.1', 'Case Narrative Including Clinical Course, Therapeutic Measures, Outcome and Additional Relevant Information', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:text/text()', NULL, NULL, 24, 40600, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.2', 'Reporter''s comments', 'reportercomment', 'H.2', 'Reporter''s Comments', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component1[@typeCode=''COMP''][ns:observationEvent[ns:code[@code=''10''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''3''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']]][1]/ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED'']/text()', NULL, NULL, 24, 40700, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, 'summary', 'H.3.r', 'Sender''s Diagnosis (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component1[@typeCode=''COMP''][ns:observationEvent[ns:code[@code=''15''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']]]', NULL, NULL, 24, 40800, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.3a', 'MedDRA Version for Sender''s diagnosis', 'senderdiagnosismeddraversion', 'H.3.r.1a', 'MedDRA Version for Sender''s Diagnosis / Syndrome and / or Reclassification of Reaction / Event', 
    'ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163'']/@codeSystemVersion', NULL, NULL, 24, 40900, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.3b', 'Sender''s diagnosis/syndrome and/or reclassification of reaction/event', 'senderdiagnosis', 'H.3.r.1b', 'Sender''s Diagnosis / Syndrome and / or Reclassification of Reaction / Event  (MedDRA code)', 
    'ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''CE''][@codeSystem=''2.16.840.1.113883.6.163'']/@code', NULL, NULL, 24, 41000, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('B.5.4', 'Sender''s comments', 'sendercomment', 'H.4', 'Sender''s Comments', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:adverseEventAssessment][1]/ns:adverseEventAssessment[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component1[@typeCode=''COMP''][ns:observationEvent[ns:code[@code=''10''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''1''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']]][1]/ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED'']/text()', NULL, NULL, 24, 41100, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H.5.r', 'Case Summary and Reporter''s Comments in Native Language (repeat as necessary)', 
    '/ns:MCCI_IN200100UV01[@ITSVersion=''XML_1.0'']/ns:PORR_IN049016UV[1]/ns:controlActProcess[@classCode=''CACT''][@moodCode=''EVN'']/ns:subject[@typeCode=''SUBJ''][1]/ns:investigationEvent[@classCode=''INVSTG''][@moodCode=''EVN'']/ns:component[@typeCode=''COMP''][ns:observationEvent[ns:code[@code=''36''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.19'']][ns:author[@typeCode=''AUT'']/ns:assignedEntity[@classCode=''ASSIGNED'']/ns:code[@code=''2''][@codeSystem=''2.16.840.1.113883.3.989.2.1.1.21'']]]', NULL, NULL, 24, 41200, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 2, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H.5.r.1a', 'Case Summary and Reporter''s Comments Text', 
    'ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED'']/text()', NULL, NULL, 24, 41300, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   (NULL, NULL, NULL, 'H.5.r.1b', 'Case Summary and Reporter''s Comments Language', 
    'ns:observationEvent[@classCode=''OBS''][@moodCode=''EVN'']/ns:value[@xsi:type=''ED'']/@language', NULL, NULL, 24, 41400, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1, SYSDATE, 
    0, 0, NULL);
INSERT INTO &TRANSFORMPV_USER..E2B_R2R3MAPPING
            (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM,
             R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID,
             SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY,
             MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF
            )
     VALUES ('B.4.k.x.30', 'Product Sequence', 'prodseq_extension', NULL,
             NULL, NULL, NULL, NULL, 24,
             38001, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1,
             SYSDATE, 0, 0, NULL
            );
INSERT INTO &TRANSFORMPV_USER..E2B_R2R3MAPPING
            (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM,
             R3_ELEMENT, R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID,
             SORT_ID, SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY,
             MODIFIED_DATE, DELETED, HEADER, E2B_ELEMENT_NUM_REF
            )
     VALUES ('B.4.k.20', 'Product Sequence', 'prodseq_extension', NULL,
             NULL, NULL, NULL, NULL, 1,
             32501, &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, SYSDATE, 1,
             SYSDATE, 0, 0, NULL
            );
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('A.1.5.2', 'Seriousness Disable', 'seriousnessdisabling', NULL, 'Value Combined in H1', 
    NULL, NULL, '0', 7, 23425, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, sysdate, 1, sysdate, 
    0, 0, NULL);
Insert into &TRANSFORMPV_USER..E2B_R2R3MAPPING
   (R2_ELEMENT_NUM, R2_ELEMENT, R2_XPATH, R3_ELEMENT_NUM, R3_ELEMENT, 
    R3_XPATH, R3_NULL_XPATH, REPEAT_INFO, PROFILE_ID, SORT_ID, 
    SEQ_NUM, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    DELETED, HEADER, E2B_ELEMENT_NUM_REF)
 Values
   ('S.11', 'Outcomes attributed to adverse event - Intervention Reqd', 'intervenrequire_extension', NULL, 'Value Combined in H1', 
    NULL, NULL, '0', 7, 23450, 
    &TRANSFORMPV_USER..E2B_R2R3MAPPING_SEQ.NEXTVAL, 1, sysdate, 1, sysdate, 
    0, 0, NULL);			
COMMIT;
