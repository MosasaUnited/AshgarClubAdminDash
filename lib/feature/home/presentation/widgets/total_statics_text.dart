import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class TotalStaticsText extends StatelessWidget {
  const TotalStaticsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Total Memberships : ',
              style: Styles.textStyle6.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '7830',
              style: Styles.textStyle6.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Active Memberships : ',
              style: Styles.textStyle6.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '5481',
              style: Styles.textStyle6.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Expired Memberships : ',
              style: Styles.textStyle6.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '1175',
              style: Styles.textStyle6.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'Need To Renewal Memberships : ',
              style: Styles.textStyle6.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '1174',
              style: Styles.textStyle6.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
