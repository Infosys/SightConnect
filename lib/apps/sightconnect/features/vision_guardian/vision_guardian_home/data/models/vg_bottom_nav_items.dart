/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/l10n/app_localizations.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';

enum VisionGuardianBottomNavItemId {
  home,
  eye_assessment,
  notifications,
  profile,
}

class VisionGuardianBottomNavItem {
  VisionGuardianBottomNavItemId id;
  String name;
  String svgImage;
  double initialScale;
  bool isSelected;
  VisionGuardianBottomNavItem({
    required this.id,
    required this.name,
    required this.svgImage,
    this.initialScale = 1.0,
    this.isSelected = false,
  });
}

class VisionGuardianBottomNavItems {
  static List<VisionGuardianBottomNavItem> getAll(AppLocalizations loc) {
    return [
      VisionGuardianBottomNavItem(
        id: VisionGuardianBottomNavItemId.home,
        name: loc.appDrawerHome,
        svgImage: AppIcon.navHome,
        initialScale: 1,
        isSelected: true,
      ),
      VisionGuardianBottomNavItem(
        id: VisionGuardianBottomNavItemId.eye_assessment,
        name: loc.vgEyeAssessment,
        svgImage: AppIcon.navTriage,
        initialScale: 1,
      ),
      VisionGuardianBottomNavItem(
        id: VisionGuardianBottomNavItemId.notifications,
        name: loc.notificationsTitle,
        svgImage: AppIcon.navNotification,
        initialScale: 1,
      ),
      VisionGuardianBottomNavItem(
        id: VisionGuardianBottomNavItemId.profile,
        name: loc.appDrawerMyProfile,
        svgImage: AppIcon.navProfile,
        initialScale: 1,
      ),
    ];
  }
}
