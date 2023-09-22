import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class EyeScanCameraControllers extends StatelessWidget {
  const EyeScanCameraControllers({
    super.key,
    this.onCapture,
    this.onSwitchCamera,
    this.onFlash,
    this.flashMode,
  });
  final VoidCallback? onCapture;
  final VoidCallback? onSwitchCamera;
  final VoidCallback? onFlash;
  final FlashMode? flashMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.klpadding),
      decoration: const BoxDecoration(
        color: AppColor.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: onFlash,
            child: Container(
              padding: const EdgeInsets.all(AppSize.kspadding),
              decoration: const BoxDecoration(
                color: AppColor.darkGrey,
                shape: BoxShape.circle,
              ),
              child: Icon(
                flashMode == FlashMode.off
                    ? Icons.flash_off_outlined
                    : Icons.flash_on_outlined,
                color: AppColor.white,
              ),
            ),
          ),
          InkWell(
            onTap: onCapture,
            child: Container(
              padding: const EdgeInsets.all(AppSize.kspadding),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.camera,
                size: 50,
                color: AppColor.white,
              ),
            ),
          ),
          InkWell(
            onTap: onSwitchCamera,
            child: Container(
              padding: const EdgeInsets.all(AppSize.kspadding),
              decoration: const BoxDecoration(
                color: AppColor.darkGrey,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.cameraswitch_outlined,
                color: AppColor.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
