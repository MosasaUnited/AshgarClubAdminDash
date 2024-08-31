import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Notifications View',
        style: Styles.textStyle30,
      ),
    );
  }
}
