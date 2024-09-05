import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/custom_button_animation.dart';

class EditOffer extends StatelessWidget {
  const EditOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonAnimation(
      onPressed: () {
        GoRouter.of(context).push(AppRouter.editOfferScreen);
      },
      color: Colors.green,
      child: Text(
        'Edit Offer',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 4.sp,
        ),
      ),
    );
  }
}
