import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/patient_cases_analytics.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/patient_age_analytics.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/patient_symptoms_ananlytics.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VTHeader extends HookWidget {
  const VTHeader({super.key});
  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();

    var current = useState<int>(0);

    final List<Widget> slides = [
      const PatientCasesAnalytics(),
      const PatientAgeAnalytics(),
      const PatientSymptomsAnalytics(),
    ];
    final loc = context.loc!;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: AppSize.klpadding),
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
        const SizedBox(height: AppSize.klheight),
        CarouselSlider(
          items: slides,
          carouselController: controller,
          options: CarouselOptions(
            height: Responsive.isMobile(context) ? 130 : 180,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              current.value = index;
            },
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: slides.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                width: AppSize.kmradius - 2,
                height: AppSize.kmradius - 2,
                margin:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColor.white,
                    width: 1.8,
                  ),
                  boxShadow:
                      current.value == entry.key ? applyMediumShadow() : [],
                  color: current.value == entry.key
                      ? AppColor.primary
                      : AppColor.primary.withOpacity(0.5),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
