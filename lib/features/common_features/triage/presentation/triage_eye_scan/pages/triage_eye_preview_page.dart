import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class TriageEyePreviewPage extends StatelessWidget {
  const TriageEyePreviewPage({super.key, required this.imageFile});
  final XFile? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            // child: Image.asset(AppImages.aboutUs)
            child: Image.file(
              File(imageFile!.path),
              fit: BoxFit.cover,
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
                    label: const Text("Discard"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop(imageFile);
                    },
                    icon: const Icon(Icons.check_circle, size: 22),
                    label: const Text("Confirm"),
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
