import 'package:flutter/material.dart';

class DrawerMenuItem {
  final String title;
  final IconData icon;
  const DrawerMenuItem({
    required this.title,
    required this.icon,
  });
}

class DrawerMenuItems {
  static const DrawerMenuItem home =
      DrawerMenuItem(title: "Home", icon: Icons.home);
  static const DrawerMenuItem profile =
      DrawerMenuItem(title: "Profile", icon: Icons.person);
  static const DrawerMenuItem appointments =
      DrawerMenuItem(title: "Appointments", icon: Icons.calendar_today);
  static const DrawerMenuItem prescriptions =
      DrawerMenuItem(title: "Prescriptions", icon: Icons.receipt);
  static const DrawerMenuItem accessibilities =
      DrawerMenuItem(title: "Accessibilities", icon: Icons.accessibility);
  static const DrawerMenuItem about =
      DrawerMenuItem(title: "About", icon: Icons.info);
  static const DrawerMenuItem termOfUse =
      DrawerMenuItem(title: "Term of Use", icon: Icons.description);
  static const DrawerMenuItem privacyPolicy =
      DrawerMenuItem(title: "Privacy Policy", icon: Icons.privacy_tip);
  static const DrawerMenuItem help =
      DrawerMenuItem(title: "Help", icon: Icons.help);
  static const List<DrawerMenuItem> all = [
    home,
    profile,
    appointments,
    prescriptions,
    accessibilities,
    about,
    termOfUse,
    privacyPolicy,
    help
  ];
}
