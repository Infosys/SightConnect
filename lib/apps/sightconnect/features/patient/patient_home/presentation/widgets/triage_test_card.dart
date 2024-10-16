/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/helpers/widgets/helpers/show_triage_how_to_proceed_bottom_sheet.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageTestCard extends HookConsumerWidget {
  const TriageTestCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSize.km),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColor.primary,
        ),
        color: const Color(0xffE9EEFA),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              "assets/images/triage_card_bg.svg",
              width: AppSize.width(context),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      loc.triageTestCardHeader,
                      style: applyFiraSansFont(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppSize.ks),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      PatientHomeCardInfoTile(
                        title: loc.triageTestCardBody1,
                      ),
                      const SizedBox(height: 4),
                      PatientHomeCardInfoTile(
                        title: loc.triageTestCardBody2,
                      ),
                      const SizedBox(height: 4),
                      PatientHomeCardInfoTile(
                        title: loc.triageTestCardBody3,
                      ),
                    ],
                  ),
                ),

                // const SizedBox(height: 16),
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     TriageButton(
                //         imagePath: "assets/icons/acuity_test.svg", name: ""),
                //     TriageButton(
                //         imagePath: "assets/icons/questionnaire_test.svg",
                //         name: ""),
                //     TriageButton(
                //         imagePath: "assets/icons/eye_scan.svg", name: ""),
                //   ],
                // ),
                const SizedBox(height: 8),
                Flexible(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColor.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () {
                      showTriageHowToProceedBottomSheet(context: context);
                    },
                    child: Text(
                      loc.triageTestCardButton,
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TriageButton extends StatelessWidget {
  const TriageButton({
    super.key,
    required this.imagePath,
    required this.name,
  });
  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.white,
      ),
      child: SvgPicture.asset(
        imagePath,
        height: 15,
        width: 15,
      ),
    );
  }
}

class PatientHomeCardInfoTile extends StatelessWidget {
  final String title;

  const PatientHomeCardInfoTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            const Icon(
              Icons.check_circle_outline_outlined,
              size: 14,
            ),
            const SizedBox(width: 4),
            Text(
              title,
              style: applyRobotoFont(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
