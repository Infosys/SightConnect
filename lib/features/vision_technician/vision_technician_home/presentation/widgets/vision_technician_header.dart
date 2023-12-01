import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/analytics_slide_1.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/analytics_slide_2.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/analytics_slide_3.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VisionTechnicianHeader extends HookWidget {
  const VisionTechnicianHeader({super.key});

  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();

    var _current = useState<int>(0);

    final List<Widget> slides = [
      const AnalyticsSlide1(),
      const AnalyticsSlide2(),
      const AnalyticsSlide3(),
    ];

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: AppSize.klpadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Analytics',
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColor.white,
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
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: AppColor.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        CarouselSlider(
          items: slides,
          carouselController: _controller,
          options: CarouselOptions(
              height: 220,
              // enlargeCenterPage: true/
              aspectRatio: 1.0,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                _current.value = index;
              }),
        ),
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
                      _current.value == entry.key ? applyMediumShadow() : [],
                  color: _current.value == entry.key
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
