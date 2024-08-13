import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CataractEyeScanCarousel extends HookWidget {
  const CataractEyeScanCarousel({
    required this.onPageChanged,
    required this.carouselController,
    super.key,
  });
  final CarouselController carouselController;
  final Function(int) onPageChanged;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    List<Map<String, dynamic>> slideShowData = [
      {
        "image": "assets/images/clippy_one.png",
        "description": loc.eyeScanInstructionOne,
      },
      {
        "image": "assets/images/clippy_two.png",
        "description": loc.eyeScanInstructionTwo,
      },
      {
        "image": "assets/images/clippy_three.png",
        "description": loc.eyeScanInstructionThree,
      },
      {
        "image": "assets/images/clippy_four.png",
        "description": loc.eyeScanInstructionFour,
      },
      {
        "image": "assets/images/clippy_five.png",
        "description": loc.eyeScanInstructionFive,
      },
      {
        "image": "assets/images/clippy_six.png",
        "description": loc.eyeScanInstructionSix,
      },
      {
        "image": "assets/images/clippy_seven.png",
        "description": loc.eyeScanInstructionSeven,
      },
    ];
    var initialPage = useState<int>(0);
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
                slideShowData[index]["image"],
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: 100,
              //  alignment: Alignment.bottomCenter,
              child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: Center(
                    child: Text(
                      slideShowData[index]["description"],
                      textAlign: TextAlign.center,
                      style: applyFiraSansFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.white,
                      ),
                    ),
                  )),
            ),
          ],
        );
      },
    );
  }
}
