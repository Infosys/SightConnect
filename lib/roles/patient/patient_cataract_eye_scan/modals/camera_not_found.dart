import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

void showCameraNotFound(BuildContext context) {
  showGeneralDialog(
    barrierDismissible: true,
    barrierLabel: '',
    barrierColor: AppColor.kBlackOpacity, //black 38
    transitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (ctx, anim1, anim2) => AlertDialog(
      title: Image.asset(
        AppImages.warning,
        height: 40,
        width: 40,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Camera Attachment not Detected",
            style: applyRobotoFont(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Connect the device to the mobile using the instructions given in the device.',
            style: applyRobotoFont(
              fontSize: 14,
            ),
          )
        ],
      ),
      elevation: 2,
      actions: [
        ElevatedButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
    transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 4 * anim1.value,
        sigmaY: 4 * anim1.value,
      ),
      child: FadeTransition(
        opacity: anim1,
        child: child,
      ),
    ),
    context: context,
  );
}
