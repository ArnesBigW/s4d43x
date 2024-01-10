@EndUserText.label: 'Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_10_Booking
  as projection on ZI_10_Booking
{
  key Carrid,
  key Connid,
  key Fldate,
  key Bookid,
      Customid,
      Custtype,
      Smoker,
      Luggweight,
      Wunit,
      Invoice,
      Class,
      Forcuram,
      Forcurkey,
      Loccuram,
      Loccurkey,
      OrderDate,
      Counter,
      Agencynum,
      Cancelled,
      Reserved,
      Passname,
      Passform,
      Passbirth,
      /* Associations */
      _Flight : redirected to parent ZC_10_Flight
}
