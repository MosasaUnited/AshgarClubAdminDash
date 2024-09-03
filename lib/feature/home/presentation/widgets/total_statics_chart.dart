import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalStaticsChart extends StatelessWidget {
  const TotalStaticsChart({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the values
    const double active = 5481;
    const double expired = 1175;
    const double needRenewal = 1174;

    // Calculate the total sum
    const double sum = active + expired + needRenewal;

    // Calculate the percentages
    const double activePercentage = (active / sum) * 100;
    const double expiredPercentage = (expired / sum) * 100;
    const double needRenewalPercentage = (needRenewal / sum) * 100;

    return SizedBox(
      height: 300.h,
      width: 300.w,
      child: PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              color: Colors.blue,
              value: activePercentage,
              title: '${activePercentage.toStringAsFixed(1)}%',
              radius: 50,
              titleStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            PieChartSectionData(
              color: Colors.red,
              value: expiredPercentage,
              title: '${expiredPercentage.toStringAsFixed(1)}%',
              radius: 50,
              titleStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            PieChartSectionData(
              color: Colors.yellow,
              value: needRenewalPercentage,
              title: '${needRenewalPercentage.toStringAsFixed(1)}%',
              radius: 50,
              titleStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
          sectionsSpace: 2,
          centerSpaceRadius: 40,
        ),
      ),
    );
  }
}
