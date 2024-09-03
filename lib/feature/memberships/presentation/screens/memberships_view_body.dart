import 'package:ashgar_club_admin_dash/feature/memberships/data/models/membership_models.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/styles.dart';
import '../widgets/add_new_membership.dart';

class MembershipsViewBody extends StatefulWidget {
  const MembershipsViewBody({super.key});

  @override
  State<MembershipsViewBody> createState() => _MembershipsViewBodyState();
}

class _MembershipsViewBodyState extends State<MembershipsViewBody> {
  List<Membership> memberships = [
    // TODO: Replace with actual membership data
    Membership(
      id: 1,
      name: 'Mostafa Mahmoud',
      expirationDate: DateTime(2024, 12, 31),
      status: 'Active',
      paymentStatus: 'Paid',
    ),
    Membership(
      id: 2,
      name: 'Mohamed Salah',
      expirationDate: DateTime(2024, 12, 31),
      status: 'Active',
      paymentStatus: 'Paid',
    ),
    Membership(
      id: 3,
      name: 'Zein Saad',
      expirationDate: DateTime(2024, 12, 31),
      status: 'Active',
      paymentStatus: 'Paid',
    ),
    Membership(
      id: 4,
      name: 'Fred Meshtawy',
      expirationDate: DateTime(2024, 12, 31),
      status: 'Not Active',
      paymentStatus: 'Not Paid',
    ),
    Membership(
      id: 5,
      name: 'Omar Ali',
      expirationDate: DateTime(2024, 12, 31),
      status: 'Active',
      paymentStatus: 'Paid',
    ),
    Membership(
      id: 6,
      name: 'Lara Saad',
      expirationDate: DateTime(2024, 12, 31),
      status: 'Not Active',
      paymentStatus: 'Not Paid',
    ),
  ];

  String? searchQuery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            const AddNewMembership(),
            SizedBox(
              height: 20.h,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: const InputDecoration(
                  hintText: 'Search by Member ID or Member Name'),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              flex: 2,
              child: DataTable2(
                dividerThickness: 2,
                dataRowHeight: 110.h,
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
                      'Member\n ID',
                      textAlign: TextAlign.center,
                    )),
                    size: ColumnSize.S,
                  ),
                  DataColumn2(
                    label: Center(
                        child:
                            Text('Member\n Name', textAlign: TextAlign.center)),
                    size: ColumnSize.L,
                  ),
                  DataColumn2(
                    label: Center(
                      child: Text('Membership\n Expiration',
                          textAlign: TextAlign.center),
                    ),
                    size: ColumnSize.M,
                  ),
                  DataColumn2(
                    label: Center(
                        child: Text('Membership\n Status',
                            textAlign: TextAlign.center)),
                    size: ColumnSize.M,
                  ),
                  DataColumn2(
                    label: Center(
                        child: Text('Payment\n Status',
                            textAlign: TextAlign.center)),
                    size: ColumnSize.M,
                  ),
                  DataColumn2(
                    label: Center(
                      child: Text('Options', textAlign: TextAlign.center),
                    ),
                    size: ColumnSize.L,
                  ),
                ],
                rows: memberships
                    .where(
                  (membership) =>
                      membership.id.toString().contains(searchQuery ?? '') ||
                      membership.name
                          .toLowerCase()
                          .contains(searchQuery?.toLowerCase() ?? ''),
                )
                    .map(
                  (membership) {
                    return DataRow(
                      cells: [
                        DataCell(
                          Center(
                            child: Text(
                              membership.id.toString(),
                              style: Styles.textStyle6,
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              membership.name,
                              style: Styles.textStyle6,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              membership.formattedExpirationDate,
                              style: Styles.textStyle6,
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              membership.status,
                              style: Styles.textStyle6.copyWith(
                                color: membership.status == 'Active'
                                    ? Colors.purpleAccent
                                    : Colors.redAccent,
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Center(
                            child: Text(
                              membership.paymentStatus,
                              style: Styles.textStyle6.copyWith(
                                color: membership.paymentStatus == 'Paid'
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                          ),
                        ),
                        DataCell(
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                        Colors.blue,
                                      ),
                                    ),
                                    child: Text(
                                      'Renew',
                                      style: TextStyle(
                                        fontSize: 4.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                        Colors.amber,
                                      ),
                                    ),
                                    child: Text(
                                      'Modify',
                                      style: TextStyle(
                                          fontSize: 4.sp, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
