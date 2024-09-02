import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_button_animation.dart';

class CustomHomeButtons extends StatelessWidget {
  const CustomHomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButtonAnimation(
          onPressed: () {},
          color: Colors.amber,
          child: Text(
            'Create New Membership',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 4.sp,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomButtonAnimation(
          onPressed: () {},
          color: Colors.blue,
          child: Text(
            'Create New Event',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 4.sp,
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomButtonAnimation(
          onPressed: () {},
          color: Colors.red,
          child: Text(
            'Create New Offer',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 4.sp,
            ),
          ),
        ),
      ],
    );
  }
}
