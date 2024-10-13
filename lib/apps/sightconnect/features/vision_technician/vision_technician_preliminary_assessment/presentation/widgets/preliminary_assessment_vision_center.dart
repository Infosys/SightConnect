/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/severity_input.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/vision_centers_address_details.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/vision_centers_scroll_bar.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/presentation/widgets/vt_register_input.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreliminaryAssessmentVisionCenter extends HookConsumerWidget {
  const PreliminaryAssessmentVisionCenter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.all(AppSize.km - 2),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.ks),
        boxShadow: applycustomShadow(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // loc.vtVisionCenter,
            "Vision Center Suggested",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: AppSize.kl,
          ),
          Responsive.isMobile(context)
              ? const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VisionCentersScrollBar(),
                    SizedBox(
                      height: AppSize.km,
                    ),
                    VisionCenterAddressDetails(),
                  ],
                )
              : const Row(
                  children: [
                    VisionCentersScrollBar(),
                    SizedBox(
                      width: AppSize.kl,
                    ),
                    VisionCenterAddressDetails(),
                  ],
                ),
          const SizedBox(height: AppSize.kl),
          const SeverityInput(),
          VTRegisterInput(
            title: loc.vtRemarks,
            keyboardType: TextInputType.multiline,
            controller:
                ref.read(preliminaryAssessmentHelperProvider).remarksController,
          ),
        ],
      ),
    );
  }
}
