import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianCameraControllers extends HookConsumerWidget {
  const VisionGuardianCameraControllers({
    super.key,
    this.onCapture,
    this.onSwitchCamera,
    this.onFlash,
  });
  final VoidCallback? onCapture;
  final VoidCallback? onSwitchCamera;
  final VoidCallback? onFlash;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          decoration: const BoxDecoration(
            color: AppColor.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  decoration: const BoxDecoration(
                    color: AppColor.darkGrey,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    AppIcon.cam_info,
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
                  child: SvgPicture.asset(
                    AppIcon.cam_capture,
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
                  child: SvgPicture.asset(
                    AppIcon.swap_camera,
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
