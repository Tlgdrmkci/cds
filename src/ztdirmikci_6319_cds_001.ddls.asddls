@AbapCatalog.sqlViewName: 'ZTD_6319_V001'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Eğitim Ödev'
define view ZTDIRMIKCI_6319_CDS_001
  as select from    ekko as ek
    inner join      ekpo as ep on ek.ebeln = ep.ebeln
    inner join      mara as ma on ep.matnr = ma.matnr
    left outer join makt as mk on  ma.matnr = mk.matnr
                               and mk.spras = $session.system_language
    inner join      lfa1 as lf on ek.lifnr = lf.lifnr
{
  ep.ebeln,
  ep.ebelp,
  ep.matnr,
  mk.maktx,
  ep.werks,
  ep.lgort,
  ep.meins,
  lf.lifnr,
  lf.name1,
  concat_with_space( lf.stras, lf.mcod3, 1 ) as satici_adresi

}
