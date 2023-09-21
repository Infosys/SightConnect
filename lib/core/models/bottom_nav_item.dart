import 'package:eye_care_for_all/core/constants/app_icon.dart';

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
  static BottomNavItem home = BottomNavItem(
    name: "Home",
    svgImage: AppIcon.navHome,
    initialScale: 1,
    isSelected: true,
  );
  static BottomNavItem service = BottomNavItem(
    name: "Service",
    svgImage: AppIcon.navService,
    initialScale: 1,
  );
  static BottomNavItem triage = BottomNavItem(
    name: "Triage",
    svgImage: AppIcon.navTriage,
    initialScale: 1,
  );
  static BottomNavItem notification = BottomNavItem(
    name: "Notification",
    svgImage: AppIcon.navNotification,
    initialScale: 1,
  );
  static BottomNavItem drawer = BottomNavItem(
    name: "Drawer",
    svgImage: AppIcon.navDrawer,
    initialScale: 0.8,
  );
  static List<BottomNavItem> all = [
    home,
    service,
    triage,
    notification,
    drawer
  ];
}
