import 'package:ashgar_club_admin_dash/core/theme/colors.dart';
import 'package:ashgar_club_admin_dash/feature/main/data/side_menu_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/styles.dart';

class SideMenuScreen extends StatefulWidget {
  const SideMenuScreen({super.key, required this.onItemTapped});

  final Function(int) onItemTapped;

  @override
  State<SideMenuScreen> createState() => _SideMenuScreenState();
}

class _SideMenuScreenState extends State<SideMenuScreen> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 70.h, horizontal: 5.w),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.menu.length,
              itemBuilder: (context, index) => buildMenuEntry(data, index),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    final isSelected = selectIndex == index;
    return InkWell(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
        widget.onItemTapped(index);
        if (MediaQuery.of(context).size.width <= 600) {
          Navigator.of(context).pop();
        }
      },
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 14.h),
            child: SizedBox(
              height: 30.h,
              width: 30.w,
              child: data.menu[index].icon,
            ),
          ),
          Flexible(
            child: Text(
              data.menu[index].title,
              style: Styles.textStyle6.copyWith(
                color: isSelected ? MyColors.myYellow : MyColors.appColor,
                fontWeight: isSelected ? FontWeight.w900 : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
