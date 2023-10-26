import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class PatientEyePreviewPage extends StatelessWidget {
  const PatientEyePreviewPage({super.key, required this.imageFile});
  final XFile? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      bottomNavigationBar: BottomAppBar(
        color: AppColor.black.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(null);
                },
                style: TextButton.styleFrom(
                  foregroundColor: AppColor.red,
                ),
                child: const Text("Discard"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(imageFile);
                },
                child: const Text("Save & Continue"),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Image.file(
          File(imageFile!.path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}