import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
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
        const SizedBox(height: AppSize.kmheight),
        AppCard(
          padding: AppSize.klpadding,
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
