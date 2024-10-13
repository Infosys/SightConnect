/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MRCode extends ConsumerWidget {
  const MRCode({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      margin: const EdgeInsets.all(AppSize.ks),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: BorderRadius.circular(AppSize.km),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                loc.vtMrCode,
                style: applyFiraSansFont(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: AppSize.ks),
              Text(
                "Optional",
                textHeightBehavior:
                    const TextHeightBehavior(applyHeightToFirstAscent: false),
                style: applyFiraSansFont(
                  fontSize: 12,
                  color: AppColor.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.km,
          ),
          TextField(
            onChanged: (value) {
              ref.read(vtCloseAssessmentHelperProvider).setMrCode(value);
            },
            decoration: InputDecoration(
              hintText: loc.vtEnterMrCode,
              hintStyle: applyRobotoFont(fontSize: 14),
              // error: ref
              //             .watch(vtCloseAssessmentHelperProvider)
              //             .mrCodeController
              //             .text
              //             .length <
              //         4
              //     ? Text(
              //         loc.vtPleaseEnterMrCode,
              //         style: applyRobotoFont(
              //           fontSize: 12,
              //           color: AppColor.red,
              //         ),
              //       )
              //     : null,
            ),
          )
        ],
      ),
    );
  }
}
