/* Simple CDS */
@AbapCatalog.sqlViewName: 'ZPRAC_SQL_001'   // SQL View Name: SE11
define view ZPRAC_CDS_001                  // Entity Name: It is used everywhere except SE11 & SE38
  as select from /dmo/travel              // Flight Reference Scenario: Managing Travels
{
  key travel_id     as TravelId,
      agency_id     as AgencyId,
      customer_id   as CustomerId,
      begin_date    as BeginDate,
      end_date      as EndDate,
      booking_fee   as BookingFee,
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Description,
      status        as Status,
      createdby     as Createdby,
      createdat     as Createdat,
      lastchangedby as Lastchangedby,
      lastchangedat as Lastchangedat
}
