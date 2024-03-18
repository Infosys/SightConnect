import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/domain/models/assessment_timeline_view_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/report_button.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/widgets.dart';

class TimelineAssessmentTile extends StatelessWidget {
  const TimelineAssessmentTile({
    super.key,
    required this.context,
    required this.assessmentId,
    required this.description,
    required this.onTap,
    required this.source,
  });
  final int? assessmentId;
  final String description;
  final BuildContext context;
  final Future<void> Function() onTap;
  final TimelineSource? source;

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isMobile
            ? const SizedBox(height: AppSize.ks)
            : const SizedBox(height: AppSize.km),
        if (assessmentId != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReportButton(
                onTap: onTap,
                fileName: "Report_${assessmentId}",
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColor.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  source?.name.formatTitle().capitalizeFirstOfEach() ?? "",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: applyFiraSansFont(
                    fontSize: 14,
                    color: AppColor.grey,
                  ),
                ),
              ),
            ],
          ),
        if (assessmentId == null)
          Text(
            description,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: applyFiraSansFont(
              fontSize: 14,
              color: AppColor.grey,
            ),
          ),
      ],
    );
  }
}
