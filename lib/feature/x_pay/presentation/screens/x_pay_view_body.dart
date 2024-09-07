import 'package:ashgar_club_admin_dash/feature/x_pay/data/models/payment_transaction_model.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/styles.dart';

class XPayViewBody extends StatefulWidget {
  const XPayViewBody({super.key});

  @override
  State<XPayViewBody> createState() => _XPayViewBodyState();
}

class _XPayViewBodyState extends State<XPayViewBody> {
  final List<PaymentTransaction> transactions = [
    PaymentTransaction(
      paymentType: 'Credit Card',
      transactionId: 'TXN12345',
      paymentDate: DateTime(2024, 9, 15),
      amount: 50.0,
      transactionStatus: 'Successful',
    ),
    PaymentTransaction(
      paymentType: 'Fawry',
      transactionId: 'TXN67890',
      paymentDate: DateTime(2024, 9, 24),
      amount: 100.0,
      transactionStatus: 'Pending',
    ),
    PaymentTransaction(
      paymentType: 'Bank Transfer',
      transactionId: 'TXN34567',
      paymentDate: DateTime(2024, 9, 30),
      amount: 900.0,
      transactionStatus: 'Failed',
    ),
    PaymentTransaction(
      paymentType: 'Bank Transfer',
      transactionId: 'TXN34567',
      paymentDate: DateTime(2024, 9, 30),
      amount: 900.0,
      transactionStatus: 'Failed',
    ),
    PaymentTransaction(
      paymentType: 'Credit Card',
      transactionId: 'TXN21897',
      paymentDate: DateTime(2024, 9, 15),
      amount: 50.0,
      transactionStatus: 'Successful',
    ),
    PaymentTransaction(
      paymentType: 'Fawry',
      transactionId: 'TXN0548',
      paymentDate: DateTime(2024, 9, 24),
      amount: 100.0,
      transactionStatus: 'Pending',
    ),
    PaymentTransaction(
      paymentType: 'Bank Transfer',
      transactionId: 'TXN89811',
      paymentDate: DateTime(2024, 9, 30),
      amount: 900.0,
      transactionStatus: 'Failed',
    ),
    PaymentTransaction(
      paymentType: 'Bank Transfer',
      transactionId: 'TXN89841',
      paymentDate: DateTime(2024, 9, 30),
      amount: 900.0,
      transactionStatus: 'Failed',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: DataTable2(
                  dividerThickness: 2,
                  dataRowHeight: 90.h,
                  showCheckboxColumn: false,
                  columnSpacing: 10.w,
                  horizontalMargin: 5.w,
                  border: TableBorder.all(
                    color: Colors.white.withOpacity(.5),
                  ),
                  columns: const [
                    DataColumn2(
                      label: Center(
                        child: Text(
                          'Payment Type',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      size: ColumnSize.L,
                    ),
                    DataColumn2(
                      label: Center(
                        child: Text(
                          'Transaction ID',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      size: ColumnSize.M,
                    ),
                    DataColumn2(
                      label: Center(
                        child: Text(
                          'Payment Date',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      size: ColumnSize.M,
                    ),
                    DataColumn2(
                      label: Center(
                        child: Text(
                          'Amount',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      size: ColumnSize.M,
                    ),
                    DataColumn2(
                      label: Center(
                        child: Text(
                          'Transaction Status',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      size: ColumnSize.M,
                    ),
                  ],
                  rows: transactions.map((transaction) {
                    return DataRow2(
                      cells: [
                        DataCell(
                          Center(
                            child: Text(
                              transaction.paymentType,
                              style: Styles.textStyle6.copyWith(
                                backgroundColor:
                                    transaction.paymentType == 'Credit Card'
                                        ? Colors.green
                                        : transaction.paymentType == 'Fawry'
                                            ? Colors.amberAccent
                                            : Colors.blue,
                                color: transaction.paymentType == 'Fawry'
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              transaction.transactionId,
                              style: Styles.textStyle6,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              transaction.formattedPaymentDate.toString(),
                              style: Styles.textStyle6,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              transaction.amount.toStringAsFixed(2),
                              style: Styles.textStyle6,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              transaction.transactionStatus,
                              style: Styles.textStyle6.copyWith(
                                color: transaction.transactionStatus ==
                                        'Successful'
                                    ? Colors.green
                                    : transaction.transactionStatus == 'Pending'
                                        ? Colors.amberAccent
                                        : Colors.redAccent,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList()),
            ),
          ],
        ),
      ),
    );
  }
}
