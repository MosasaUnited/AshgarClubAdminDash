import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/custom_button_animation.dart';

class CreateNewOfferButton extends StatelessWidget {
  const CreateNewOfferButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButtonAnimation(
      onPressed: () {
        Future.delayed(const Duration(milliseconds: 400), () {
          GoRouter.of(context).push(AppRouter.createOfferScreen);
        });
      },
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
