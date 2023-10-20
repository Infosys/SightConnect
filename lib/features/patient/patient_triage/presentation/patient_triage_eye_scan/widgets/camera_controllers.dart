import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_eye_scan/pages/patient_eyes_capture_triage_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EyeScanCameraControllers extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    var current = ref.watch(currentEyeProvider);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: AppSize.kmpadding),
          decoration: BoxDecoration(
            color: AppColor.blackOpacity,
            borderRadius: BorderRadius.circular(AppSize.klpadding),
          ),
          height: AppSize.height(context) * 0.05,
          width: AppSize.width(context) * 0.5,
          child: Center(
            child: Text(
              current == TriageEye.RIGHT_EYE
                  ? "Capture Right Eye"
                  : "Capture Left Eye",
              style: const TextStyle(color: AppColor.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(AppSize.klpadding),
          decoration: const BoxDecoration(
            color: AppColor.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (onFlash),
                child: Container(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  decoration: const BoxDecoration(
                    color: AppColor.darkGrey,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.info_outline_rounded,
                    // flashMode == FlashMode.off
                    //     ? Icons.flash_off_outlined
                    //     : Icons.flash_on_outlined,
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
        ),
      ],
    );
  }
}
