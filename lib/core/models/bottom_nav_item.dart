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
    svgImage: "assets/icons/drawer_home.svg",
    initialScale: 1,
    isSelected: true,
  );
  static BottomNavItem service = BottomNavItem(
    name: "Appointments",
    svgImage: "assets/nav_icons/appointments.svg",
    initialScale: 1,
  );
  static BottomNavItem triage = BottomNavItem(
    name: "Eye Test",
    svgImage: "assets/nav_icons/Assessmentdefault.svg",
    initialScale: 1,
  );
  static BottomNavItem notification = BottomNavItem(
    name: "Profile",
    svgImage: AppIcon.navProfile,
    initialScale: 1,
  );
  static BottomNavItem drawer = BottomNavItem(
    name: "Notifications",
    svgImage: "assets/nav_icons/notificatoindefault.svg",
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
