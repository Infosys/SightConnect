import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientHomeProvider = ChangeNotifierProvider.autoDispose(
  (ref) => PatientHomeProvider(),
);

class PatientHomeProvider extends ChangeNotifier {}
