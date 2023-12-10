import 'package:eye_care_for_all/core/constants/app_icon.dart';

class VisionGuardianBottomNavItem {
  String name;
  String svgImage;
  double initialScale;
  bool isSelected;
  VisionGuardianBottomNavItem({
    required this.name,
    required this.svgImage,
    this.initialScale = 1.0,
    this.isSelected = false,
  });
}

class VisionGuardianBottomNavItems {
  static VisionGuardianBottomNavItem home = VisionGuardianBottomNavItem(
    name: "Home",
    svgImage: AppIcon.navHome,
    initialScale: 1,
    isSelected: true,
  );
  static VisionGuardianBottomNavItem eye_assessment = VisionGuardianBottomNavItem(
    name: "Eye Assessment",
    svgImage: AppIcon.acuityTest,
    initialScale: 1,
  );
  static VisionGuardianBottomNavItem notification = VisionGuardianBottomNavItem(
    name: "Notification",
    svgImage: AppIcon.navNotification,
    initialScale: 1,
  );
  static VisionGuardianBottomNavItem profile = VisionGuardianBottomNavItem(
    name: "My Profile",
    svgImage: AppIcon.navProfile,
    initialScale: 1,
  );

  static List<VisionGuardianBottomNavItem> all = [
    home,
    eye_assessment,
    notification,
    profile,
  ];
}
