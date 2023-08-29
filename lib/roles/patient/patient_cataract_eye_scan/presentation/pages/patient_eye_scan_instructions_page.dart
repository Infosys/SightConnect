import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../data/local/User_details_model.dart';
import '../../data/local/fake_data_source_cataract.dart';
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
    var counterForSlideShow = useState<int>(0);
    var carouselController = useState<CarouselController>(CarouselController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: CarouselSlider.builder(
            carouselController: carouselController.value,
            itemCount: 7,
            options: CarouselOptions(
              aspectRatio: 0.74,
              viewportFraction: 0.79, //76
              initialPage: counterForSlideShow.value,
              enlargeCenterPage: true,
              enlargeFactor: 0.24,
              enableInfiniteScroll: false,
              onPageChanged: (index, _) {
                log(index.toString());
                counterForSlideShow.value = index;
              },
            ),
            itemBuilder: (context, index, _) {
              return Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  slideShowData[index].image,
                  fit: BoxFit.cover,
                ),
              );
            },
          )),
          SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.pause,
                      color: AppColor.kGrey,
                      size: 20,
                    ),
                    const SizedBox(
                      width: AppSize.kswidth,
                    ),
                    AnimatedSmoothIndicator(
                      onDotClicked: (index) {},
                      activeIndex: counterForSlideShow.value,
                      count: 7,
                      effect: const SlideEffect(
                        activeDotColor: AppColor.kPrimary,
                        radius: 2,
                        dotColor: AppColor.kLightGrey,
                        dotHeight: 5,
                        dotWidth: 20,
                        spacing: 4,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (counterForSlideShow.value > 0 &&
                            counterForSlideShow.value <= 6) {
                          carouselController.value.previousPage();
                          counterForSlideShow.value--;
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 2,
                            color: counterForSlideShow.value == 0
                                ? AppColor.kGrey
                                : AppColor.kPrimary,
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: counterForSlideShow.value == 0
                              ? AppColor.kGrey
                              : AppColor.kPrimary,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (counterForSlideShow.value >= 0 &&
                            counterForSlideShow.value < 6) {
                          counterForSlideShow.value++;
                          carouselController.value.nextPage();
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        // margin: const EdgeInsets.all(8),
                        // padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 2,
                            color: counterForSlideShow.value == 6
                                ? AppColor.kGrey
                                : AppColor.kPrimary,
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: counterForSlideShow.value == 6
                              ? AppColor.kGrey
                              : AppColor.kPrimary,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 10,
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                  fixedSize: const Size(0, 50),
                  side: const BorderSide(
                    color: AppColor.kPrimary,
                  ),
                  backgroundColor: counterForSlideShow.value == 6
                      ? AppColor.kPrimary
                      : AppColor.kWhite),
              onPressed: () {
                log(ref.watch(patientEyeScanProvider).userDetails.toString());

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return PatientEyeCapturePage(
                        eye: Eye.RIGHT_EYE,
                        userDetails:
                            ref.watch(patientEyeScanProvider).userDetails!,
                      );
                    },
                  ),
                );
              },
              child: Text(
                counterForSlideShow.value == 6
                    ? "Proceed to Scan"
                    : "Skip & Proceed to Scan",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: counterForSlideShow.value == 6
                          ? AppColor.kWhite
                          : AppColor.kPrimary,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
