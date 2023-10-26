import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class PatientEyePreviewPage extends StatelessWidget {
  const PatientEyePreviewPage({super.key, required this.imageFile});
  final XFile? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black.withOpacity(0.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context, imageFile);
              },
              icon: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Image.file(
        File(imageFile!.path),
        fit: BoxFit.cover,
      ),
    );
  }
}
