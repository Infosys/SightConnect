import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class HookWidget extends HookWidget {
  const HookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();

    var current = useState<int>(0);

    final List<Widget> slides = [
      const AnalyticsSlide1(),
      const AnalyticsSlide2(),
      const AnalyticsSlide3(),
    ];

    return Column(
      children: [
        
        CarouselSlider(
          items: slides,
          carouselController: controller,
          options: CarouselOptions(
              height: 220,
              aspectRatio: 1.0,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                current.value = index;
              },),
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