import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
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
    List<Map<String, dynamic>> slideShowData = [
      {
        "image": "assets/images/clippy_one.png",
        "description":
            "Hold the camera placing the face properly on the frame.",
      },
      {
        "image": "assets/images/clippy_two.png",
        "description":
            "Take an image of the eyes using the back camera of your phone.",
      },
      {
        "image": "assets/images/clippy_three.png",
        "description": "Make sure to be in a well-lit area with the flash on.",
      },
      {
        "image": "assets/images/clippy_four.png",
        "description":
            "For better capture and clarity, have someone else to click the picture.",
      },
      {
        "image": "assets/images/clippy_five.png",
        "description":
            "Cover one eye with your hand and look straight ahead with the other eye while taking the picture.",
      },
      {
        "image": "assets/images/clippy_six.png",
        "description":
            "Centre the eye inside the panel before starting the picture.",
      },
      {
        "image": "assets/images/clippy_seven.png",
        "description":
            "Keep the eyes wide open till the flash goes off, until a ‘beep’ sound signals the end of the Photo.",
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
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
