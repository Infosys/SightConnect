import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/patient_cases_analytics.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/patient_age_analytics.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/patient_symptoms_ananlytics.dart';
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

    return Column(
      children: [
        const SizedBox(height: 16),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: AppSize.klpadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () async {
                  // try {
                  //   // Replace '1600 Amphitheatre Parkway, Mountain View' with your actual address
                  //   List<Location> locations = await locationFromAddress(
                  //       '1600 Amphitheatre Parkway, Mountain View');

                  //   if (locations.isNotEmpty) {
                  //     Location location = locations.first;
                  //     logger.d(
                  //         'Latitude: ${location.latitude}, Longitude: ${location.longitude}');
                  //   } else {
                  //     logger.d('No location found for the provided address.');
                  //   }
                  // } catch (e) {
                  //   print('Error: $e');
                  // }
                },
                child: Text(
                  'Analytics',
                  style: applyFiraSansFont(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.only(
                      left: AppSize.kmpadding,
                      right: AppSize.kspadding,
                    ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.klradius),
                      side: const BorderSide(color: AppColor.white),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Overall",
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.white,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: AppColor.white,
                    ),
                  ],
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
                width: AppSize.kmradius,
                height: AppSize.kmradius,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColor.white,
                    width: 1.5,
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
