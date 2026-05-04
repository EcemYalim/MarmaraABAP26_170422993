CLASS zif_cust_cl1fr_if_170422993 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_cust_intf_170422993 .
    METHODS:
      constructor IMPORTING
                    iv_name         TYPE string
                    iv_customer_no  TYPE kunnr
                    iv_credit_limit TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      mv_name         TYPE string,
      mv_customer_no  TYPE kunnr,
      mv_credit_limit TYPE i.

ENDCLASS.



CLASS zif_cust_cl1fr_if_170422993 IMPLEMENTATION.

  METHOD
    constructor.
    mv_name   =    iv_name.
    mv_customer_no  = iv_customer_no.
    mv_credit_limit = iv_credit_limit.
  ENDMETHOD.


  METHOD zif_cust_intf_170422993~calculate_tax.
    rv_tax = iv_amount * 18 / 100.
  ENDMETHOD.


  METHOD zif_cust_intf_170422993~check_credit.
    IF iv_order_amount <= mv_credit_limit.
      rv_ok = abap_true.
    ELSE.
      rv_ok = abap_false.
    ENDIF.
  ENDMETHOD.


  METHOD zif_cust_intf_170422993~get_credit_limit.
    rv_limit = mv_credit_limit.
  ENDMETHOD.


  METHOD zif_cust_intf_170422993~get_customer_no.
    rv_cust = mv_customer_no.
  ENDMETHOD.


  METHOD zif_cust_intf_170422993~get_name.
    rv_name = mv_name.
  ENDMETHOD.
ENDCLASS.
