import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final IconData icon;
  const MenuItem({
    required this.title,
    required this.icon,
  });
}

class MenuItems {
  static const MenuItem home = MenuItem(title: "Home", icon: Icons.home);
  static const MenuItem profile =
      MenuItem(title: "Profile", icon: Icons.person);
  static const MenuItem appointments =
      MenuItem(title: "Appointments", icon: Icons.calendar_today);
  static const MenuItem prescriptions =
      MenuItem(title: "Prescriptions", icon: Icons.receipt);
  static const MenuItem accessibilities =
      MenuItem(title: "Accessibilities", icon: Icons.accessibility);
  static const MenuItem about = MenuItem(title: "About", icon: Icons.info);
  static const MenuItem termOfUse =
      MenuItem(title: "Term of Use", icon: Icons.description);
  static const MenuItem privacyPolicy =
      MenuItem(title: "Privacy Policy", icon: Icons.privacy_tip);
  static const MenuItem help = MenuItem(title: "Help", icon: Icons.help);
  static const List<MenuItem> all = [
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
