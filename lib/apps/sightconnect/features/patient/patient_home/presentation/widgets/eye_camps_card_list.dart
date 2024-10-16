/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/widgets/eye_camps_card.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EyeCampsCardList extends StatelessWidget {
  const EyeCampsCardList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [];
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
          child: Text(
            "Eye Camps Near Me",
            style: applyFiraSansFont(
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: AppSize.km),
        Container(
          decoration: BoxDecoration(
            boxShadow: applyLightShadow(),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...data
                    .map(
                      (e) => EyeCampCard(
                        data: e,
                      ),
                    )
                    .toList()
              ],
            ),
          ),
        )
      ],
    );
  }
}
