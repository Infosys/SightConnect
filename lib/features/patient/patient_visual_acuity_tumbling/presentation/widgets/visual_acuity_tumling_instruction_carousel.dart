import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
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
    var slideShowData = [
      {
        "image": "assets/images/step1.png",
        "text":
            "Sit down comfortably in a well light location. You may feel a sudden change in brightness, don’t worry the screen is set to auto-brightness to provide optimal result."
      },
      {
        "image": "assets/images/step2.png",
        "text":
            "Make sure you are holding the device at the eye level. If you wear glasses or contact lenses, keep them on"
      },
      {
        "image": "assets/images/step3.png",
        "text":
            "Position yourself 40 cm from the screen. Distance will be shown in the test screen."
      },
      {
        "image": "assets/images/step4.png",
        "text":
            "If you are testing with glasses on, cover one eye with your hand over the glasses when only one eye is tested."
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
        return Stack(
          fit: StackFit.expand,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
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
              height: 100,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black54,
                ),
                padding: const EdgeInsets.all(AppSize.kspadding),
                child: Text(
                  slideShowData[index]["text"]!,
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: applyFiraSansFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.white,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
