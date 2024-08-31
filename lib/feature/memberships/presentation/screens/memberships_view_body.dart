import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class MembershipsViewBody extends StatelessWidget {
  const MembershipsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Memberships View',
        style: Styles.textStyle30,
      ),
    );
  }
}
