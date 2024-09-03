import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_button_animation.dart';

class AddNewMembership extends StatelessWidget {
  const AddNewMembership({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonAnimation(
      onPressed: () {},
      color: Colors.amber,
      child: Text(
        'Create New Membership',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 4.sp,
        ),
      ),
    );
  }
}
