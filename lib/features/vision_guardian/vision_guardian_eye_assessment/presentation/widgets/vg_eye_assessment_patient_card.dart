import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/pages/triage_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/data/model/vg_eye_assessment_patient_model.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VisionGuardianEyeAssessmentPatientsCard extends StatelessWidget {
  const VisionGuardianEyeAssessmentPatientsCard({Key? key, required this.model})
      : super(key: key);
  final List<VisionGuardianEyeAssessmentPatientModel> model;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: model.length,
      itemBuilder: (context, index) {
        var data = model[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const TriagePage(),
            ));
          },
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.ksradius),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppSize.kmpadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: AppColor.grey.withOpacity(0.8),
                          child: Image.asset(
                            data.image ?? "",
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: AppSize.kswidth),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.name ?? "",
                              style: applyRobotoFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.black,
                              ),
                            ),
                            Text(
                              '${data.gender!}, ${data.age!}',
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColor.grey,
                              ),
                            ),
                            Text(
                              data.assessmentId!,
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColor.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.urgency!,
                          style: applyRobotoFont(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColor.red,
                          ),
                        ),
                        Text(
                          data.reportDate!,
                          style: applyRobotoFont(
                            fontSize: 12,
                            color: AppColor.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          data.reportTime!,
                          style: applyRobotoFont(
                            fontSize: 12,
                            color: AppColor.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        );
      },
    );
  }
}
