import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/tumbling_direction_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/tumbling_direction_indicator.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/tumbling_overlay.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TumblingCarousel extends HookConsumerWidget {
  const TumblingCarousel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var carouselController = useState<CarouselController>(CarouselController());
    var currentIndex = useState<int>(0);
    var isCheckboxChecked = useState<bool>(false);
    var buttonName = useState<String>("Skip");
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider.builder(
          carouselController: carouselController.value,
          itemCount: 4,
          options: CarouselOptions(
            aspectRatio: 1.77,
            viewportFraction: 1.0,
            initialPage: currentIndex.value,
            enableInfiniteScroll: false,
            onPageChanged: (index, _) {
              logger.d(index.toString());
              currentIndex.value = index;
              if (currentIndex.value > 2) {
                buttonName.value = "Start";
              } else {
                buttonName.value = "Skip";
              }
            },
          ),
          itemBuilder: (context, index, _) {
            return TumblingDirectionCard(
              symbolImage: AppImages.tumblingE,
              handImage: _getHandImage(index),
              rotationAngle: _getRotationAngle(index),
            );
          },
        ),
        TumblingDirectionRow(
          currentIndex: currentIndex.value,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSize.kspadding),
              child: IconButton(
                highlightColor: const Color(0xFFECF2FE),
                onPressed: currentIndex.value > 0
                    ? () {
                        carouselController.value.animateToPage(
                          currentIndex.value - 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    : null,
                icon: Icon(
                  Icons.arrow_back,
                  color: currentIndex.value > 0
                      ? AppColor.kPrimary
                      : const Color(0xFFDDDDDD),
                ),
              ),
            ),
            AnimatedSmoothIndicator(
              onDotClicked: (index) {},
              activeIndex: currentIndex.value,
              count: 4,
              effect: const WormEffect(
                activeDotColor: AppColor.kPrimary,
                dotColor: Color(0xFFDDDDDD),
                dotHeight: 10,
                dotWidth: 10,
                spacing: 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.kspadding,
              ),
              child: IconButton(
                highlightColor: const Color(0xFFECF2FE),
                onPressed: currentIndex.value < 3
                    ? () {
                        carouselController.value.animateToPage(
                          currentIndex.value + 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    : null,
                icon: Icon(
                  Icons.arrow_forward,
                  color: currentIndex.value < 3
                      ? AppColor.kPrimary
                      : const Color(0xFFDDDDDD),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSize.kspadding),
              child: Row(
                children: [
                  Checkbox(
                    value: isCheckboxChecked.value,
                    onChanged: (value) {
                      isCheckboxChecked.value = value!;
                    },
                  ),
                  Text(
                    "Don't show again",
                    style: applyRobotoFont(
                      fontSize: 14,
                      color: AppColor.kGrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Consumer(
              builder: (context, ref, child) {
                return TextButton(
                  onPressed: () {
                    ref.read(tumblingDialogProvider.notifier).state = false;
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: AppColor.kPrimary,
                  ),
                  child: Text(buttonName.value),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  _getRotationAngle(int index) {
    if (index == 0) {
      return 4.71;
    } else if (index == 1) {
      return 7.85;
    } else if (index == 2) {
      return 3.14;
    } else {
      return 0.0;
    }
  }

  _getHandImage(int index) {
    if (index == 0) {
      return AppImages.swipeUp;
    } else if (index == 1) {
      return AppImages.swipeDown;
    } else if (index == 2) {
      return AppImages.swipeLeft;
    } else if (index == 3) {
      return AppImages.swipeRight;
    }
  }
}
