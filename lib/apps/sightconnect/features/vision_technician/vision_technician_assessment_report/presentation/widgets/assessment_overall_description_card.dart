/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/cupertino.dart';

class AssessmentOverallDescriptionCard extends StatelessWidget {
  const AssessmentOverallDescriptionCard({
    super.key,
    required this.triageResultDescription,
    required this.cumulativeSeverity,
  });
  final String? triageResultDescription;
  final Severity? cumulativeSeverity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommendation",
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.km),
        AppCard(
          padding: AppSize.kl,
          enableBorder: true,
          borderThickness: 2,
          color: _recommendationColor(cumulativeSeverity),
          child: Text(
            triageResultDescription ?? "",
            style: applyRobotoFont(
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }

  _recommendationColor(Severity? severity) {
    switch (severity) {
      case Severity.ABNORMAL:
        return AppColor.red;
      case Severity.LOW:
        return AppColor.green;
      case Severity.HIGH:
        return AppColor.orange;
      default:
        return AppColor.grey;
    }
  }
}
