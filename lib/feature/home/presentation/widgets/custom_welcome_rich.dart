import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class CustomWelcomeRich extends StatelessWidget {
  const CustomWelcomeRich({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Welcome ',
        style: Styles.textStyle20.copyWith(
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: 'Admin',
            style: Styles.textStyle20.copyWith(
              color: Colors.amberAccent,
            ),
          ),
        ],
      ),
    );
  }
}
