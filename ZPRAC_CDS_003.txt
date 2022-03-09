/* CDS View on another parameterized view using constants */
@AbapCatalog.sqlViewName: 'ZPRAC_SQL_003'
define view ZPRAC_CDS_003
  as select from ZPRAC_CDS_002( p1_travel_id:'00000009', p2_agency_id:'070032' )
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description
}
