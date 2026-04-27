CLASS zcl_170422993_vehicle_demo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_170422993_vehicle_demo IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(lo_car) = NEW zcl_car(
    iv_brand = 'BMW'
    iv_models = '320'
    iv_doors = 4
    ).

    DATA(lo_truck) = NEW zcl_truck(
    iv_brand = 'Volvo'
    iv_models = 'FH16'
    iv_capacity = 25
    ).

    DATA(lo_bus) = NEW zcl_bus(
    iv_brand = 'Volvo'
    iv_models = 'FH16'
    iv_passengers = 16
    ).

    DATA(lo_motorcycle) = NEW zcl_motorcycle(
    iv_brand = 'Volvo'
    iv_models = 'FH16'
    iv_engine_cc = 600
    ).


  ENDMETHOD.
ENDCLASS.



