import 'package:ashgar_club_admin_dash/core/constants/icon_assets.dart';
import 'package:flutter/material.dart';

import '../models/side_menu_model.dart';

class SideMenuData {
  final menu = [
    SideMenuModel(icon: Image.asset(IconAssets.home), title: 'Home'),
    SideMenuModel(
        icon: Image.asset(IconAssets.notifications), title: 'Memberships'),
    SideMenuModel(
        icon: Image.asset(IconAssets.footballCourts), title: 'Football Courts'),
    SideMenuModel(
        icon: Image.asset(IconAssets.swimmingCourts), title: 'Swimming Courts'),
    SideMenuModel(
        icon: Image.asset(IconAssets.offers), title: 'Special Offers'),
    SideMenuModel(
        icon: Image.asset(IconAssets.notifications), title: 'Notify Member'),
    SideMenuModel(
        icon: Image.asset(IconAssets.techSupport), title: 'Technical Support'),
    SideMenuModel(
        icon: Image.asset(IconAssets.xPayNotify), title: 'X Pay Notifications'),
  ];
}
