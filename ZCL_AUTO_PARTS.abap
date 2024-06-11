" Define the auto parts class
CLASS zcl_auto_parts DEFINITION.
  PUBLIC SECTION.
    METHODS:
      get_parts IMPORTING iv_limit TYPE i
                RETURNING VALUE(rt_parts) TYPE TABLE OF zauto_parts.
ENDCLASS.

" Implement the methods of the class
CLASS zcl_auto_parts IMPLEMENTATION.
  METHOD get_parts.
    SELECT * FROM zauto_parts UP TO iv_limit ROWS INTO TABLE rt_parts.
  ENDMETHOD.
ENDCLASS.
