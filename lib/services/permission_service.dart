/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraPermissionService {
  static Future<bool> checkPermissions(
    BuildContext context,
  ) async {
    PermissionStatus cameraStatus = await Permission.camera.status;
    if (!cameraStatus.isGranted) {
      final cameraStatus = await Permission.camera.request();
      if (cameraStatus.isGranted) {
        return true;
      } else {
        if (context.mounted) {
          await _showCameraSettingsDialog(context);
        }
        if (context.mounted) return await checkPermissions(context);
      }
    }
    return cameraStatus.isGranted;
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
        content:
            const Text('Please enable camera permissions in the app settings.'),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () async {
              await openAppSettings();
              await Future.delayed(const Duration(seconds: 1));
              if (context.mounted) {
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
    );
  }
}
