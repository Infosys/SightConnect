/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/widgets/triage_test_counter_indicator.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/widgets/helpers/show_triage_bottom_sheet.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TriageInstructionPage extends StatelessWidget {
  const TriageInstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return PopScope(
      onPopInvoked: (value) {
        Future.delayed(Duration.zero, () {
          Navigator.of(context).popUntil((route) => route.isFirst);
        });
      },
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Text(loc.triageInstructionPageTopAppBarEyeTest),
                const SizedBox(width: AppSize.kl * 2),
                const TriageTestCounterIndicator(currentStep: 1)
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppIcon.accessability,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(AppSize.kl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  loc.triageInstructionPageHeader,
                  style: applyFiraSansFont(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: AppSize.km),
                IconListTile(
                  title: loc.triageInstructionPageBody1,
                ),
                IconListTile(
                  title: loc.triageInstructionPageBody2,
                ),
                IconListTile(
                  title: loc.triageInstructionPageBody3,
                ),
                const SizedBox(height: AppSize.km),
                Text(
                  loc.triageInstructionPageComfortableWithSelfTest,
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: AppSize.km),
                Text(
                  loc.triageInstructionPageTestAssistanceRequired,
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: AppSize.kl),
                SvgPicture.asset(
                  AppImages.whatYouWouldBeDoing,
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.kl,
              vertical: AppSize.km,
            ),
            child: ElevatedButton(
              onPressed: () {
                showTriageBottomSheet(context: context);
              },
              child: Text(loc.triageInstructionPageIAmReadyButton),
            ),
          )),
    );
  }
}

class IconListTile extends StatelessWidget {
  final String title;

  const IconListTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              const Icon(
                Icons.circle,
                size: 8,
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
