/* CDS View using session variables */
@AbapCatalog.sqlViewName: 'ZPRAC_SQL_005'
define view ZPRAC_CDS_005
  as select from /dmo/travel
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
where
      end_date  < $session.system_date
  and createdby = $session.user

/* 
There are 6 session variables:
   1. system_date
   2. user
   3. client
   4. system_language
   5. user_date
   6. user_timezone
*/
