import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';

var patientHomeProvider = ChangeNotifierProvider(
  (ref) => PatientHomeProvider(),
);

class PatientHomeProvider extends ChangeNotifier {
  LocationData? data;
  Location location = Location();

  PatientHomeProvider() {
    init();
  }

  Future<void> init() async {
    try {
      location = Location();
      final permission = await location.requestPermission();
      if (permission == PermissionStatus.granted) {
        data = await location.getLocation();
      } else if (permission == PermissionStatus.denied) {
        Fluttertoast.showToast(
          msg: "Location permission required for nearby vision center access",
        );
      } else if (permission == PermissionStatus.deniedForever) {
        Fluttertoast.showToast(
          msg: "Location permission required for nearby vision center access",
        );
      }
    } catch (e) {
      logger.e(e);
      data = null;
    }
    notifyListeners();
  }
}
