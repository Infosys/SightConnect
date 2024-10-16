/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/pages/triage_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_member_selection/providers/triage_member_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianEyeAssessment extends ConsumerWidget {
  const VisionGuardianEyeAssessment({
    super.key,
    required this.patientName,
    required this.patientId,
    required this.triageMode,
  });
  final String patientName;
  final String patientId;
  final TriageMode triageMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Scaffold(
        appBar: CustomAppbar(
          title: Text(
              "${loc.vgEyeAssessment} - $patientName (${loc.patientPID} $patientId)"),
          centerTitle: false,
        ),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.width(context) * AppSize.knavbarwidth,
              vertical: AppSize.height(context) * 0.05,
            ),
            child: ElevatedButton(
                onPressed: () {
                  ref
                      .watch(triageMemberProvider)
                      .setTestPersonId(int.parse(patientId));
                  logger
                      .f("Triage mode in vg eye assessment page : $triageMode");
                  ref.read(triageProvider).setTriageMode(triageMode);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TriagePage(),
                    ),
                  );
                },
                child: Text(
                  loc.vgStart,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.white,
                  ),
                ))),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset("assets/images/Eye Assessment.svg"),
          Container(
            padding: const EdgeInsets.all(AppSize.km),
            child: Text(
              loc.vgEyeAssessmentDescription,
              style: applyRobotoFont(fontSize: 14, color: AppColor.grey),
              textAlign: TextAlign.center,
            ),
          ),
        ]));
  }
}
