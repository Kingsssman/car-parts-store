REPORT zfetch_auto_parts.

DATA:
  go_auto_parts TYPE REF TO zcl_auto_parts,
  gt_parts TYPE TABLE OF zauto_parts,
  lv_limit TYPE i VALUE 10.

" Create an instance of the class
CREATE OBJECT go_auto_parts.

" Fetch data
gt_parts = go_auto_parts->get_parts( iv_limit = lv_limit ).

" Display data
LOOP AT gt_parts INTO DATA(ls_part).
  WRITE: / ls_part-part_number, ls_part-description, ls_part-price, ls_part-stock_level.
ENDLOOP.
