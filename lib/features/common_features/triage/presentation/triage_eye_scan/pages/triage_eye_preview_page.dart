import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

class TriageEyePreviewPage extends StatelessWidget {
  const TriageEyePreviewPage({super.key, required this.imageFile});
  final XFile imageFile;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.file(
              File(imageFile.path),
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
                  Flexible(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pop(null);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: AppColor.red,
                      ),
                      icon: const Icon(Icons.cancel, size: 22),
                      label: Text(
                        loc.discardButton,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(context).pop(imageFile);
                      },
                      icon: const Icon(Icons.check_circle, size: 22),
                      label: Text(
                        loc.confirmButton,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
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
