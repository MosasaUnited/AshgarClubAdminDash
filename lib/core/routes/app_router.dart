import 'package:ashgar_club_admin_dash/feature/home/presentation/home_view.dart';
import 'package:ashgar_club_admin_dash/feature/main/presentation/main_screen.dart';
import 'package:ashgar_club_admin_dash/feature/offers/presentation/screens/create_offer_screen.dart';
import 'package:ashgar_club_admin_dash/feature/offers/presentation/screens/edit_offer_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homePage = '/home';
  static const String createOfferScreen = '/createOfferScreen';
  static const String editOfferScreen = '/editOfferScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeView(),
      ),
      // Offers
      GoRoute(
        path: '/createOfferScreen',
        builder: (context, state) => const CreateOfferScreen(),
      ),
      GoRoute(
        path: '/editOfferScreen',
        builder: (context, state) => const EditOfferScreen(),
      ),
    ],
  );
}
