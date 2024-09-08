import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/styles.dart';

class OfferEndDate extends StatelessWidget {
  OfferEndDate(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.backgroundColor});
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Color? backgroundColor;

  final pickDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: pickDateController,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: MyColors.appColor,
                width: 1.3.w,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: MyColors.myGrey,
                width: 1.3.w,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.3.w,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        hintStyle: Styles.textStyle6.copyWith(color: Colors.grey),
        hintText: 'Select the End date',
        filled: true,
        fillColor: backgroundColor ?? MyColors.myOffWhite,
      ),
      style: Styles.textStyle14.copyWith(
        color: Colors.black87,
      ),
      readOnly: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Select the Start date';
        }
        return null;
      },
      onTap: () async {
        final selectDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.parse('2038-01-01'),
        ).then((value) {
          pickDateController.text = DateFormat.yMMMMEEEEd().format(value!);
        });
        if (selectDate != null) {
          final formattedDate = selectDate.format(context);
          pickDateController.text = formattedDate;
        } else if (selectDate.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Date not Selected',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              backgroundColor: Colors.redAccent,
            ),
          );
        }
      },
    );
  }
}
