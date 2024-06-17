import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientDashboardProvider = ChangeNotifierProvider(
  (ref) => PatientDashboardProvider(),
);

class PatientDashboardProvider extends ChangeNotifier {
  bool isVisible = true;
  Timer? _debounce;

  ScrollController? scrollController;
  PatientDashboardProvider() : scrollController = ScrollController() {
    scrollController?.addListener(listen);
  }

  void listen() {
    final direction = scrollController?.position.userScrollDirection;
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (direction == ScrollDirection.forward) {
        isVisible = true;
      } else if (direction == ScrollDirection.reverse) {
        isVisible = false;
      }
      notifyListeners();
    });
  }

  void setVisibility(bool value) {
    isVisible = value;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    scrollController?.removeListener(listen);
    scrollController?.dispose();
    _debounce?.cancel(); // Cancel the timer on dispose
  }
}
