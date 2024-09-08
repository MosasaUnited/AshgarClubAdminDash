import 'package:ashgar_club_admin_dash/core/theme/styles.dart';
import 'package:ashgar_club_admin_dash/core/widgets/app_text_form_field.dart';
import 'package:ashgar_club_admin_dash/core/widgets/custom_button_animation.dart';
import 'package:ashgar_club_admin_dash/core/widgets/simple_leading.dart';
import 'package:ashgar_club_admin_dash/core/widgets/upload_image_button_text.dart';
import 'package:ashgar_club_admin_dash/core/widgets/upload_image_notice_text.dart';
import 'package:ashgar_club_admin_dash/feature/offers/presentation/widgets/offer_image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/offer_end_date.dart';
import '../widgets/offer_start_date.dart';

class CreateOfferScreen extends StatelessWidget {
  const CreateOfferScreen({super.key});

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
                  hintText: 'Enter the Offer title',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter the Offer title';
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
                height: 10.h,
              ),
              // Offer start date
              OfferStartDate(),
              SizedBox(
                height: 10.h,
              ),
              //   Offer end date
              OfferEndDate(),
              SizedBox(
                height: 10.h,
              ),
              //   Offer terms and Conditions
              AppTextFormField(
                  hintText: 'Enter the terms and conditions',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter the terms and conditions';
                    }
                  }),
              SizedBox(
                height: 15.h,
              ),
              //   Offer Image ( Optional )
              Text(
                'Please Upload Offer Images',
                style: Styles.textStyle6,
              ),
              SizedBox(
                height: 10.h,
              ),
              const OfferImagePicker(
                buttonText: UploadImageButtonText(
                  text: 'Upload Images here',
                ),
                noticeText:
                    UploadImageNoticeText(text: 'The Image is required'),
              ),

              SizedBox(
                height: 40.h,
              ),
              //   Offer Button
              CustomButtonAnimation(
                onPressed: () {},
                color: Colors.purple,
                child: const Text('Create Offer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
