Prompt Package Body PKG_CONTEXT_API;

CREATE OR REPLACE PACKAGE BODY &TRANSFORMPV_USER..PKG_CONTEXT_API
IS
/*****************************************************************************************
Company             : Vitrana
Author              : Pavan Sharma
Version Number      : 1.0
Description         : This package having code related to define context.
Last Modified Date  : 06-DEC-2019
******************************************************************************************/   
   /*************************************************************************************
	Description     : This Procedure having code related set context.
	**************************************************************************************/
   PROCEDURE P_SET_PARAMETER (P_NAME IN VARCHAR2, P_VALUE IN VARCHAR2)
   AS
   BEGIN
      DBMS_SESSION.SET_CONTEXT (GV_CONTEXT, P_NAME, P_VALUE);
   END P_SET_PARAMETER;
   
   /**************************************************************************************
	Description     : This function having code related get context value.
	**************************************************************************************/
   FUNCTION F_GET_PARAMETER (P_NAME IN VARCHAR2)
      RETURN VARCHAR2
   AS
	
      VAL   VARCHAR2 (4000);
   BEGIN
      VAL    := SYS_CONTEXT (GV_CONTEXT, P_NAME, 4000);
      RETURN VAL;
   END F_GET_PARAMETER;
   
   /**************************************************************************************
	Description     : This function having code related clear context value.
	**************************************************************************************/
   PROCEDURE CLEAR_ALL_CONTEXT
   IS
   BEGIN
      DBMS_SESSION.CLEAR_ALL_CONTEXT (GV_CONTEXT);
   END CLEAR_ALL_CONTEXT;
END PKG_CONTEXT_API;
/


