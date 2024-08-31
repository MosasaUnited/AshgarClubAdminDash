import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class SwimmingCourtsViewBody extends StatelessWidget {
  const SwimmingCourtsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Swimming Courts View',
        style: Styles.textStyle30,
      ),
    );
  }
}
