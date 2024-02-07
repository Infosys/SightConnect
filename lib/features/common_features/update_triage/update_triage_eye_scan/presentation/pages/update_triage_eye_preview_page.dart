import 'dart:io';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

class UpdateTriageEyePreviewPage extends StatelessWidget {
  const UpdateTriageEyePreviewPage({super.key, required this.imageFile});
  final XFile imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Image.file(
              File(imageFile.path),
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: AppColor.black.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop(null);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: AppColor.red,
                    ),
                    icon: const Icon(Icons.cancel, size: 22),
                    label:  Text(context.loc!.discardButton),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop(imageFile);
                    },
                    icon: const Icon(Icons.check_circle, size: 22),
                    label:  Text(context.loc!.confirmButton),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
