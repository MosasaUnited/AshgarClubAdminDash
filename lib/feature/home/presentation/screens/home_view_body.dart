import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_home_buttons.dart';
import '../widgets/custom_welcome_rich.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CustomWelcomeRich(),
            SizedBox(
              height: 40.h,
            ),
            const CustomHomeButtons(),
          ],
        ),
      ),
    );
  }
}
