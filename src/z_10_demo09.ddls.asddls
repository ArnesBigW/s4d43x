@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 9: Path Expressions'
define view entity Z_10_Demo09
  as select from Z_10_Demo08
{
  key Carrid,
  key Connid,
      Cityfrom,
      Cityto,
      _Carrier.carrname as CarrierName,

      /* Associations */
      _Flights
}
