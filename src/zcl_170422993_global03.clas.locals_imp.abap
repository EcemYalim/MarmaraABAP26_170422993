CLASS lcl_connection DEFINITION.
    PUBLIC SECTION.


        CLASS-DATA conn_counter TYPE i.

        CLASS-METHODS class_constructor.

        METHODS constructor
            IMPORTING
                i_carrier_id TYPE /dmo/carrier_id
                i_connection_id TYPE /dmo/connection_id
                status TYPE i
                flight_date TYPE d
            RAISING
                cx_ABAP_INVALID_VALUE.

        METHODS set_attributes
            IMPORTING
                i_carrier_id TYPE /dmo/carrier_id
                i_connection_id TYPE /dmo/connection_id.

        METHODS get_attributes
            EXPORTING
                e_carrier_id TYPE /dmo/carrier_id
                e_connection_id TYPE /dmo/connection_id
                status TYPE i
                flight_date TYPE d.




    PROTECTED SECTION.
    PRIVATE SECTION.
        DATA carrier_id TYPE /dmo/carrier_id.
        DATA connection_id TYPE /dmo/connection_id.

        DATA status TYPE i.
        DATA flight_date TYPE d.

ENDCLASS.

CLASS lcl_connection IMPLEMENTATION.

  METHOD class_constructor.
  ENDMETHOD.

  METHOD constructor.
    IF i_carrier_id IS INITIAL OR i_connection_id IS INITIAL
    OR status IS INITIAL OR flight_date IS INITIAL.
        RAISE EXCEPTION TYPE cx_abap_invalid_value.
    ENDIF.

    me->carrier_id = i_carrier_id.
    me->connection_id = i_connection_id.

    conn_counter = conn_counter + 1.

  ENDMETHOD.

  METHOD get_attributes.

    e_carrier_id = carrier_id.
    e_connection_id = connection_id.
    status = status.
    flight_date = flight_date.


  ENDMETHOD.

  METHOD set_attributes.

    carrier_id = i_carrier_id.
    connection_id = i_connection_id.

  ENDMETHOD.

ENDCLASS.
