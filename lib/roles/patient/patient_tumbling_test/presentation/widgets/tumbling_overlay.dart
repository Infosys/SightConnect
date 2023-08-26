import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/tumbling_direction_card.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/presentation/widgets/tumbling_direction_rows.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_size.dart';
import '../providers/tumbling_test_instruction_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TumblingOverlay extends ConsumerStatefulWidget {
  const TumblingOverlay({
    super.key,
    required this.child,
    this.isLoading = true,
  });
  final Widget child;
  final bool isLoading;

  @override
  ConsumerState<TumblingOverlay> createState() => _TumblingOverlayState();
}

class _TumblingOverlayState extends ConsumerState<TumblingOverlay> {
  final CarouselController _carouselController = CarouselController();
  List<String> handImagePaths = [
    AppImages.swipeUp,
    AppImages.swipeDown,
    AppImages.swipeLeft,
    AppImages.swipeRight,
  ];
  @override
  Widget build(BuildContext context) {
    final tumblingState = ref.watch(tumblingTestInstructionProvider);
    return Stack(
      children: [
        widget.child,
        if (widget.isLoading && tumblingState.overlay == true)

          //  Filter
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: AppSize.height * 0.5,
                width: AppSize.width * 0.9,

                //  Card
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.kmradius),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSize.kmpadding),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Direction",
                          style: applyFiraSansFont(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                            'Here is how you interpret the directions for each symbol',
                            style: applyRobotoFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF888888))),
                        const SizedBox(height: 20),

                        // Carousel

                        CarouselSlider.builder(
                          carouselController: _carouselController,
                          itemCount: 4,
                          options: CarouselOptions(
                            aspectRatio: 2,
                            viewportFraction: 1.0,
                            initialPage: tumblingState.currentIndex,
                            enableInfiniteScroll: false,
                            onPageChanged: (index, _) {
                              ref
                                  .read(
                                      tumblingTestInstructionProvider.notifier)
                                  .setCurrentIndex(index);
                            },
                          ),

                          //changing direction of image

                          itemBuilder: (context, index, _) {
                            const imagePath = "assets/images/tumbling_e.svg";
                            double rotationAngle = 0.0;

                            if (index == 0) {
                              rotationAngle = 4.7;
                            } else if (index == 1) {
                              rotationAngle = 7.85;
                            } else if (index == 2) {
                              rotationAngle = 3.15;
                            }

                            return TumblingDirectionCard(
                              symbolImage: imagePath,
                              handImage: handImagePaths[index],
                              rotationAngle: rotationAngle,
                            );
                          },
                        ),
                        const SizedBox(height: 5),

                        // Direction Row that shows written direction

                        TumblingDirectionRow(
                            currentIndex: tumblingState.currentIndex),
                        // SizedBox(height : 5),

                        // Row of back and forth button and dots
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: tumblingState.currentIndex > 0
                                    ? () {
                                        _carouselController.animateToPage(
                                          tumblingState.currentIndex - 1,
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.easeInOut,
                                        );
                                      }
                                    : null,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: tumblingState.currentIndex > 0
                                      ? const Color(0xFF296DF6)
                                      : const Color(0xFFDDDDDD),
                                ),
                              ),
                              Row(
                                children: [
                                  for (int i = 0; i < 4; i++)
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Container(
                                        width: 10,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: i == tumblingState.currentIndex
                                              ? const Color(0xFF296DF6)
                                              : Colors.white,
                                          border: Border.all(
                                            color: const Color(0xFF94B6FA),
                                            width: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              IconButton(
                                onPressed: tumblingState.currentIndex < 3
                                    ? () {
                                        _carouselController.animateToPage(
                                          tumblingState.currentIndex + 1,
                                          duration:
                                              const Duration(milliseconds: 300),
                                          curve: Curves.easeInOut,
                                        );
                                      }
                                    : null,
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: tumblingState.currentIndex < 3
                                      ? const Color(0xFF296DF6)
                                      : const Color(0xFFDDDDDD),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // Row of checkbox and start/skip button

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: tumblingState.isCheckboxChecked,
                                  onChanged: (value) {
                                    ref
                                        .read(tumblingTestInstructionProvider
                                            .notifier)
                                        .updateCheckbox(value ?? false);
                                  },
                                ),
                                Text("Don't show again",
                                    style: applyRobotoFont(
                                        fontSize: 14,
                                        color: const Color(0xFF888888),
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            if (tumblingState.currentIndex < 3)
                              TextButton(
                                onPressed: () {
                                  if (tumblingState.currentIndex == 2) {
                                    ref
                                        .read(tumblingTestInstructionProvider
                                            .notifier)
                                        .updateButtonText("Start");
                                  }
                                  _carouselController.animateToPage(
                                    tumblingState.currentIndex + 1,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.blue,
                                ),
                                child: Text(
                                  tumblingState.buttonText,
                                ),
                              ),
                            if (tumblingState.currentIndex == 3)
                              TextButton(
                                onPressed: () {
                                  ref
                                      .read(tumblingTestInstructionProvider
                                          .notifier)
                                      .updateLoading(false);
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.blue,
                                ),
                                child: Text(
                                  tumblingState.currentIndex == 3
                                      ? "Start"
                                      : tumblingState.buttonText,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
