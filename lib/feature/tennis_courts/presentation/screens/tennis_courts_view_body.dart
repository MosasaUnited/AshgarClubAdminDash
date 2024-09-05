import 'package:ashgar_club_admin_dash/feature/tennis_courts/presentation/screens/tennis_court_one.dart';
import 'package:ashgar_club_admin_dash/feature/tennis_courts/presentation/screens/tennis_court_three.dart';
import 'package:ashgar_club_admin_dash/feature/tennis_courts/presentation/screens/tennis_court_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:segmented_button_slide/segmented_button_slide.dart';

import '../../../../core/theme/colors.dart';

class TennisCourtsViewBody extends StatefulWidget {
  const TennisCourtsViewBody({super.key});

  @override
  State<TennisCourtsViewBody> createState() => _TennisCourtsViewBodyState();
}

class _TennisCourtsViewBodyState extends State<TennisCourtsViewBody> {
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
          curve: Curves.easeInOut,
          entries: const [
            SegmentedButtonSlideEntry(
              label: 'Court 1',
            ),
            SegmentedButtonSlideEntry(
              label: 'Court 2',
            ),
            SegmentedButtonSlideEntry(
              label: 'Court 3',
            ),
          ],
          colors: const SegmentedButtonSlideColors(
            barColor: Colors.transparent,
            backgroundSelectedColor: Colors.transparent,
          ),
          slideShadow: const [
            BoxShadow(
              color: MyColors.myYellow,
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
            color: MyColors.myLightBlue,
          ),
          unselectedTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            color: MyColors.myTeal,
            fontSize: 12.sp,
          ),
          hoverTextStyle: TextStyle(
            color: Colors.deepOrange,
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
                const TennisCourtOne()
              else if (selectedOption == 1)
                const TennisCourtTwo()
              else
                const TennisCourtThree()
            ],
          ),
        ),
      ],
    );
  }
}
