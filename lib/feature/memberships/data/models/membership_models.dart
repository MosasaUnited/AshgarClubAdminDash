import 'package:intl/intl.dart';

class Membership {
  final int id;
  final String name;
  final DateTime expirationDate;
  final String status;
  final String paymentStatus;

  Membership(
      {required this.id,
      required this.name,
      required this.expirationDate,
      required this.status,
      required this.paymentStatus});

  // Method to get formatted expiration date
  String get formattedExpirationDate {
    return DateFormat('yyyy-MM-dd').format(expirationDate);
  }
}
