import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StatisticsCardsCarouselSlider extends HookWidget {
  final List<Widget> slides;

  const StatisticsCardsCarouselSlider({
    super.key,
    required this.slides,
  });

  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();
    var current = useState<int>(0);

    return Column(
      children: [
        CarouselSlider(
          items: slides,
          carouselController: controller,
          options: CarouselOptions(
            viewportFraction: 1,
            height: Responsive.isMobile(context) ? 180 : 220,
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
                width: AppSize.km - 2,
                height: AppSize.km - 2,
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
