import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_button_animation.dart';

class AddNewEvent extends StatelessWidget {
  const AddNewEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonAnimation(
      onPressed: () {},
      color: Colors.blue,
      child: Text(
        'Create New Event',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 4.sp,
        ),
      ),
    );
  }
}
