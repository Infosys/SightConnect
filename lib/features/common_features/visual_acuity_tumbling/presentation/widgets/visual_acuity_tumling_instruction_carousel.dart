import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VisualAcuityTumblingInstructionCarousel extends HookWidget {
  const VisualAcuityTumblingInstructionCarousel({
    required this.onPageChanged,
    required this.carouselController,
    super.key,
  });
  final CarouselController carouselController;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    var initialPage = useState<int>(0);
    final loc = context.loc!;
    var slideShowData = [
      {
        "image": "assets/images/tumbling_step_one.png",
        "text": loc.visualAcuityTestInstructionOne
      },
      {
        "image": "assets/images/tumbling_step_two.png",
        "text": loc.visualAcuityTestInstructionTwo
      },
      {
        "image": "assets/images/tumbling_step_three.png",
        "text": loc.visualAcuityTestInstructionThree
      },
      {
        "image": "assets/images/tumbling_step_four.png",
        "text": loc.visualAcuityTestInstructionFour
      },
    ];
    return CarouselSlider.builder(
      carouselController: carouselController,
      itemCount: slideShowData.length,
      options: CarouselOptions(
        aspectRatio: 0.77,
        viewportFraction: 0.79,
        initialPage: initialPage.value,
        enlargeCenterPage: true,
        enlargeFactor: 0.24,
        enableInfiniteScroll: false,
        onPageChanged: (index, _) {
          onPageChanged(index);
          initialPage.value = index;
        },
      ),
      itemBuilder: (context, index, _) {
        return Container(
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: applyLightShadow(),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.km,
                  vertical: AppSize.km,
                ),
                child: Image.asset(
                  slideShowData[index]["image"]!,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black.withOpacity(0.7),
                  ),
                  padding: const EdgeInsets.all(AppSize.km),
                  child: AutoSizeText(
                    slideShowData[index]["text"]!,
                    textAlign: TextAlign.left,
                    style: applyFiraSansFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
