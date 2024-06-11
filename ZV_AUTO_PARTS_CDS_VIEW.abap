" Define a Core Data Service (CDS)
@AbapCatalog.sqlViewName: 'ZV_AUTO_PARTS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Auto Parts Data'
define view ZV_AUTO_PARTS as select from zauto_parts {
  key part_number,
  description,
  price,
  stock_level
}
