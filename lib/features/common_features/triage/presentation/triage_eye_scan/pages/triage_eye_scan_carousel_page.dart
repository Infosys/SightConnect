import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/arrow_button.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/cataract_eye_scan_carousel.dart';

class TriageEyeScanCarouselPage extends HookConsumerWidget {
  static const String routeName = "/patientEyeScanInstructionsPage";

  const TriageEyeScanCarouselPage({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var carouselController = useState<CarouselController>(CarouselController());
    var activeIndex = useState<int>(0);
    final loc = context.loc!;
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: CataractEyeScanCarousel(
              onPageChanged: (index) {
                activeIndex.value = index;
              },
              carouselController: carouselController.value,
            ),
          ),
          const SizedBox(height: AppSize.kl * 2),
          SizedBox(
            width: AppSize.width(context) * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSize.kl),
                  child: AnimatedSmoothIndicator(
                    onDotClicked: (index) {},
                    activeIndex: activeIndex.value,
                    count: 7,
                    effect: const SlideEffect(
                      activeDotColor: AppColor.primary,
                      radius: 2,
                      dotColor: AppColor.lightGrey,
                      dotHeight: 5,
                      dotWidth: 20,
                      spacing: 4,
                    ),
                  ),
                ),
                const Spacer(),
                ArrowButton(
                  onTap: () {
                    carouselController.value.previousPage();
                  },
                  icon: Icons.arrow_back_ios,
                  activeIndex: activeIndex.value,
                ),
                const SizedBox(width: 10),
                ArrowButton(
                  onTap: () {
                    carouselController.value.nextPage();
                  },
                  icon: Icons.arrow_forward_ios,
                  activeIndex: activeIndex.value,
                )
              ],
            ),
          ),
          const SizedBox(height: AppSize.kl),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size(AppSize.width(context) * 0.8, 50),
              side: const BorderSide(
                color: AppColor.primary,
              ),
              backgroundColor:
                  activeIndex.value == 6 ? AppColor.primary : AppColor.white,
            ),
            onPressed: () {
              onPressed();
            },
            child: Text(
              activeIndex.value == 6
                  ? loc.proceedToScanButton
                  : loc.skipAndProceedButton,
              style: applyRobotoFont(
                fontWeight: FontWeight.w500,
                color:
                    activeIndex.value == 6 ? AppColor.white : AppColor.primary,
              ),
            ),
          ),
          const SizedBox(height: AppSize.kl),
        ],
      ),
    );
  }
}
