import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientDashboardProvider = ChangeNotifierProvider(
  (ref) => PatientDashboardProvider(),
);

class PatientDashboardProvider extends ChangeNotifier {
  int currentIndex = 0;
  bool isVisible = false;

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  ScrollController? scrollController;
  PatientDashboardProvider() : scrollController = ScrollController() {
    scrollController?.addListener(listen);
  }
  void listen() {
    final direction = scrollController?.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      isVisible = true;
    } else if (direction == ScrollDirection.reverse) {
      isVisible = false;
    }
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    scrollController?.removeListener(listen);
    scrollController?.dispose();
  }
}
