import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class FootballCourtThree extends StatelessWidget {
  const FootballCourtThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Court 3',
        style: Styles.textStyle30,
      ),
    );
  }
}
