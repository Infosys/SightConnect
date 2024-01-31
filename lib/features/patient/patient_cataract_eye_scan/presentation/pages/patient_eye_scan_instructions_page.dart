import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/presentation/widgets/arrow_button.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/presentation/widgets/cataract_eye_scan_carousel.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../data/local/User_details_model.dart';
import 'patient_eyes_capture_page.dart';

class PatientEyeScanInstructionsPage extends HookConsumerWidget {
  static const String routeName = "/patientEyeScanInstructionsPage";
  const PatientEyeScanInstructionsPage({
    Key? key,
    this.userDetails,
  }) : super(key: key);
  final UserDetails? userDetails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var carouselController = useState<CarouselController>(CarouselController());
    var activeIndex = useState<int>(0);
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text(
          "Steps to do the retinal scanning",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.klpadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSize.klpadding),
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
                    activeIndex.value == 6 ? AppColor.primary : AppColor.white,
              ),
              onPressed: () {
                ref.read(patientEyeScanProvider).resetImages();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PatientEyeCapturePage(),
                  ),
                );
              },
              child: Text(
                activeIndex.value == 6
                    ? "Proceed to Scan"
                    : "Skip & Proceed to Scan",
                style: applyRobotoFont(
                  fontWeight: FontWeight.w500,
                  color: activeIndex.value == 6
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
