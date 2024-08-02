import 'package:eye_care_for_all/apps/eyebank/common/dashboard/data/models/menu_item.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/pages/eb_case_register_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebDashboardProvider = ChangeNotifierProvider<EbDashboardProvider>(
  (ref) => EbDashboardProvider(),
);

class EbDashboardProvider extends ChangeNotifier {
  final List<Widget> _pages = [
    Container(),
    const EBCaseRegisterPage(),
    Container(),
    Container(),
  ];

  final _menuItem = [
    MenuItem(
      id: 0,
      title: "Dashboard",
      icon: Icons.home_filled,
    ),
    MenuItem(
      id: 1,
      title: "Case Registration",
      icon: Icons.file_present,
    ),
    MenuItem(
      id: 2,
      title: "Organ Inventory",
      icon: Icons.safety_check,
    ),
    MenuItem(
      id: 3,
      title: "Delivery",
      icon: Icons.delivery_dining,
    ),
  ];

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  List<Widget> get pages => _pages;
  List<MenuItem> get menuItem => _menuItem;

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
