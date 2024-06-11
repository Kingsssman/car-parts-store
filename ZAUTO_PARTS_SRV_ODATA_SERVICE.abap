" Create an OData Service from CDS View
@EndUserText.label: 'Auto Parts Service Definition'
define service ZAUTO_PARTS_SRV {
  expose ZV_AUTO_PARTS as AutoParts;
}

" Service Binding
defining service: ZAUTO_PARTS_SRV {
  binding {
    expose: AutoParts {
      resource path: 'AutoParts';
    }
  }
}
