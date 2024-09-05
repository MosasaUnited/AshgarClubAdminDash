import 'package:ashgar_club_admin_dash/feature/offers/presentation/widgets/create_new_offer_button.dart';
import 'package:ashgar_club_admin_dash/feature/offers/presentation/widgets/edit_offer_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersViewBody extends StatelessWidget {
  const OffersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CreateNewOfferButton(),
        SizedBox(
          width: 50.w,
        ),
        const EditOfferButton(),
      ],
    );
  }
}
