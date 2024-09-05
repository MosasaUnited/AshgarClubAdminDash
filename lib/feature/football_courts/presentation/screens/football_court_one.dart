import 'package:ashgar_club_admin_dash/core/theme/styles.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class FootballCourtOne extends StatefulWidget {
  const FootballCourtOne({super.key});

  @override
  State<FootballCourtOne> createState() => _FootballCourtOneState();
}

class _FootballCourtOneState extends State<FootballCourtOne> {
  DateTime _selectedDay = DateTime.utc(2024, 10, 1);
  CalendarFormat _calendarFormat = CalendarFormat.week;

  final Map<DateTime, List<Map<String, dynamic>>> _events = {
    DateTime.utc(2024, 10, 1): [
      {'time': '10:00 AM', 'status': 'available'},
      {'time': '11:00 AM', 'status': 'booked', 'paid': true},
      {'time': '12:00 PM', 'status': 'booked', 'paid': false},
    ],
    DateTime.utc(2024, 10, 2): [
      {'time': '09:00 AM', 'status': 'available'},
      {'time': '10:00 AM', 'status': 'booked', 'paid': true},
      {'time': '11:00 AM', 'status': 'available'},
    ],
  };

  List<Map<String, dynamic>> _generateDailyHours() {
    List<Map<String, dynamic>> hours = [];
    for (int i = 0; i < 24; i++) {
      final hour = i.toString().padLeft(2, '0');
      const minute = '00';
      final period = i < 12 ? 'AM' : 'PM';
      hours.add({
        'time': '$hour:$minute $period',
        'status': 'available',
      });
    }
    return hours;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 500.h,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Availability Calendar
                  TableCalendar(
                    headerStyle: HeaderStyle(
                      titleCentered: true,
                      formatButtonVisible: false,
                      titleTextStyle: Styles.textStyle6.copyWith(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                    selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                    focusedDay: _selectedDay,
                    firstDay: DateTime.utc(2024, 10, 1),
                    lastDay: DateTime.utc(2024, 12, 31),
                    calendarFormat: _calendarFormat,
                    currentDay: DateTime.now(),
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                      });
                    },
                    onFormatChanged: (format) {
                      setState(() {
                        _calendarFormat = format;
                      });
                    },
                    calendarBuilders: CalendarBuilders(
                      defaultBuilder: (context, day, focusedDay) {
                        return Container(
                          margin: const EdgeInsets.all(4.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: _events[day]?.any((event) =>
                                        event['status'] == 'booked') ??
                                    false
                                ? Colors.red
                                : Colors.yellow,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            day.day.toString(),
                            style: const TextStyle(color: Colors.black),
                          ),
                        );
                      },
                      selectedBuilder: (context, day, focusedDay) {
                        return Container(
                          margin: const EdgeInsets.all(4.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            day.day.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: DataTable2(
                      dataTextStyle: Styles.textStyle6.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      border: TableBorder.all(),
                      columns: [
                        DataColumn(
                          label: Center(
                            child: Text(
                              'Time',
                              style: Styles.textStyle6.copyWith(
                                fontSize: 7.sp,
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Center(
                            child: Text(
                              'Status',
                              style: Styles.textStyle6.copyWith(
                                fontSize: 7.sp,
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Center(
                            child: Text(
                              'Payment',
                              style: Styles.textStyle6.copyWith(
                                fontSize: 7.sp,
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ],
                      rows: List<DataRow>.generate(
                        24,
                        (index) {
                          final hour = _generateDailyHours()[index];
                          final event = _events[_selectedDay]?.firstWhere(
                            (e) => e['time'] == hour['time'],
                            orElse: () => hour,
                          );
                          return DataRow(cells: [
                            DataCell(
                              Text(
                                DateFormat('h:mm a').format(
                                  DateFormat('HH:mm').parse(hour['time']),
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                event?['status'] == 'available'
                                    ? 'Available'
                                    : 'Booked',
                                style: TextStyle(
                                  color: event?['status'] == 'available'
                                      ? Colors.green
                                      : Colors.red,
                                  fontSize: 6.sp,
                                ),
                              ),
                            ),
                            DataCell(event?['status'] == 'booked'
                                ? Text(
                                    event?['paid'] ? 'Paid' : 'Unpaid',
                                    style: TextStyle(
                                      color: event?['paid']
                                          ? Colors.green
                                          : Colors.red,
                                      fontSize: 6.sp,
                                    ),
                                  )
                                : event?['status'] == 'Available'
                                    ? const Text('Paid')
                                    : const Text('Not Paid')),
                          ]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
