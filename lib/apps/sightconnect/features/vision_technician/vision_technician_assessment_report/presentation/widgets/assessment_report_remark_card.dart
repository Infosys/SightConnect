import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/cupertino.dart';

class AssessmentReportRemarkCard extends StatelessWidget {
  const AssessmentReportRemarkCard({required this.remark, super.key});
  final String? remark;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          loc.vtRemarks,
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.km),
        AppCard(
          padding: AppSize.kl,
          child: Text(
            (remark == null || remark!.isEmpty) ? "No Remarks" : remark!,
            style: applyRobotoFont(
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
