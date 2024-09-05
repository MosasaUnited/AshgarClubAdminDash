import 'package:ashgar_club_admin_dash/core/constants/icon_assets.dart';
import 'package:ashgar_club_admin_dash/feature/football_courts/presentation/football_courts_view.dart';
import 'package:ashgar_club_admin_dash/feature/home/presentation/home_view.dart';
import 'package:ashgar_club_admin_dash/feature/main/presentation/screens/side_menu_screen.dart';
import 'package:ashgar_club_admin_dash/feature/memberships/presentation/memberships_view.dart';
import 'package:ashgar_club_admin_dash/feature/notifications/presentation/notifications_view.dart';
import 'package:ashgar_club_admin_dash/feature/offers/presentation/offers_view.dart';
import 'package:ashgar_club_admin_dash/feature/swimming_courts/presentation/swimming_courts_view.dart';
import 'package:ashgar_club_admin_dash/feature/x_pay/presentation/x_pay_view.dart';
import 'package:flutter/material.dart';

import '../../../tennis_courts/presentation/tennis_courts_view.dart';

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
    const TennisCourtsView(),
    const OffersView(),
    const NotificationsView(),
    const XPayView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset(IconAssets.appLogo),
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                // Desktop Or Web
                return Row(
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
                );
              } else {
                return Stack(
                  children: [
                    _screens[_selectedIndex],
                    Positioned(
                      top: 0,
                      left: 0,
                      child: IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(Icons.menu),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
        drawer: Drawer(
          child: SideMenuScreen(onItemTapped: _onItemTapped),
        ),
      ),
    );
  }
}
