import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rabwat_alriyad/core/shared_preferences/prefs_keys.dart';
import 'package:rabwat_alriyad/core/shared_preferences/shared_prefs.dart';
import 'package:rabwat_alriyad/presentation/bottom_bar/bottom_bar.dart';
import 'package:rabwat_alriyad/presentation/cart/pages/card_screen.dart';
import 'package:rabwat_alriyad/presentation/contact_us/pages/contact_us_screen.dart';
import 'package:rabwat_alriyad/presentation/home_page/pages/home_page_screen.dart';
import 'package:rabwat_alriyad/presentation/products/pages/products_screen.dart';
import 'package:rabwat_alriyad/presentation/products/pages/additions_screen.dart';
import 'package:rabwat_alriyad/presentation/splash/splash_screen.dart';
import '../di/injection_container.dart';

class AppRouter {
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  // ignore: unused_field
  final _shellNavigatorKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get navigatorKey => _rootNavigatorKey;

  String get _initialLocation {
    final shared = sl<SharedPrefs>();
    final user = shared.getSecuredValue(key: PrefsKeys.userDetails);
    if (user != null) {
      return SplashScreen.routeName;
    } else {
      return SplashScreen
          .routeName; // Always start with splash, splash decides where to go
    }
  }

  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: _initialLocation,
    routes: [
      GoRoute(
        name: SplashScreen.routeName,
        path: SplashScreen.routeName,
        pageBuilder: (_, state) =>
            _buildPageWithTransition(const SplashScreen(), state),
      ),
      GoRoute(
        name: AdditionsScreen.routeName,
        path: AdditionsScreen.routeName,
        pageBuilder: (context, state) =>
            _buildPageWithTransition(const AdditionsScreen(), state),
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BottomBar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: HomePageScreen.routeName,
                path: HomePageScreen.routeName,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: HomePageScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: ProductsScreen.routeName,
                path: ProductsScreen.routeName,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: ProductsScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: CartScreen.routeName,
                path: CartScreen.routeName,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: CartScreen()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: ContactUsScreen.routeName,
                path: ContactUsScreen.routeName,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: ContactUsScreen()),
              ),
            ],
          ),
          
        ],
      ),
    ],
  );

  CustomTransitionPage _buildPageWithTransition(
    Widget child,
    GoRouterState state,
  ) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Define the transition animation
        const begin = Offset(1.0, 0.0); // Slide from right to left
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));

        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }
}
