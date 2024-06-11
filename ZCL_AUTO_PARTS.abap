" Define the auto parts class
CLASS zcl_auto_parts DEFINITION.
  PUBLIC SECTION.
    METHODS:
      get_parts IMPORTING iv_limit TYPE i
                RETURNING VALUE(rt_parts) TYPE TABLE OF zauto_parts.
ENDCLASS.
