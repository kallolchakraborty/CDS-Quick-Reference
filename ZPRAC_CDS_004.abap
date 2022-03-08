/* CDS View on another CDS View */
@AbapCatalog.sqlViewName: 'ZPRAC_SQL_004'
define view ZPRAC_CDS_004
  as select from /DMO/I_Travel_D
{
  key TravelUUID,
      TravelID,
      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description
}
