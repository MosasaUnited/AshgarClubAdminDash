import 'package:intl/intl.dart';

class PaymentTransaction {
  final String paymentType;
  final String transactionId;
  final DateTime paymentDate;
  final double amount;
  final String transactionStatus;

  PaymentTransaction({
    required this.paymentType,
    required this.transactionId,
    required this.paymentDate,
    required this.amount,
    required this.transactionStatus,
  });

//   Method to get formatted date
  String get formattedPaymentDate {
    return DateFormat('yyyy-MM-dd').format(paymentDate);
  }
}
