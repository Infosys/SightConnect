import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageProvider =
    ChangeNotifierProvider((ref) => PatientTriageProvider());

class PatientTriageProvider extends ChangeNotifier {}
