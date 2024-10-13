/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/visual_acuity/features/visual_acuity_tumbling/presentation/pages/visual_acuity_initiate_page.dart';
import 'package:eye_care_for_all/l10n/app_localizations.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

class VisualAcuityTumblingRightEyeInstruction extends StatelessWidget {
  const VisualAcuityTumblingRightEyeInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return TraceableWidget(
      actionName: 'VisualAcuity Tumbling LeftEye Instruction Page',
      child: Scaffold(
        appBar: CustomAppbar(
          centerTitle: true,
          title: Text(loc.vaTopAppBarNearVisionTest),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
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
              const SizedBox(
                height: AppSize.km + 2,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: applyLightShadow(),
                  ),
                  height: AppSize.height(context) * 0.5,
                  width: AppSize.width(context) * 0.7,
                  child: Image.asset(
                    "assets/images/visualAcuityRightEye.png",
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const VisualAcuityInitiatePage(),
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
