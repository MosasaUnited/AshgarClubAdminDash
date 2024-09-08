import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes/app_router.dart';
import 'core/theme/theme_data_style.dart';

class AshgarClubAdmin extends StatelessWidget {
  const AshgarClubAdmin({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Ashgar Club Admin Dashboard',
        themeMode: ThemeMode.system,
        theme: ThemeDataStyle.dark,
        darkTheme: ThemeDataStyle.dark,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
