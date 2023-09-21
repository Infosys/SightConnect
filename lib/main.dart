import 'package:camera/camera.dart';
import 'package:eye_care_for_all/app/app.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

enum ROLE { DOCTOR, PATIENT, VISION_GUARDIAN }

var role = ROLE.PATIENT;
var logger = Logger();
var cameras = <CameraDescription>[];
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
