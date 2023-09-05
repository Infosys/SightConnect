import 'package:carousel_slider/carousel_controller.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/pages/tumbling_test_initiate_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/arrow_button.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/tumling_instruction_carousel.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TumblingEStepsInstructionsPage extends HookConsumerWidget {
  static const String routeName = "/tumblingEStepsInstructionsPage";
  const TumblingEStepsInstructionsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var carouselController = useState<CarouselController>(CarouselController());
    var activeIndex = useState<int>(0);

    return Scaffold(
      appBar: const CustomAppBar(
        title: "Steps to do the retinal scanning",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColor.kPrimary.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 0,
                    offset: const Offset(20, 20),
                  ),
                ],
              ),
              child: TumblingInstructionCarousel(
                onPageChanged: (index) {
                  activeIndex.value = index;
                },
                carouselController: carouselController.value,
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.klheight,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.klpadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSize.klpadding),
                  child: AnimatedSmoothIndicator(
                    onDotClicked: (index) {},
                    activeIndex: activeIndex.value,
                    count: 5,
                    effect: const SlideEffect(
                      activeDotColor: AppColor.kPrimary,
                      radius: 2,
                      dotColor: AppColor.kLightGrey,
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
            height: AppSize.klheight,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.klpadding + 6,
              vertical: AppSize.kspadding + 2,
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                fixedSize: const Size(0, 50),
                side: const BorderSide(
                  color: AppColor.kPrimary,
                ),
                backgroundColor: activeIndex.value == 4
                    ? AppColor.kPrimary
                    : AppColor.kWhite,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(
                  TumblingTestInitiatePage.routeName,
                );
              },
              child: Text(
                activeIndex.value == 4 ? "Start Test" : "Skip",
                style: applyRobotoFont(
                  fontWeight: FontWeight.w500,
                  color: activeIndex.value == 4
                      ? AppColor.kWhite
                      : AppColor.kPrimary,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.klheight * 2,
          )
        ],
      ),
    );
  }
}
