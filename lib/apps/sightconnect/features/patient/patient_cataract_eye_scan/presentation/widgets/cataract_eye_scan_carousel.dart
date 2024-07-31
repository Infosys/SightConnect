import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/data/local/fake_data_source_cataract.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
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
    var initialPage = useState<int>(0);
    return CarouselSlider.builder(
      carouselController: carouselController,
      itemCount: 7,
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
                slideShowData[index].image,
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
                        horizontal: 20, vertical: 30),
                    child: Text(
                      slideShowData[index].title,
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
