/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_icon.dart';

import '../../../../l10n/app_localizations.dart';

class BottomNavItem {
  String name;
  String svgImage;
  double initialScale;
  bool isSelected;
  BottomNavItem({
    required this.name,
    required this.svgImage,
    this.initialScale = 1.0,
    this.isSelected = false,
  });
}

class BottomNavItems {
  static BottomNavItem home(AppLocalizations loc) => BottomNavItem(
        name: loc.homeButton,
        svgImage: "assets/icons/drawer_home.svg",
        initialScale: 1,
        isSelected: true,
      );
  static BottomNavItem service(AppLocalizations loc) => BottomNavItem(
        name: loc.bottomNavItemServices,
        svgImage: AppIcon.navService,
        initialScale: 1,
      );
  static BottomNavItem triage(AppLocalizations loc) => BottomNavItem(
        name: loc.bottomNavItemEyeTest,
        svgImage: "assets/nav_icons/Assessmentdefault.svg",
        initialScale: 1,
      );
  static BottomNavItem notification(AppLocalizations loc) => BottomNavItem(
        name: loc.profileTitle,
        svgImage: AppIcon.navProfile,
        initialScale: 1,
      );
  static BottomNavItem drawer(AppLocalizations loc) => BottomNavItem(
        name: loc.notificationsTitle,
        svgImage: "assets/nav_icons/notificatoindefault.svg",
        initialScale: 0.8,
      );
  static List<BottomNavItem> all(AppLocalizations loc) => [
        home(loc),
        service(loc),
        triage(loc),
        notification(loc),
        drawer(loc),
      ];
}
