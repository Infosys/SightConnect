/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_visual_acuity_provider.dart';
import 'package:eye_care_for_all/l10n/app_localizations.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../../../../../../../shared/theme/app_shadow.dart';
import '../pages/distance_visual_acuity_initiate_page.dart';

class DistanceVisualAcuityTumblingRightEyeInstruction extends ConsumerWidget {
  const DistanceVisualAcuityTumblingRightEyeInstruction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    final screenHeight = AppSize.height(context);
    final imageHeight = screenHeight * (264 / 892);
    return TraceableWidget(
      actionName:
          'VisualAcuity Tumbling LeftEye Instruction Page - Long Distance',
      child: Scaffold(
        appBar: CustomAppbar(
          centerTitle: true,
          title: Text(loc.distanceVaTopAppBarDistanceVisionTest),
        ),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSize.kl, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                loc.visualAcuityRightEyeHeader,
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                softWrap: true,
              ),
              const SizedBox(
                height: AppSize.km,
              ),
              Text(
                AppLocalizations.of(context)!.visualAcuityRightEyeInstructions,
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                softWrap: true,
              ),
              const SizedBox(height: AppSize.km),
              Text(
                "This part of the test requires an assistant as it must be taken from a 2-meter distance. Call a friend, family member, or neighbor to help you with this test.",
                softWrap: true,
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: applyLightShadow(),
                  ),

                  child: Center(
                    child: SvgPicture.asset(
                      "assets/images/distance_va_instruction.svg",
                      height: imageHeight,
                    ),
                  ),

                  // Image.asset(
                  //   "assets/images/visualAcuityRightEye.png",
                  // ),
                ),
              ),
              const Spacer(),
              Center(
                child: Container(
                  width: AppSize.width(context) * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: AppColor.blue),
                    color: AppColor.white,
                    boxShadow: applyLightShadow(),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Please maintain a 2-meter distance from the screen",
                        textAlign: TextAlign.center,
                        style: applyRobotoFont()),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        ref
                            .read(globalVisualAcuityProvider)
                            .setShortDistanceTest(false);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const DistanceVisualAcuityInitiatePage(),
                          ),
                        );
                      },
                      child: Text(loc.continueButton),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
