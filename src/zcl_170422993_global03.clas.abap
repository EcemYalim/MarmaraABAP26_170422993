CLASS zcl_170422993_global03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_170422993_global03 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA carrier_id TYPE /dmo/carrier_id.
    DATA connection_id TYPE /dmo/connection_id.

    DATA connection TYPE REF TO lcl_connection.
    DATA connections TYPE TABLE OF REF TO lcl_connection.

    DATA status TYPE i.
    DATA flight_date TYPE d.


**********************************************************************


    TRY.
        connection = NEW #(
            i_carrier_id ='IH'
            i_connection_id ='0400'
            status = 1
            flight_date = cl_abap_context_info=>get_system_date( )
        ).
        APPEND connection TO connections.
        CATCH cx_ABAP_INVALID_VALUE.
            out->write( 'Method call failed' ).
    ENDTRY.


**********************************************************************



    TRY.
        connection = NEW #(
            i_carrier_id ='AA'
            i_connection_id ='0017'
            status = 1
            flight_date = cl_abap_context_info=>get_system_date( )
        ).
        APPEND connection TO connections.
        CATCH cx_ABAP_INVALID_VALUE.
            out->write( 'Method call failed' ).
    ENDTRY.


**********************************************************************




    TRY.
        connection = NEW #(
            i_carrier_id ='SQ'
            i_connection_id ='0001'
            status = 1
            flight_date = cl_abap_context_info=>get_system_date( )
        ).
        APPEND connection TO connections.
        CATCH cx_ABAP_INVALID_VALUE.
            out->write( 'Method call failed' ).
    ENDTRY.


**********************************************************************


    TRY.
        connection = NEW #(
            i_carrier_id ='HO'
            i_connection_id ='4040'
            status = 1
            flight_date = cl_abap_context_info=>get_system_date( )
        ).
        APPEND connection TO connections.
        CATCH cx_ABAP_INVALID_VALUE.
            out->write( 'Method call failed' ).
    ENDTRY.

**********************************************************************
    LOOP AT connections INTO connection.
        connection->get_attributes(
            IMPORTING
                e_carrier_id = carrier_id
                e_connection_id = connection_id
        ).
        out->write( |Flight connection: { carrier_id } { connection_id }| ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
