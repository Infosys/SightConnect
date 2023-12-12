import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
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
          decoration: const BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.all(
                Radius.circular(AppSize.kmradius - 5),
              )),
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: RecommendationPhoneNumber(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.location_on_outlined, color: AppColor.grey),
                  Flexible(
                    child: Text(
                      recommendedCenter.completeAddress,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Flexible(
                          child:
                              Icon(Icons.phone_outlined, color: AppColor.grey)),
                      Flexible(
                        child: Text(
                          recommendedCenter.phoneno,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Flexible(
                        child: Icon(
                          Icons.access_time_rounded,
                          color: AppColor.grey,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          recommendedCenter.time,
                          // softWrap: true,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: applyRobotoFont(
                              fontSize: 14, fontWeight: FontWeight.w400),
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

class RecommendationPhoneNumber extends ConsumerWidget {
  const RecommendationPhoneNumber({super.key, required this.children});

  final List<Widget> children;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Responsive.isMobile(context)
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start, children: children)
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          );
  }
}
