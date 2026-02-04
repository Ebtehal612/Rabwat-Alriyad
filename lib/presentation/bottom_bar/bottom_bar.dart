import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rabwat_alriyad/core/localization/app_localizations.dart';
import 'package:rabwat_alriyad/core/theme/palette.dart';

class BottomBar extends StatelessWidget {
  static const routeName = '/bottom-bar';
  final StatefulNavigationShell navigationShell;

  const BottomBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            offset: const Offset(0, -4),
            blurRadius: 10,
          ),
        ]),
        child: NavigationBar(
          height: 70.h,
          elevation: 0,
          backgroundColor: Colors.white,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home, color: Palette.dayBreakBlue.color7),
              label: AppLocalizations.of(context)!.home,
            ),
            NavigationDestination(
              icon: const Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person, color:  Palette.dayBreakBlue.color7),
              label: AppLocalizations.of(context)!.products,
            ),
          ],
        ),
      ),
    );
  }
}
