/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_onboarding/presentation/provider/vg_details_stepper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/presentation/pages/vg_profile.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Bottom extends ConsumerWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int index = ref.watch(vgdetailsstepperprovider).currentStep;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
            index == 0 ? MainAxisAlignment.end : MainAxisAlignment.spaceBetween,
        children: [
          if (index == 0)
            SizedBox(
              width: AppSize.kl * 3,
              child: TextButton(
                onPressed: () {
                  ref.read(vgdetailsstepperprovider.notifier).next();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Next",
                      style: applyRobotoFont(
                        fontSize: 16,
                        color: AppColor.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          if (index == 1)
            SizedBox(
              width: AppSize.kl * 3,
              child: TextButton(
                onPressed: () {
                  ref.read(vgdetailsstepperprovider.notifier).prev();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      size: 20,
                    ),
                    Text(
                      "Prev",
                      style: applyRobotoFont(
                        fontSize: 16,
                        color: AppColor.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (index == 1)
            SizedBox(
              height: 40,
              width: 186,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(AppColor.primary),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VgProfile(),
                    ),
                  );
                },
                child: Center(
                  child: Text(
                    "Get Started",
                    style: applyRobotoFont(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
