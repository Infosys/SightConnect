import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraPermissionService {
  static Future<bool> checkPermissions(
    BuildContext context,
  ) async {
    final isGranted = await isCameraPermissionGranted();

    if (!isGranted) {
      logger.d('Camera permission not granted. Requesting permission');
      final cameraStatus = await Permission.camera.request();
      final audioStatus = await Permission.microphone.request();
      if (cameraStatus.isGranted && audioStatus.isGranted) {
        logger.d('Camera permission granted.');

        return true;
      } else {
        if (context.mounted) {
          logger.d('Camera permission not granted. Opening settings');
          await _showCameraSettingsDialog(context);
        }
        logger.d('Camera permission not granted.');
        if(context.mounted) return await checkPermissions(context);
      }
    }
    return isGranted;
  }

  static Future<bool> isCameraPermissionGranted() async {
    PermissionStatus cameraStatus = await Permission.camera.status;
    PermissionStatus audioStatus = await Permission.microphone.status;
    return cameraStatus.isGranted && audioStatus.isGranted;
  }

  static _showCameraSettingsDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        title: const Text('Permissions required'),
        content: const Text(
            'Please enable camera and microphone permissions in the app settings.'),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () async {
              await openAppSettings();
              await Future.delayed(const Duration(seconds: 1));
              if (context.mounted) {
                Navigator.of(context).pop();
                await checkPermissions(context);
              }
            },
          ),
        ],
      ),
    );
  }
}