/* CDS View with Association */
@AbapCatalog.sqlViewName: 'ZPRAC_SQL_009'
define view ZPRAC_CDS_009
  as select from /DMO/I_Booking_D as _Booking
  association [1] to /DMO/I_Customer as _Customer on _Booking.CustomerID = _Customer.CustomerID   // Default Cardinality: [1]
{
  key _Booking.BookingUUID,
      _Booking.TravelUUID,
      _Booking.BookingID,
      _Booking.BookingDate,
      _Booking.CustomerID,
      _Booking.AirlineID,
      _Booking.ConnectionID,
      _Booking.FlightDate,
      _Booking.FlightPrice,
      _Booking.CurrencyCode,
      _Booking.BookingStatus,
      _Booking.LocalLastChangedAt,
      /* Association(lazy/on-demand join): Making it Public */
      _Customer
}
