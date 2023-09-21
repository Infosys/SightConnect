import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class EyeScanCameraControllers extends StatelessWidget {
  const EyeScanCameraControllers({
    super.key,
    this.onCapture,
    this.onSwitchCamera,
    this.onFlash,
    this.isFlashOn = false,
  });
  final VoidCallback? onCapture;
  final VoidCallback? onSwitchCamera;
  final VoidCallback? onFlash;
  final bool isFlashOn;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      decoration: BoxDecoration(
        color: AppColor.black.withOpacity(0.7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: onFlash,
            icon: Icon(
              isFlashOn ? Icons.flash_on : Icons.flash_off,
              color: AppColor.white,
            ),
          ),
          IconButton(
            onPressed: onCapture,
            icon: const Icon(
              Icons.camera,
              size: 40,
              color: AppColor.white,
            ),
          ),
          IconButton(
            onPressed: onSwitchCamera,
            icon: const Icon(
              Icons.camera_alt,
              color: AppColor.white,
            ),
          ),
        ],
      ),
    );
  }
}
