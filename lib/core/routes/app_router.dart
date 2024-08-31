import 'package:ashgar_club_admin_dash/feature/home/presentation/home_view.dart';
import 'package:ashgar_club_admin_dash/feature/main/presentation/main_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homePage = '/home';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
