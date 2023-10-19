import 'package:carousel_slider/carousel_controller.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/presentation/widgets/arrow_button.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_visual_acuity_tumbling/widgets/visual_acuity_tumbling_test_left_eye_instruction.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_visual_acuity_tumbling/widgets/visual_acuity_tumling_instruction_carousel.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PatientVisualAcuityInstructionPage extends HookConsumerWidget {
  const PatientVisualAcuityInstructionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var carouselController = useState<CarouselController>(CarouselController());
    var activeIndex = useState<int>(0);

    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Steps to do the retinal scanning"),
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
                    color: AppColor.primary.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 0,
                    offset: const Offset(20, 20),
                  ),
                ],
              ),
              child: VisualAcuityTumblingInstructionCarousel(
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
                  color: AppColor.primary,
                ),
                backgroundColor:
                    activeIndex.value == 4 ? AppColor.primary : null,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const VisualAcuityTumblingLeftEyeInstruction(),
                  ),
                );
              },
              child: Text(
                activeIndex.value == 4 ? "Start Test" : "Skip",
                style: applyRobotoFont(
                  fontWeight: FontWeight.w500,
                  color: activeIndex.value == 4
                      ? AppColor.white
                      : AppColor.primary,
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
