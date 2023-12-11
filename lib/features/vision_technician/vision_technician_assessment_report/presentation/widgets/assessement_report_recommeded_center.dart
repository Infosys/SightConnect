import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentReportRecommendedCenter extends ConsumerWidget {
  const AssessmentReportRecommendedCenter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var recommendedCenter = ref
        .watch(preliminaryAssessmentProvider)
        .visionCenters
        .where((element) => element.checked == true)
        .toList()[0];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommended Center",
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.klheight),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.all(
                Radius.circular(AppSize.kmradius - 5),
              )),
          padding: const EdgeInsets.all(AppSize.klpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recommendedCenter.type,
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: AppSize.ksheight),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.location_on_outlined, color: AppColor.grey),
                  SizedBox(
                    width: AppSize.klwidth * 15,
                    child: Text(recommendedCenter.completeAddress),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.phone_outlined,
                                color: AppColor.grey),
                            SizedBox(
                                width: AppSize.klwidth * 5,
                                child: Text(recommendedCenter.phoneno,
                                    style: applyRobotoFont(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)))
                          ],
                        ),
                        const SizedBox(height: AppSize.ksheight),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.access_time_rounded,
                              color: AppColor.grey,
                            ),
                            
                            SizedBox(
                              width: AppSize.klwidth * 8,
                              child: Text(
                                recommendedCenter.time,
                                softWrap: true,
                                style: applyRobotoFont(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
