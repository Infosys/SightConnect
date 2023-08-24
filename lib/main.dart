import 'package:eye_care_for_all/app/app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum ROLE { DOCTOR, PATIENT, VISION_GUARDIAN }

var role = ROLE.PATIENT;
Future<void> main() async {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
