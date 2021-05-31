Insert into &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW_R3
   (DTD_ELEMENT, DELETED, ENABLED, DECODE_VALUE, E2B_CODE, 
    PROFILE_ID, DECODE_TYPE)
 Values
   ('F.r.3.1', 0, 1, 'Positive|Negative|Borderline|Inconclusive', '1|2|3|4', 
    1, 'F.r.3.1');

DELETE FROM &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW_R3 WHERE DTD_ELEMENT = 'G.k.9.i.4' and profile_id = 1;

Insert into &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW_R3
   (DTD_ELEMENT, DELETED, ENABLED, DECODE_VALUE, E2B_CODE, 
    PROFILE_ID, DECODE_TYPE)
Values
   ('G.k.9.i.4', 0, 1, 'Yes|No|UNK|No', '1|2|3|4', 
    1, 'G.k.9.i.4');

	
DECLARE
V_DECODE_VALUE_1 VARCHAR2(32000);
V_DECODE_VALUE_2 VARCHAR2(32000);
V_E2B_CODE VARCHAR2(32000);

BEGIN

V_DECODE_VALUE_1 := 'Angika|Aragonese|Mapudungun|Arapaho|Arawak|Assamese|Asturian|Avaric|Awadhi|Bashkir|Bambara|Balinese|Basa (Cameroon)|Beja|Belarusian|Bemba (Zambia)|Bengali|Bhojpuri|Bini|Bislama|Siksika|Bilin|Caddo|Galibi Carib|Catalan|Cebuano|Czech|Chamorro|Chechen|Chuukese|Chinook jargon|Choctaw|Chipewyan|Cherokee|Chuvash|Cheyenne|Cornish|Corsican|Tibetan|Bosnian|Braj|Breton|Buginese|Bulgarian|Afar|Abkhazian|Achinese|Acoli|Adangme|Adyghe|Afrikaans|Ainu (Japan)|Aleut|Southern Altai|Amharic|Japanese|Judeo-Persian|Kara-Kalpak|Kabyle|Kachin|Kalaallisut|Kamba (Kenya)|Kannada|Kashmiri|Georgian|Kazakh|Kabardian|Khasi|Central Khmer|Kikuyu|Kinyarwanda|Kirghiz|Kimbundu|Korean|Kosraean|Karachay-Balkar|Karelian|Kurukh|Kuanyama|Kumyk|Kutenai|Ladino|Lamba|Lao|Lezghian|Crimean Tatar|Kashubian|Welsh|Dakota|Danish|Dargwa|German|Dogrib|Dhivehi|Lower Sorbian|Duala|Dyula|Dzongkha|Efik|Ekajuk|Modern Greek (1453-)|English|Basque|Ewe|Ewondo|Fang (Equatorial Guinea)|Faroese|Fanti|Fijian|Filipino|Finnish|Fon|French|Northern Frisian|Eastern Frisian|Western Frisian|Friulian|Ga|Gayo|Gilbertese|Scottish Gaelic|Irish|Galician|Manx|Gorontalo|Swiss German|Gujarati|GwichÊ¼in|Haitian|Hausa|Hawaiian|Hebrew|Herero|Hiligaynon|Hindi|Hiri Motu|Croatian|Upper Sorbian|Hungarian|Hupa|Armenian|Iban|Igbo|Sichuan Yi|Iloko|Indonesian|Ingush|Icelandic|Italian|Javanese|Manchu|Manipuri|Mohawk|Mossi|Maori|Creek|Mirandese|Polish|Pohnpeian|Portuguese|Burmese|Erzya|Neapolitan|Nauru|Navajo|South Ndebele|North Ndebele|Ndonga|Low German|Newari|Nias|Niuean|Dutch|Norwegian Nynorsk|Norwegian BokmÃ¥l|Nogai|N''''Ko|Pedi|Nyanja|Nyamwezi|Nyankole|Nyoro|Nzima|Occitan (post 1500)|Osage|Ossetian|Pangasinan|Pampanga|Panjabi|Papiamento|Palauan|Limburgan|Lingala|Lithuanian|Mongo|Lozi|Luxembourgish|Luba-Lulua|Luba-Katanga|Ganda|Luiseno|Lunda|Luo (Kenya and Tanzania)|Lushai|Madurese|Magahi|Marshallese|Maithili|Makasar|Malayalam|Marathi|Masai|Moksha|Mandar|Mende (Sierra Leone)|Mi''''kmaq|Minangkabau|';

V_DECODE_VALUE_2 := 'Macedonian|Maltese|Vai|Venda|Vietnamese|Votic|Wolaytta|Waray (Philippines)|Washo|Walloon|Wolof|Kalmyk|Xhosa|Yao|Yapese|Yoruba|Rapanui|Rarotongan|Romansh|Romanian|Rundi|Macedo-Romanian|Russian|Sandawe|Sango|Yakut|Sasak|Santali|Sicilian|Scots|Selkup|Shan|Sidamo|Sinhala|Slovak|Slovenian|Southern Sami|Northern Sami|Lule Sami|Inari Sami|Samoan|Skolt Sami|Shona|Sindhi|Soninke|Somali|Southern Sotho|Spanish|Sranan Tongo|Serbian|Serer|Swati|Sukuma|Sundanese|Susu|Swedish|Tahitian|Tamil|Tatar|Telugu|Timne|Tereno|Tetum|Tajik|Tagalog|Thai|Tigre|Tigrinya|Tiv|Tokelau|Tlingit|Tonga (Nyasa)|Tonga (Tonga Islands)|Tok Pisin|Tsimshian|Tswana|Tsonga|Turkmen|Tumbuka|Turkish|Tuvalu|Twi|Tuvinian|Udmurt|Uighur|Ukrainian|Umbundu|Urdu|Zenaga|Standard Moroccan Tamazight|Zulu|Zuni';

V_E2B_CODE := 'anp|arg|arn|arp|arw|asm|ast|ava|awa|bak|bam|ban|bas|bej|bel|bem|ben|bho|bin|bis|bla|byn|cad|car|cat|ceb|ces|cha|che|chk|chn|cho|chp|chr|chv|chy|cor|cos|bod|bos|bra|bre|bug|bul|aar|abk|ace|ach|ada|ady|afr|ain|ale|alt|amh|jpn|jpr|kaa|kab|kac|kal|kam|kan|kas|kat|kaz|kbd|kha|khm|kik|kin|kir|kmb|kor|kos|krc|krl|kru|kua|kum|kut|lad|lam|lao|lez|crh|csb|cym|dak|dan|dar|deu|dgr|div|dsb|dua|dyu|dzo|efi|eka|ell|eng|eus|ewe|ewo|fan|fao|fat|fij|fil|fin|fon|fra|frr|frs|fry|fur|gaa|gay|gil|gla|gle|glg|glv|gor|gsw|guj|gwi|hat|hau|haw|heb|her|hil|hin|hmo|hrv|hsb|hun|hup|hye|iba|ibo|iii|ilo|ind|inh|isl|ita|jav|mnc|mni|moh|mos|mri|mus|mwl|pol|pon|por|mya|myv|nap|nau|nav|nbl|nde|ndo|nds|new|nia|niu|nld|nno|nob|nog|nqo|nso|nya|nym|nyn|nyo|nzi|oci|osa|oss|pag|pam|pan|pap|pau|lim|lin|lit|lol|loz|ltz|lua|lub|lug|lui|lun|luo|lus|mad|mag|mah|mai|mak|mal|mar|mas|mdf|mdr|men|mic|min|mkd|mlt|vai|ven|vie|vot|wal|war|was|wln|wol|xal|xho|yao|yap|yor|rap|rar|roh|ron|run|rup|rus|sad|sag|sah|sas|sat|scn|sco|sel|shn|sid|sin|slk|slv|sma|sme|smj|smn|smo|sms|sna|snd|snk|som|sot|spa|srn|srp|srr|ssw|suk|sun|sus|swe|tah|tam|tat|tel|tem|ter|tet|tgk|tgl|tha|tig|tir|tiv|tkl|tli|tog|ton|tpi|tsi|tsn|tso|tuk|tum|tur|tvl|twi|tyv|udm|uig|ukr|umb|urd|zen|zgh|zul|zun';

Insert into &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW_R3
   (DTD_ELEMENT, DELETED, ENABLED, DECODE_VALUE, E2B_CODE, 
    PROFILE_ID, DECODE_TYPE)
 Values
   ('E.i.1.1b', 0, 1, V_DECODE_VALUE_1||V_DECODE_VALUE_2, V_E2B_CODE, 
    1, 'E.i.1.1b');

Insert into &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW_R3
   (DTD_ELEMENT, DELETED, ENABLED, DECODE_VALUE, E2B_CODE, 
    PROFILE_ID, DECODE_TYPE)
 Values
   ('H.5.r.1b', 0, 1, V_DECODE_VALUE_1||V_DECODE_VALUE_2, V_E2B_CODE, 
    1, 'H.5.r.1b');

END;
/

update &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW_R3
set E2B_CODE = '10a|a|mo|wk|d|h'
where DTD_ELEMENT = 'D.2.2b'
AND PROFILE_ID = 1 ;

UPDATE &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW_R3
SET DECODE_VALUE = 'Year|Decade' , E2B_CODE = 'a|10a'
WHERE DTD_ELEMENT = 'D.10.2.2b' AND PROFILE_ID = 1;

Insert into &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW_R3
   (DTD_ELEMENT, R3_XPATH, TABLE_NAME, VAL_COLUMN_NAME, ID_COLUMN_NAME, 
    ADDITIONAL_CONDITION, DELETED, ENABLED, DELETED_DATE, DECODE_VALUE, 
    E2B_CODE, PROFILE_ID, DECODE_TYPE)
Values
   ('C.2.r.2.5', NULL, NULL, NULL, NULL, 
    NULL, 0, 1, NULL, 'UNKNOWN|ANDALUCIA|ARAGON|ASTURIAS|ISLAS BALEARES|CANARIAS|CANTABRIA|CASTILLA Y LEON|CASTILLA-LA MANCHA|CATALUNA|COMUNIDAD VALENCIA|EXTREMADURA|GALICIA|COMUNIDAD DE MADRID|MURCIA|NAVARRA|PAIS VASCO|LA RIOJA|CEUTA|MELILLA', 
    '00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19', 1, 'C.2.r.2.5');

Insert into &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW_R3
   (DTD_ELEMENT, R3_XPATH, TABLE_NAME, VAL_COLUMN_NAME, ID_COLUMN_NAME, 
    ADDITIONAL_CONDITION, DELETED, ENABLED, DELETED_DATE, DECODE_VALUE, 
    E2B_CODE, PROFILE_ID, DECODE_TYPE)
 Values
   ('G.k.10.r', NULL, NULL, NULL, NULL, 
    NULL, 0, 1, NULL, 'Counterfeit|Overdose|Drug taken by the father|Drug taken beyond expiry date|Batch and lot tested and found within specifications|Batch and lot tested and found not within specifications|Medication error|Misuse|Abuse|Occupational exposure|Off label use','1|2|3|4|5|6|7|8|9|10|11', 1, 'G.k.4.r.1b');

update &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW_R3 set decode_value = 'Yes|No|3', e2b_code = 'True|False|Unknown' where dtd_element = 'D.9.3' and profile_id=1;  

Insert into &TRANSFORMPV_USER..CFG_E2B_DECODE_VIEW_R3
   (DTD_ELEMENT, R3_XPATH, TABLE_NAME, VAL_COLUMN_NAME, ID_COLUMN_NAME, 
    ADDITIONAL_CONDITION, DELETED, ENABLED, DELETED_DATE, DECODE_VALUE, 
    E2B_CODE, PROFILE_ID, DECODE_TYPE)
 Values
   ('G.k.4.r.11.2b', NULL, 'LM_ADMIN_ROUTE', 'ROUTE_DESC', 'ADMIN_ROUTE_ID', 
    NULL, 0, 1, NULL, NULL, 
    NULL, 1, 'ADMIN_ROUTE');
	
commit;