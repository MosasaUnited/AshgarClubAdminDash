import 'package:ashgar_club_admin_dash/core/widgets/custom_button_animation.dart';
import 'package:ashgar_club_admin_dash/core/widgets/simple_leading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_form_field.dart';

class EditOfferScreen extends StatelessWidget {
  const EditOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SimpleLeading(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Offer title
              AppTextFormField(
                  hintText: 'Enter the Offer Id',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter the Offer id';
                    }
                  }),
              SizedBox(
                height: 10.h,
              ),
              //   Offer Description
              AppTextFormField(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 50.w, vertical: 100.h),
                  hintText: 'Enter the description',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter the Offer description';
                    }
                  }),
              SizedBox(
                height: 20.h,
              ),
              CustomButtonAnimation(
                onPressed: () {},
                color: Colors.pink,
                child: const Text('Update Offer'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
