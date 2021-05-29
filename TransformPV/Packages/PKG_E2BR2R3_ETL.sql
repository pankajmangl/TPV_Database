CREATE OR REPLACE PACKAGE &TRANSFORMPV_USER..PKG_E2BR2R3_ETL
/* **********************************************************************
    Name     :   E2BR2R3_ETL
    Type     :   Package

    Description  :   This package is used to define customer specific logics specified for ETL.

    Sources    :   n/a

    Source Tables  :   n/a
    Target Tables  :   n/a
    Business Logic :   n/a

    Parameters   :   n/a

    Return    :   n/a

    Updates    :   04-June-2014   [PS] v0.01 initial version, see description above.

    ***********************************************************************/
AS
   PROCEDURE P_LOAD_USER_INFO;

END PKG_E2BR2R3_ETL;
/
