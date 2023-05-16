CLASS zcl_di_test_service_2 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_di_test_service_2.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_di_test_service_2 IMPLEMENTATION.
  METHOD zif_di_test_service_2~write.
    r_text_to_write =
        VALUE #( ( |Class zcl_di_test_service_2 is used.|  ) ).
  ENDMETHOD.

ENDCLASS.
