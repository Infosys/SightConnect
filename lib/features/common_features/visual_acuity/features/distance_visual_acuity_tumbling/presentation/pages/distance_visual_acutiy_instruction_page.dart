import 'package:carousel_slider/carousel_controller.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/widgets/arrow_button.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/distance_visual_acuity_tumling_instruction_carousel.dart';

class DistanceVisualAcuityInstructionPage extends HookConsumerWidget {
  const DistanceVisualAcuityInstructionPage({required this.onPressed, Key? key})
      : super(key: key);
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var carouselController = useState<CarouselController>(CarouselController());
    var activeIndex = useState<int>(0);

    return TraceableWidget(
      actionName: 'VisualAcuity Instruction Page',
      child: Scaffold(
        // appBar: CustomAppbar(
        //   title: Text(context.loc!.visualAcuityCarouselTitle),
        // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: DistanceVisualAcuityTumblingInstructionCarousel(
                onPageChanged: (index) {
                  activeIndex.value = index;
                },
                carouselController: carouselController.value,
              ),
            ),
            const SizedBox(
              height: AppSize.kl,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.kl,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSize.kl,
                    ),
                    child: AnimatedSmoothIndicator(
                      onDotClicked: (index) {},
                      activeIndex: activeIndex.value,
                      count: 4,
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
            const SizedBox(
              height: AppSize.ks,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.kl + 6,
                vertical: AppSize.ks + 2,
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size(0, 50),
                  side: const BorderSide(
                    color: AppColor.primary,
                  ),
                  backgroundColor:
                      activeIndex.value == 4 ? AppColor.primary : null,
                ),
                onPressed: () {
                  onPressed();
                },
                child: Text(
                  activeIndex.value == 3
                      ? context.loc!.startTestText
                      : context.loc!.skipButton,
                  style: applyRobotoFont(
                    fontWeight: FontWeight.w500,
                    color: activeIndex.value == 4
                        ? AppColor.white
                        : AppColor.primary,
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: AppSize.kl * 2,
            // )
          ],
        ),
      ),
    );
  }
}
