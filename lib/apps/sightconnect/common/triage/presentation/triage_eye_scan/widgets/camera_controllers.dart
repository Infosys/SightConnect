/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EyeScanCameraControllers extends HookConsumerWidget {
  const EyeScanCameraControllers({
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
    var current = ref.watch(triageEyeScanProvider);
    var isClosed = useState<bool>(false);
    return Column(
      children: [
        Visibility(
          visible: !isClosed.value,
          child: Container(
            margin: const EdgeInsets.only(bottom: AppSize.km),
            decoration: BoxDecoration(
              color: AppColor.blackOpacity,
              borderRadius: BorderRadius.circular(AppSize.kl),
            ),
            height: AppSize.height(context) * 0.05,
            width: AppSize.width(context) * 0.5,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    current.currentEye == TriageEyeType.RIGHT
                        ? "Capture Right Eye"
                        : "Capture Left Eye",
                    style: const TextStyle(color: AppColor.white),
                    textAlign: TextAlign.center,
                  ),
                  InkWell(
                    onTap: () {
                      isClosed.value = !isClosed.value;
                    },
                    child: SvgPicture.asset(
                      AppIcon.cam_close,
                      colorFilter: const ColorFilter.mode(
                        AppColor.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(AppSize.km),
          decoration: const BoxDecoration(
            color: AppColor.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(AppSize.ks),
                  decoration: const BoxDecoration(
                    color: AppColor.darkGrey,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    AppIcon.cam_info,
                    colorFilter: const ColorFilter.mode(
                      AppColor.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: onCapture,
                child: Container(
                  padding: const EdgeInsets.all(AppSize.ks),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    AppIcon.cam_capture,
                    colorFilter: const ColorFilter.mode(
                      AppColor.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: onSwitchCamera,
                child: Container(
                  padding: const EdgeInsets.all(AppSize.ks),
                  decoration: const BoxDecoration(
                    color: AppColor.darkGrey,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    AppIcon.swap_camera,
                    colorFilter: const ColorFilter.mode(
                      AppColor.white,
                      BlendMode.srcIn,
                    ),
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
