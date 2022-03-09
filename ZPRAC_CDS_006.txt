/* CDS View with dynamic variable as parameter */
@AbapCatalog.sqlViewName: 'ZPRAC_SQL_006'
define view ZPRAC_CDS_006
  with parameters
    p1 : /dmo/travel_id,                // Data Type of p1
    p2 : /dmo/agency_id                // Data Type of p2
  as select from ZPRAC_CDS_002( p1_travel_id: $parameters.p1 , p2_agency_id: $parameters.p2 )
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
