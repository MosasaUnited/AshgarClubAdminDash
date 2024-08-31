import 'package:ashgar_club_admin_dash/feature/football_courts/presentation/football_courts_view.dart';
import 'package:ashgar_club_admin_dash/feature/home/presentation/home_view.dart';
import 'package:ashgar_club_admin_dash/feature/main/presentation/screens/side_menu_screen.dart';
import 'package:ashgar_club_admin_dash/feature/memberships/presentation/memberships_view.dart';
import 'package:ashgar_club_admin_dash/feature/notifications/presentation/notifications_view.dart';
import 'package:ashgar_club_admin_dash/feature/offers/presentation/offers_view.dart';
import 'package:ashgar_club_admin_dash/feature/swimming_courts/presentation/swimming_courts_view.dart';
import 'package:ashgar_club_admin_dash/feature/technical_support/presentation/technical_support_view.dart';
import 'package:ashgar_club_admin_dash/feature/x_pay/presentation/x_pay_view.dart';
import 'package:flutter/material.dart';

class MainScreenBody extends StatefulWidget {
  const MainScreenBody({super.key});

  @override
  State<MainScreenBody> createState() => _MainScreenBodyState();
}

class _MainScreenBodyState extends State<MainScreenBody> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeView(),
    const MembershipsView(),
    const FootballCourtsView(),
    const SwimmingCourtsView(),
    const OffersView(),
    const NotificationsView(),
    const TechnicalSupportView(),
    const XPayView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                child: SideMenuScreen(onItemTapped: _onItemTapped),
              ),
            ),
            Expanded(
              flex: 7,
              child: SizedBox(
                child: _screens[_selectedIndex],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
