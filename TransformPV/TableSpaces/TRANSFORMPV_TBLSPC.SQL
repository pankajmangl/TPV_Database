DROP TABLESPACE TRANSFORMPV_TBLSPC
  INCLUDING CONTENTS AND DATAFILES
    CASCADE CONSTRAINTS;
	
CREATE TABLESPACE TRANSFORMPV_TBLSPC DATAFILE 
  '&TABLESPACE_FILE_PATH\TRANSFORMPV_TBLSPC1.DBF' SIZE 500M AUTOEXTEND ON NEXT 50M MAXSIZE 10G
LOGGING
ONLINE
PERMANENT
EXTENT MANAGEMENT LOCAL AUTOALLOCATE
BLOCKSIZE 8K
SEGMENT SPACE MANAGEMENT AUTO
FLASHBACK ON;

