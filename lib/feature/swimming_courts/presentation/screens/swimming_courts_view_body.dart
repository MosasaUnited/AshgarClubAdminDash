import 'package:ashgar_club_admin_dash/feature/swimming_courts/presentation/screens/swimming_pool_one.dart';
import 'package:ashgar_club_admin_dash/feature/swimming_courts/presentation/screens/swimming_pool_three.dart';
import 'package:ashgar_club_admin_dash/feature/swimming_courts/presentation/screens/swimming_pool_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:segmented_button_slide/segmented_button_slide.dart';

import '../../../../core/theme/colors.dart';

class SwimmingCourtsViewBody extends StatefulWidget {
  const SwimmingCourtsViewBody({super.key});

  @override
  State<SwimmingCourtsViewBody> createState() => _SwimmingCourtsViewBodyState();
}

class _SwimmingCourtsViewBodyState extends State<SwimmingCourtsViewBody> {
  int selectedOption = 0;

  void toggleFootballCourt() {
    setState(() {
      selectedOption = (selectedOption + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SegmentedButtonSlide(
          selectedEntry: selectedOption,
          onChange: (selected) => setState(
            () => selectedOption = selected,
          ),
          curve: Curves.bounceInOut,
          entries: const [
            SegmentedButtonSlideEntry(
              label: 'Pool 1',
            ),
            SegmentedButtonSlideEntry(
              label: 'Pool 2',
            ),
            SegmentedButtonSlideEntry(
              label: 'Pool 3',
            ),
          ],
          colors: const SegmentedButtonSlideColors(
            barColor: Colors.transparent,
            backgroundSelectedColor: Colors.transparent,
          ),
          slideShadow: const [
            BoxShadow(
              color: MyColors.myLightBlue,
            ),
          ],
          margin: const EdgeInsets.all(8),
          height: 50.h,
          padding: const EdgeInsets.all(8),
          borderRadius: BorderRadius.circular(16),
          selectedTextStyle: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 13.sp,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
          unselectedTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            color: MyColors.myTeal,
            fontSize: 12.sp,
          ),
          hoverTextStyle: TextStyle(
            color: Colors.redAccent,
            fontSize: 11.sp,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              if (selectedOption == 0)
                const SwimmingPoolOne()
              else if (selectedOption == 1)
                const SwimmingPoolTwo()
              else
                const SwimmingPoolThree()
            ],
          ),
        ),
      ],
    );
  }
}
