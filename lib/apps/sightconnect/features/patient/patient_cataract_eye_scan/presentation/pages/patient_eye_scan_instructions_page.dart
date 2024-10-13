/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/presentation/widgets/arrow_button.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/presentation/widgets/cataract_eye_scan_carousel.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
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
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          loc.patientStepsToScan,
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
            padding: const EdgeInsets.symmetric(horizontal: AppSize.kl),
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
          const SizedBox(
            height: AppSize.kl,
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
                    ? loc.patientProceedToScan
                    : loc.patientSkipAndProceedToScan,
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
            height: AppSize.kl * 2,
          )
        ],
      ),
    );
  }
}
