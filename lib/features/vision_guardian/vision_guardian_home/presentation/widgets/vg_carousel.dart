import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_slide_1.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_slide_2.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_slide_3.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VGCarousel extends HookWidget {
  const VGCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();

    var current = useState<int>(0);

    final List<Widget> slides = [
      const VGSlide1(),
      const VGSlide2(),
      const VGSlide3(),
    ];

    return Column(
      children: [
        CarouselSlider(
          items: slides,
          carouselController: controller,
          options: CarouselOptions(
            height: 140,
            aspectRatio: 1.0,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              current.value = index;
            },
          ),
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
