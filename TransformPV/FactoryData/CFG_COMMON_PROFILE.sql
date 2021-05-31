Insert into &TRANSFORMPV_USER..CFG_COMMON_PROFILE
   (PROFILE_ID, PROFILE_NAME, KEY, VALUE, DELETED, 
    DELETED_DATE)
 Values
   (1, 'TRANSFORMPV_SERVICE', 'EMDR_ACK3_TEMPLATE', '<?xml version="1.0" encoding="UTF-16"?>
<!DOCTYPE ichicsrack SYSTEM "http://www.accessdata.fda.gov/xml/icsrack-xml-v1.1.dtd">
<ichicsrack lang="en">
    <ichicsrmessageheader>
        <messagetype>ICHICSRACK</messagetype>
        <messageformatversion>1.1</messageformatversion>
        <messageformatrelease>1.0</messageformatrelease>
        <messagenumb></messagenumb>
        <messagesenderidentifier></messagesenderidentifier>
        <messagereceiveridentifier></messagereceiveridentifier>
        <messagedateformat>204</messagedateformat>
        <messagedate></messagedate>
    </ichicsrmessageheader>
    <acknowledgment>
        <messageacknowledgment>
            <icsrmessagenumb></icsrmessagenumb>
            <localmessagenumb></localmessagenumb>
            <icsrmessagesenderidentifier></icsrmessagesenderidentifier>
            <icsrmessagereceiveridentifier></icsrmessagereceiveridentifier>
            <icsrmessagedateformat>204</icsrmessagedateformat>
            <icsrmessagedate></icsrmessagedate>
            <transmissionacknowledgmentcode></transmissionacknowledgmentcode>
        </messageacknowledgment>
        <reportacknowledgment>
            <safetyreportid></safetyreportid>
            <safetyreportversion>1</safetyreportversion>
            <localreportnumb></localreportnumb>
            <companynumb></companynumb>
            <receiptdateformat>102</receiptdateformat>
            <receiptdate></receiptdate>
            <reportacknowledgmentcode></reportacknowledgmentcode>
            <errormessagecomment></errormessagecomment>
        </reportacknowledgment>
    </acknowledgment>
</ichicsrack>', 0, 
    NULL);
Insert into &TRANSFORMPV_USER..CFG_COMMON_PROFILE
   (PROFILE_ID, PROFILE_NAME, KEY, VALUE, DELETED, DELETED_DATE)
 Values
   (2, 'TRANSFORMPV_IMPORT_JOB', 'IMPORT_R3XML', '0', 
    0, NULL);
Insert into &TRANSFORMPV_USER..CFG_COMMON_PROFILE
   (PROFILE_ID, PROFILE_NAME, KEY, VALUE, DELETED, DELETED_DATE)
 Values
   (3, 'TRANSFORMPV_IMPORT_JOB', 'IMPORT_PROCESS_TRY_DAYS', '2', 
    0, NULL);
Insert into &TRANSFORMPV_USER..CFG_COMMON_PROFILE
   (PROFILE_ID, PROFILE_NAME, KEY, VALUE, DELETED, DELETED_DATE)
 Values
   (4, 'TRANSFORMPV_IMPORT_JOB', 'IMPORT_R2R3PDF', '1', 
    0, NULL);
