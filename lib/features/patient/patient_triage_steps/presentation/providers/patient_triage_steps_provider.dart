import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageStepsProvider = ChangeNotifierProvider(
  /// // // inject all steps
  (ref) => TriageStepsProvider(),
);

class TriageStepsProvider extends ChangeNotifier {
//api post req
}
