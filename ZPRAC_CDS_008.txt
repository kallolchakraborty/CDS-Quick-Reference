/* CDS View with inner join */
@AbapCatalog.sqlViewName: 'ZPRAC_SQL_008'
define view ZPRAC_CDS_008
  as select from /DMO/I_Booking_D as _Booking
    inner join   /DMO/I_Customer  as _Customer on _Booking.CustomerID      = _Customer.CustomerID
                                               and(
                                                 _Booking.BookingStatus    = 'N'
                                                 or _Booking.BookingStatus = 'B'
                                               )
    inner join   /DMO/I_Travel_D  as _Travel   on _Booking.CustomerID = _Travel.CustomerID
{
  key _Booking.BookingUUID,
  key _Customer.CustomerID,
  key _Travel.TravelUUID,
      _Booking.BookingID,
      _Booking.BookingDate,
      _Booking.AirlineID,
      _Booking.ConnectionID,
      _Booking.FlightDate,
      _Booking.FlightPrice,
      _Booking.BookingStatus,
      _Customer.FirstName,
      _Customer.LastName,
      _Customer.Title,
      _Customer.Street,
      _Customer.PostalCode,
      _Customer.City,
      _Customer.CountryCode,
      _Customer.PhoneNumber,
      _Customer.EMailAddress,
      _Travel.TravelID,
      _Travel.AgencyID,
      _Travel.BeginDate,
      _Travel.EndDate,
      _Travel.BookingFee,
      _Travel.TotalPrice
}
