import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home View',
        style: Styles.textStyle30,
      ),
    );
  }
}
