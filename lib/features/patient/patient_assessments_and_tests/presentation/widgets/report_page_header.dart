import 'package:cached_network_image/cached_network_image.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class ReportPageHeader extends StatelessWidget {
  const ReportPageHeader({
    Key? key,
    required this.triageReportAndAssementPage,
  }) : super(key: key);

  final TriageReportDetailedEntity triageReportAndAssementPage;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: BorderRadius.circular(100),
                color: AppColor.white,
                border: Border.all(
                  color: AppColor.white,
                  width: 4,
                ),
              ),
              child: CachedNetworkImage(
                imageUrl: triageReportAndAssementPage.patientImage!,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
                imageBuilder: (context, imageProvider) => CircleAvatar(
                  backgroundImage: imageProvider,
                ),
                errorWidget: (context, url, error) => const CircleAvatar(
                  backgroundColor: AppColor.lightGrey,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  triageReportAndAssementPage.patientName,
                  style: applyFiraSansFont(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'PID: OP ${triageReportAndAssementPage.patientId}',
                  style: applyFiraSansFont(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: AppSize.kselevation,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Assessment ID',
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        triageReportAndAssementPage.assessmentID.toString(),
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.black,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Date & Time',
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        triageReportAndAssementPage.reportDate!.formateDate,
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
