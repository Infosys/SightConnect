import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientDashboardProvider = ChangeNotifierProvider(
  (ref) => PatientDashboardProvider(),
);

class PatientDashboardProvider extends ChangeNotifier {
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  // List<Widget> pages = [
  //   const PatientHomePage(),
  //   const PatientServicesPage(),
  //   const PatientTriagePage(),
  //   const PatientNotificationPage(),
  //   const AppDrawer()
  // ];
}
