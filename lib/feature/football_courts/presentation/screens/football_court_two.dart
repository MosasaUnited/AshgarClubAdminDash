import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class FootballCourtTwo extends StatelessWidget {
  const FootballCourtTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Court 2',
        style: Styles.textStyle30,
      ),
    );
  }
}
