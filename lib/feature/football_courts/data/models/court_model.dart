class Court {
  final String name;
  final String location;
  final List<DateTime> availability;
  final List<Booking> bookingHistory;

  Court(
      {required this.name,
      required this.location,
      required this.availability,
      required this.bookingHistory});
}

class Booking {
  final DateTime date;
  final String timeSlot;

  Booking({required this.date, required this.timeSlot});
}
