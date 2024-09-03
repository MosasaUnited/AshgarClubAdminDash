import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_welcome_rich.dart';
import '../widgets/total_statics_chart.dart';
import '../widgets/total_statics_text.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomWelcomeRich(),
              SizedBox(
                height: 40.h,
              ),
              const TotalStaticsText(),
              const TotalStaticsChart(),
            ],
          ),
        ),
      ),
    );
  }
}
