"! <p class="shorttext synchronized" lang="en">Depencency Injection Entity</p>
"! based on https://github.com/swixfort/Sdw.Abap.Di<br/>
CLASS zcl_di_class_entity DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      "! <p class="shorttext synchronized" lang="en">Constructor</p>
      "!
      "! @parameter is_registry_entry | <p class="shorttext synchronized" lang="en">Line of class registry entry</p>
      constructor IMPORTING is_registry_entry TYPE REF TO object, " zcl_di_context=>gys_class_register_entity,
      "! <p class="shorttext synchronized" lang="en">Create instance of given class</p>
      "! only possible if no Constructor parameters exist!
      as_instance,
      "! <p class="shorttext synchronized" lang="en">returns the registered class name</p>
      "!
      "! @parameter r_class_name | <p class="shorttext synchronized" lang="en">Class name</p>
      get_class_name     RETURNING VALUE(r_class_name) TYPE string,
      "! <p class="shorttext synchronized" lang="en">returns the registered instance</p>
      "!
      "! @parameter ro_instance | <p class="shorttext synchronized" lang="en">Reference to registered class</p>
      get_instance       RETURNING VALUE(ro_instance) TYPE REF TO object,
      "! <p class="shorttext synchronized" lang="en">returns the data container with constructor parameters</p>
      "!
      "! @parameter ro_data_container | <p class="shorttext synchronized" lang="en">DI Data Container</p>
      get_data_container RETURNING VALUE(ro_data_container) TYPE REF TO object, " zcl_di_data_container,
      "! <p class="shorttext synchronized" lang="en">returns as_singleton attribute</p>
      "!
      "! @parameter r_bool | <p class="shorttext synchronized" lang="en">boolean</p>
      is_singleton       RETURNING VALUE(r_bool) TYPE abap_bool,
      "! <p class="shorttext synchronized" lang="en">sets the instance attribute</p>
      "!
      "! @parameter io_instance | <p class="shorttext synchronized" lang="en">Reference to instance of registered class name</p>
      set_instance       IMPORTING io_instance TYPE REF TO object.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA ms_registry_entry TYPE REF TO object. "zcl_di_context=>gys_class_register_entity.

ENDCLASS.


CLASS zcl_di_class_entity IMPLEMENTATION.

  METHOD constructor.
    ms_registry_entry = is_registry_entry.
  ENDMETHOD.

  METHOD as_instance.

*    IF ms_registry_entry->instance IS NOT BOUND.
*      TRY.
*          CREATE OBJECT ms_registry_entry->instance TYPE (ms_registry_entry->class_name).
*        CATCH cx_sy_create_object_error.
*      ENDTRY.
*    ENDIF.

  ENDMETHOD.

  METHOD get_class_name.
*    r_class_name = ms_registry_entry->class_name.
  ENDMETHOD.

  METHOD get_instance.
*    ro_instance = ms_registry_entry->instance.
  ENDMETHOD.

  METHOD get_data_container.
*    ro_data_container = ms_registry_entry->data_container.
  ENDMETHOD.

  METHOD is_singleton.
*    r_bool = ms_registry_entry->as_singleton.
  ENDMETHOD.

  METHOD set_instance.
*    ms_registry_entry->instance = io_instance.
  ENDMETHOD.

ENDCLASS.
