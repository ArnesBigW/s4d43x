@EndUserText.label: 'Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_10_Flight
  as projection on ZI_10_Flight
{
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_10_CARRIERVH', element: 'Carrid' } }]
  key CarrierID,
  key ConnectionID,
  key FlightDate,
      FlightPrice,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_CURRENCYSTDVH', element: 'Currency' } }]
      CurrencyCode,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      PlaneType,
      MaximumSeatsEconomyClass,
      OccupiedSeatsEconomyClass,
      PaymentSum,
      MaximumSeatsBusinessClass,
      OccupiedSeatsBusinessClass,
      MaximumSeatsFirstClass,
      OccupiedSeatsFirstClass,

      _Bookings : redirected to composition child ZC_10_Booking
}
