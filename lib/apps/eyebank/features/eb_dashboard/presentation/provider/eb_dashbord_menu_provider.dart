import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/pages/eb_case_records_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_dashboard/data/models/menu_item.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_home/presentation/page/eb_home_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebDashboardMenuProvider = ChangeNotifierProvider<EbDashboardMenuProvider>(
  (ref) => EbDashboardMenuProvider(),
);

class EbDashboardMenuProvider extends ChangeNotifier {
  int _selectedMenuItem = 0;
  int get selectedMenuItem => _selectedMenuItem;
  List<Widget> get pages => _pages;
  List<MenuItem> get menuItem => _menuItem;

  EbDashboardMenuProvider();

  void setSelectedMenuItem(int index) {
    _selectedMenuItem = index;
    notifyListeners();
  }

  final List<Widget> _pages = [
    const EBHomePage(),
    const EBCaseRecordsPage(),
    // const OrganInventoryPage(),
    Scaffold(
      appBar: AppBar(
        title: const Text("Organ Inventory"),
      ),
      body: const Center(
        child: Text("No Organ Inventory"),
      ),
    ),
    Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
      ),
      body: const Center(
        child: Text("No Notification"),
      ),
    ),
  ];

  final _menuItem = [
    MenuItem(
      id: 0,
      title: "Home",
      icon: Icons.home,
    ),
    MenuItem(
      id: 1,
      title: "Recipient Records",
      icon: Icons.list,
    ),
    MenuItem(
      id: 2,
      title: "Inventory",
      icon: Icons.inventory,
    ),
    MenuItem(
      id: 3,
      title: "Notification",
      icon: Icons.notifications,
    ),
  ];
}
