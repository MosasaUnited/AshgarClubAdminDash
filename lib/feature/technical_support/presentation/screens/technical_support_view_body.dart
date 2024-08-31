import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class TechnicalSupportViewBody extends StatelessWidget {
  const TechnicalSupportViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Technical Support View',
        style: Styles.textStyle30,
      ),
    );
  }
}
