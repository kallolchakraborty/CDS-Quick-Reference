/* Simple CDS View Data Manipulation */
@AbapCatalog.sqlViewName: 'ZPRAC_SQL_007'
define view ZPRAC_CDS_007
  as select from /dmo/travel
{

  key ltrim( travel_id, '0' ) as TravelId, //Removing the preceeding zeros
      agency_id               as AgencyId,
      customer_id             as CustomerId,
      begin_date              as BeginDate,
      end_date                as EndDate,
      booking_fee             as BookingFee,
      total_price             as TotalPrice,
      ( total_price - 10 )    as Discounted_Price, //Field level manipultation
      currency_code           as CurrencyCode,
      description             as Description,

      //Using case operator
      case status
      when 'B' then 'Test 1'
      when 'N' then 'Test 2'
      else 'Nothing'
      end                     as Status

}
