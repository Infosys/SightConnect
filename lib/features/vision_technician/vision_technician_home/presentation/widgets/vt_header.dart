import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/patient_age_analytics.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/patient_cases_analytics.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/statistics_cards_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VTHeader extends HookWidget {
  const VTHeader({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Widget> slides = [
      const PatientCasesAnalytics(),
      const PatientAgeAnalytics(),
      // const PatientSymptomsAnalytics(),
    ];
    final loc = context.loc!;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: AppSize.kl),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                loc.vtAnalytics,
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColor.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSize.kl),
        StatisticsCardsCarouselSlider(
          slides: slides,
        )
      ],
    );
  }
}
