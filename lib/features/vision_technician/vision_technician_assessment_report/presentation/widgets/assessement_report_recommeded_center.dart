import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AssessmentReportRecommendedCenter extends ConsumerWidget {
  const AssessmentReportRecommendedCenter({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var recommendedCenter=ref.watch(preliminaryAssessmentProvider).visonCenters.where((element) => element["checked"]==true).toList()[0];
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
         SizedBox(height: AppSize.klheight),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.all(
                Radius.circular(AppSize.kmradius - 5),
              )),
          padding: const EdgeInsets.all(AppSize.klpadding),
          child: Wrap(
            spacing: AppSize.kmheight,
            direction: Axis.vertical,
            children: [
              Text(
                recommendedCenter["type"] as String,
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
               Wrap(
                spacing: AppSize.kmwidth,
                direction: Axis.horizontal,
                children: [
                  Icon(Icons.location_on_outlined, color: AppColor.grey),
                  SizedBox(
                    width: AppSize.klwidth * 15,
                    child: Text(
                       recommendedCenter["completeAddress"] as String),
                  ),
                  Wrap(direction: Axis.vertical, children: [
                    Wrap(
                      spacing: AppSize.kmwidth,
                      direction: Axis.horizontal,
                      children: [
                        Icon(Icons.phone_outlined, color: AppColor.grey),
                        SizedBox(
                          width: AppSize.klwidth * 18,
                          child: Text(recommendedCenter["phoneno"].toString()),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: AppSize.kmwidth,
                      direction: Axis.horizontal,
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: AppColor.grey,
                        ),
                        SizedBox(
                          width: AppSize.klwidth * 18,
                          child: Text(recommendedCenter["time"].toString()),
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
