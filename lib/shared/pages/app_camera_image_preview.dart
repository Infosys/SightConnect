import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

class AppCameraImagePreview extends StatelessWidget {
  const AppCameraImagePreview({super.key, required this.imageFile});
  final XFile imageFile;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
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
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(context) * 0.05,
                vertical: AppSize.height(context) * 0.02,
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
