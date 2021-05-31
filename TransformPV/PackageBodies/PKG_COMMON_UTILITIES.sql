CREATE OR REPLACE PACKAGE BODY &TRANSFORMPV_USER..PKG_COMMON_UTILITIES
AS
/*****************************************************************************************
Company             : Vitrana
Author              : Pavan Sharma
Version Number      : 1.0
Description         : This package common utility package user arround all over the packages for string operations.
Last Modified Date  : 06-DEC-2019
******************************************************************************************/
   /*************************************************************************************
	Description     : This function is used to split string into multipal records.
	**************************************************************************************/
   FUNCTION F_SPLIT (P_LIST CLOB, P_DEL VARCHAR2 := ',')
      RETURN SPLIT_TBL PIPELINED
   IS
      L_IDX     PLS_INTEGER;
      L_LIST    CLOB           := P_LIST;
      CODE      VARCHAR2 (10);
      MESSAGE   VARCHAR2 (200);
   BEGIN
      LOOP
         L_IDX    := DBMS_LOB.INSTR (L_LIST, P_DEL);

         IF L_IDX > 0
         THEN
            PIPE ROW (DBMS_LOB.SUBSTR (L_LIST, L_IDX - 1, 1));
            L_LIST    :=
               DBMS_LOB.SUBSTR (L_LIST,
                                DBMS_LOB.GETLENGTH (L_LIST) - L_IDX,
                                L_IDX + 1
                               );
         ELSE
            PIPE ROW (L_LIST);
            RETURN;
         END IF;

         EXIT WHEN L_IDX = 0 OR L_IDX IS NULL;
      END LOOP;

      RETURN;
   END F_SPLIT;
   /**************************************************************************************
	Description     : This function converts input clob into blob type
	**************************************************************************************/
   FUNCTION F_CLOB_TO_BLOB (PI_CLOB IN CLOB)
      RETURN BLOB
   IS
      L_BLOB          BLOB;
      L_OFFSET        NUMBER               DEFAULT 1;
      L_AMOUNT        NUMBER               DEFAULT 4096;
      L_OFFSETWRITE   NUMBER               DEFAULT 1;
      L_AMOUNTWRITE   NUMBER;
      L_BUFFER        VARCHAR2 (4096 CHAR);
   BEGIN
      DBMS_LOB.CREATETEMPORARY (L_BLOB, TRUE);

      BEGIN
         IF PI_CLOB IS NOT NULL
         THEN
            LOOP
               DBMS_LOB.READ (PI_CLOB, L_AMOUNT, L_OFFSET, L_BUFFER);
               L_AMOUNTWRITE    :=
                              UTL_RAW.LENGTH (UTL_RAW.CAST_TO_RAW (L_BUFFER));
               DBMS_LOB.WRITE (L_BLOB,
                               L_AMOUNTWRITE,
                               L_OFFSETWRITE,
                               UTL_RAW.CAST_TO_RAW (L_BUFFER)
                              );
               L_OFFSETWRITE    := L_OFFSETWRITE + L_AMOUNTWRITE;
               L_OFFSET         := L_OFFSET + L_AMOUNT;
               L_AMOUNT         := 4096;
            END LOOP;
         END IF;
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            NULL;
      END;

      RETURN L_BLOB;
   END F_CLOB_TO_BLOB;
	/**************************************************************************************
	Description     : This function converts input clob into blob table type
	**************************************************************************************/
   FUNCTION F_CLOB_TO_BLOB_T (P_CLOB CLOB)
      RETURN BLOB
   AS
      L_BLOB            BLOB    := NULL;
      L_DEST_OFFSET     INTEGER := 1;
      L_SOURCE_OFFSET   INTEGER := 1;
      L_LANG_CONTEXT    INTEGER := DBMS_LOB.DEFAULT_LANG_CTX;
      L_WARNING         INTEGER := DBMS_LOB.WARN_INCONVERTIBLE_CHAR;
   BEGIN
      DBMS_LOB.CREATETEMPORARY (L_BLOB, TRUE);
      DBMS_LOB.CONVERTTOBLOB (DEST_LOB          => L_BLOB,
                              SRC_CLOB          => P_CLOB,
                              AMOUNT            => DBMS_LOB.LOBMAXSIZE,
                              DEST_OFFSET       => L_DEST_OFFSET,
                              SRC_OFFSET        => L_SOURCE_OFFSET,
                              BLOB_CSID         => DBMS_LOB.DEFAULT_CSID,
                              LANG_CONTEXT      => L_LANG_CONTEXT,
                              WARNING           => L_WARNING
                             );
      RETURN L_BLOB;
   EXCEPTION
      WHEN PKG_COMMON_UTILITIES.EXP_USER_ACCOUNT_DISABLED
      THEN
         NULL;
   END F_CLOB_TO_BLOB_T;
	/**************************************************************************************
	Description     : This procedure is used for verify the user enable or disable.
	**************************************************************************************/  
   PROCEDURE P_VERIFY_USER_ACCOUNT_STATUS (PI_USER_ID IN NUMBER)
   IS
      V_ACCOUNT_STATUS   NUMBER (10);
   BEGIN
      BEGIN
         V_ACCOUNT_STATUS    := 0;

         SELECT COUNT (*)
           INTO V_ACCOUNT_STATUS
           FROM E2B_CFG_USERS
          WHERE USER_ID = PI_USER_ID
                AND (ACCOUNT_DISABLED = 1 OR DELETED = 1);

         IF V_ACCOUNT_STATUS = 1
         THEN
            RAISE EXP_USER_ACCOUNT_DISABLED;
         END IF;

         V_ACCOUNT_STATUS    := 0;

         SELECT COUNT (*)
           INTO V_ACCOUNT_STATUS
           FROM E2B_CFG_USERS
          WHERE USER_ID = PI_USER_ID AND ESM_USER = 0;

         IF V_ACCOUNT_STATUS = 1
         THEN
            RAISE EXP_USER_ACCOUNT_ADMIN_DISABLE;
         END IF;
      END;
   END P_VERIFY_USER_ACCOUNT_STATUS;	  
   /**************************************************************************************
	Description     : This function returns error message on the basis error number/msg.
	**************************************************************************************/
   FUNCTION F_GET_ERROR_MESSAGE (
      PI_ERROR_NUMBER   IN   NUMBER,
      PI_SQLERRM        IN   VARCHAR2
   )
      RETURN VARCHAR2
   IS
      V_ERROR_MESSAGE   VARCHAR2 (4000);
   BEGIN
      BEGIN
         SELECT ERROR_MESSAGE
           INTO V_ERROR_MESSAGE
           FROM E2B_CMN_ERROR_MESSAGES
          WHERE ERROR_NUMBER = PI_ERROR_NUMBER AND ENABLED = 1;
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            V_ERROR_MESSAGE    := PI_SQLERRM;
      END;

      RETURN V_ERROR_MESSAGE;
   END F_GET_ERROR_MESSAGE;
	  /**************************************************************************************
	Description     : This function converts plsql table to sql table.
	**************************************************************************************/
   FUNCTION F_CONV_PLSQL_TO_SQL_TAB (PI_PLSQL_TAB IN T_STRING_TAB)
      RETURN SPLIT_TBL
   IS
      V_SQL_TYP_TAB   SPLIT_TBL;
   BEGIN
      V_SQL_TYP_TAB    := SPLIT_TBL ();

      FOR I IN PI_PLSQL_TAB.FIRST .. PI_PLSQL_TAB.LAST
      LOOP
         V_SQL_TYP_TAB.EXTEND;
         V_SQL_TYP_TAB (I)    := PI_PLSQL_TAB (I);
      END LOOP;

      RETURN V_SQL_TYP_TAB;
   END F_CONV_PLSQL_TO_SQL_TAB;
END PKG_COMMON_UTILITIES;
/
