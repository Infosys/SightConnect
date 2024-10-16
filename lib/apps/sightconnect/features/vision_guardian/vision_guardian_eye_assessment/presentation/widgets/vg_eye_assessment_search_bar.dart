/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/providers/vg_eye_assessment_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianPatientSearchBar extends ConsumerWidget {
  const VisionGuardianPatientSearchBar({super.key, required this.readOnly});
  final bool readOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      readOnly: readOnly,
      onChanged: (data) {
        ref
            .read(visionGuardianEyeAssessmentProvider)
            .setSearchPatientList(data);
      },
      onTap: () {
        if (readOnly) {}
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(
          CupertinoIcons.search,
          color: AppColor.primary,
        ),
        suffixIcon: Container(
          decoration: BoxDecoration(
            color: AppColor.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppSize.kl),
          ),
          child: const Icon(
            CupertinoIcons.mic,
            color: AppColor.grey,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: AppSize.ks),
        filled: true,
        fillColor: AppColor.white,
        hintText: 'Search by patient ID, Name',
        hintStyle: applyRobotoFont(
          color: AppColor.grey,
          fontSize: 14,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primary),
          borderRadius: BorderRadius.circular(AppSize.kl * 3),
        ),
      ),
    );
  }
}
