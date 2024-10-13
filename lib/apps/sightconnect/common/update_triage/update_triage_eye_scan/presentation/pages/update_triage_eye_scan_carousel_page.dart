/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/widgets/cataract_eye_scan_carousel.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/update_triage/update_triage_eye_scan/presentation/pages/update_triage_eye_capturing_page.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/arrow_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UpdateTriageEyeScanCarouselPage extends HookConsumerWidget {
  static const String routeName = "/patientEyeScanInstructionsPage";

  final int diagnosticReportId;
  const UpdateTriageEyeScanCarouselPage({
    Key? key,
    required this.diagnosticReportId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var carouselController = useState<CarouselController>(CarouselController());
    var activeIndex = useState<int>(0);
    return Scaffold(
      // appBar: const CustomAppbar(
      //   title: Text(
      //     "Steps to do the scan ",
      //   ),
      // ),
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
          const SizedBox(
            height: AppSize.ks,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.kl),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Padding(
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
              horizontal: AppSize.kl,
              vertical: AppSize.ks,
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
              onPressed: () async {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => UpdateTriageEyeCapturingPage(
                      diagnosticReportId: diagnosticReportId,
                    ),
                  ),
                );
              },
              child: Text(
                activeIndex.value == 6
                    ? context.loc!.proceedToScanButton
                    : context.loc!.skipAndProceedButton,
                style: applyRobotoFont(
                  fontWeight: FontWeight.w500,
                  color: activeIndex.value == 6
                      ? AppColor.white
                      : AppColor.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
