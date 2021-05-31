Insert into &TRANSFORMPV_USER..R3_FACTORY_DATA
   (DATA_ID, SEQ_NUM, SORT_ID, ELEMENT_VALUE, DELETED, 
    DELETED_DATE, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    NAME, DESCRIPTION)
 Values
   (1, 1, 1, 'NI', 0, 
    NULL, 1, SYSDATE, 1, SYSDATE, 
    'No Information', 'No information whatsoever can be inferred from this exceptional value. This is the most general exceptional value. It is also the default exceptional value.');
Insert into &TRANSFORMPV_USER..R3_FACTORY_DATA
   (DATA_ID, SEQ_NUM, SORT_ID, ELEMENT_VALUE, DELETED, 
    DELETED_DATE, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    NAME, DESCRIPTION)
 Values
   (2, 2, 2, 'MSK', 0, 
    NULL, 1, SYSDATE, 1, SYSDATE, 
    'Masked', 'There is information on this item available but it has not been provided by the sender due to security, privacy or other reasons. There could be an alternate mechanism for gaining access to this information. Note: using this nullFlavor can provide information considered to be a breach of confidentiality, even though no detail data is provided. Its primary purpose is for those circumstances where it is necessary to inform the receiver that the information does exist without providing any detail.');
Insert into &TRANSFORMPV_USER..R3_FACTORY_DATA
   (DATA_ID, SEQ_NUM, SORT_ID, ELEMENT_VALUE, DELETED, 
    DELETED_DATE, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    NAME, DESCRIPTION)
 Values
   (3, 3, 3, 'UNK', 0, 
    NULL, 1, SYSDATE, 1, SYSDATE, 
    'Unknown', 'A proper value is applicable, but not known.');
Insert into &TRANSFORMPV_USER..R3_FACTORY_DATA
   (DATA_ID, SEQ_NUM, SORT_ID, ELEMENT_VALUE, DELETED, 
    DELETED_DATE, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    NAME, DESCRIPTION)
 Values
   (4, 4, 4, 'NA', 0, 
    NULL, 1, SYSDATE, 1, SYSDATE, 
    'Not Applicable', 'No proper value is applicable in this context (e.g. last menstrual period for a male).');
Insert into &TRANSFORMPV_USER..R3_FACTORY_DATA
   (DATA_ID, SEQ_NUM, SORT_ID, ELEMENT_VALUE, DELETED, 
    DELETED_DATE, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    NAME, DESCRIPTION)
 Values
   (5, 5, 5, 'ASKU', 0, 
    NULL, 1, SYSDATE, 1, SYSDATE, 
    'Asked But Unknown', 'Information was sought but not found (e.g. patient was asked but didn''t know)');
Insert into &TRANSFORMPV_USER..R3_FACTORY_DATA
   (DATA_ID, SEQ_NUM, SORT_ID, ELEMENT_VALUE, DELETED, 
    DELETED_DATE, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    NAME, DESCRIPTION)
 Values
   (6, 6, 6, 'NASK', 0, 
    NULL, 1, SYSDATE, 1, SYSDATE, 
    'Not Asked', 'This information has not been sought (e.g. patient was not asked)');
Insert into &TRANSFORMPV_USER..R3_FACTORY_DATA
   (DATA_ID, SEQ_NUM, SORT_ID, ELEMENT_VALUE, DELETED, 
    DELETED_DATE, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    NAME, DESCRIPTION)
 Values
   (7, 7, 7, 'NINF', 0, 
    NULL, 1, SYSDATE, 1, SYSDATE, 
    'Negative Infinity', 'Negative infinity of numbers.');
Insert into &TRANSFORMPV_USER..R3_FACTORY_DATA
   (DATA_ID, SEQ_NUM, SORT_ID, ELEMENT_VALUE, DELETED, 
    DELETED_DATE, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    NAME, DESCRIPTION)
 Values
   (8, 8, 8, 'PINF', 0, 
    NULL, 1, SYSDATE, 1, SYSDATE, 
    'Positive Infinity', 'Positive infinity of numbers.');
Insert into &TRANSFORMPV_USER..R3_FACTORY_DATA
   (DATA_ID, SEQ_NUM, SORT_ID, ELEMENT_VALUE, DELETED, 
    DELETED_DATE, CREATED_BY, CREATED_DATE, MODIFIED_BY, MODIFIED_DATE, 
    NAME, DESCRIPTION)
 Values
   (9, 9, 9, 'Blank', 0, 
    NULL, 1, SYSDATE, 1, SYSDATE, 
    'BLANK', 'Empty (blank) value');
