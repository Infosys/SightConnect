import 'package:eye_care_for_all/apps/eyebank/common/dashboard/data/models/menu_item.dart';
import 'package:eye_care_for_all/apps/eyebank/common/home/presentation/page/eb_home_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_search/presentation/pages/eb_case_search_page.dart';
import 'package:eye_care_for_all/apps/eyebank/features/organ_inventory/pages/organ_inventory_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    const EbHomePage(),
    const EbCaseSearchPage(),
    const OrganInventoryPage(),
    Container(),
  ];

  final _menuItem = [
    MenuItem(
      id: 0,
      title: "Home",
      icon: FontAwesomeIcons.house,
    ),
    MenuItem(
      id: 1,
      title: "Case Record",
      icon: FontAwesomeIcons.bookMedical,
    ),
    MenuItem(
      id: 2,
      title: "Organ Inventory",
      icon: FontAwesomeIcons.boxesStacked,
    ),
    MenuItem(
      id: 3,
      title: "Delivery",
      icon: FontAwesomeIcons.truck,
    ),
  ];
}
