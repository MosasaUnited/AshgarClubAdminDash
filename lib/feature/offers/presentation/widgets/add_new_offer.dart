import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_button_animation.dart';

class AddNewOffer extends StatelessWidget {
  const AddNewOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonAnimation(
      onPressed: () {},
      color: Colors.red,
      child: Text(
        'Create New Offer',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 4.sp,
        ),
      ),
    );
  }
}
