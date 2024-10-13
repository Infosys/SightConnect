/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateEyeScanCameraControllers extends HookConsumerWidget {
  const UpdateEyeScanCameraControllers({
    super.key,
    this.onCapture,
    this.onSwitchCamera,
    this.onFlash,
    required this.currentEye,
  });
  final VoidCallback? onCapture;
  final VoidCallback? onSwitchCamera;
  final VoidCallback? onFlash;
  final TriageEyeType currentEye;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(AppSize.km),
          decoration: const BoxDecoration(
              // color: AppColor.black,
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(AppSize.ks),
                  decoration: const BoxDecoration(
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
