import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class FootballCourtsViewBody extends StatelessWidget {
  const FootballCourtsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Football View',
        style: Styles.textStyle30,
      ),
    );
  }
}
