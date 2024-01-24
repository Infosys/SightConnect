import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/services/shared_preference.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../core/constants/app_size.dart';

enum _TumblingDirection {
  Up,
  Down,
  Left,
  Right,
}

var visualAcuityTumblingTestDialogProvider = StateProvider<bool>((ref) {
  return SharedPreferenceService.getDontShowVisualAcuityStatus;
});

class VisualAcuityTumblingOverlay extends ConsumerStatefulWidget {
  const VisualAcuityTumblingOverlay({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  ConsumerState<VisualAcuityTumblingOverlay> createState() =>
      _TumblingOverlayState();
}

class _TumblingOverlayState extends ConsumerState<VisualAcuityTumblingOverlay> {
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Stack(
      children: [
        widget.child,
        Visibility(
          visible: !ref.watch(visualAcuityTumblingTestDialogProvider),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: AppSize.width(context) * 0.9,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.kmradius),
                  ),
                  child: Padding(
                    padding: Responsive.isMobile(context)
                        ? const EdgeInsets.all(AppSize.kmpadding)
                        : const EdgeInsets.all(AppSize.klpadding),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          loc.overlayHeaderDirection,
                          style: applyFiraSansFont(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: AppSize.ksheight,
                        ),
                        Text(
                          loc.overlayDescription,
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF888888),
                          ),
                        ),
                        const SizedBox(height: AppSize.kmheight),
                        const _TumblingCarousel(),
                      ],
                    ),
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

class _TumblingCarousel extends HookConsumerWidget {
  const _TumblingCarousel();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var carouselController = useState<CarouselController>(CarouselController());
    var currentIndex = useState<int>(0);
    var isCheckboxChecked = useState<bool>(false);
    var buttonName = useState<String>(context.loc!.skipButton);

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
                buttonName.value = AppLocalizations.of(context)!.startButton;
              } else {
                buttonName.value = AppLocalizations.of(context)!.skipButton;
              }
            },
          ),
          itemBuilder: (context, index, _) {
            return _TumblingDirectionCard(
              symbolImage: AppImages.tumblingE,
              handImage: _getHandImage(index),
              rotationAngle: _getRotationAngle(index),
            );
          },
        ),
        _TumblingDirectionRow(
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
                      ? AppColor.primary
                      : const Color(0xFFDDDDDD),
                ),
              ),
            ),
            AnimatedSmoothIndicator(
              onDotClicked: (index) {},
              activeIndex: currentIndex.value,
              count: 4,
              effect: const WormEffect(
                activeDotColor: AppColor.primary,
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
                      ? AppColor.primary
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
                    onChanged: (value) async {
                      await onDontShowAgainCheckChanged(
                        isCheckboxChecked,
                        value,
                      );
                    },
                  ),
                  InkWell(
                    onTap: () async {
                      await onDontShowAgainCheckChanged(
                        isCheckboxChecked,
                        !isCheckboxChecked.value,
                      );
                    },
                    child: Text(
                      AppLocalizations.of(context)!.dontShowAgainString,
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Consumer(
              builder: (context, ref, child) {
                return TextButton(
                  onPressed: () {
                    ref
                        .read(visualAcuityTumblingTestDialogProvider.notifier)
                        .state = true;
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: AppColor.primary,
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

  Future<void> onDontShowAgainCheckChanged(
      ValueNotifier<bool> isCheckboxChecked, bool? value) async {
    isCheckboxChecked.value = value!;
    if (value) {
      await SharedPreferenceService.setDontShowVisualAcuityStatus(true);
    } else {
      await SharedPreferenceService.setDontShowVisualAcuityStatus(false);
    }
  }
}

class _TumblingDirectionCard extends StatelessWidget {
  const _TumblingDirectionCard({
    required this.symbolImage,
    required this.handImage,
    required this.rotationAngle,
  });

  final String symbolImage;
  final String handImage;
  final double rotationAngle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Transform.rotate(
                angle: rotationAngle,
                child: SvgPicture.asset(
                  symbolImage,
                  height: AppSize.height(context) * 0.2,
                ),
              ),
            ),
            SizedBox(
              width: AppSize.width(context) * 0.05,
            ),
            Flexible(
              child: SvgPicture.asset(
                handImage,
                height: AppSize.height(context) * 0.2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _TumblingDirectionRow extends StatelessWidget {
  final int currentIndex;

  const _TumblingDirectionRow({required this.currentIndex});

  _TumblingDirection getDirection(int index) {
    switch (index) {
      case 0:
        return _TumblingDirection.Up;
      case 1:
        return _TumblingDirection.Down;
      case 2:
        return _TumblingDirection.Left;
      case 3:
        return _TumblingDirection.Right;
      default:
        return _TumblingDirection.Up;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
      child: Row(
        children: [
          Text(
            AppLocalizations.of(context)!.overlaySymbolDirectionText,
            style: applyRobotoFont(
              fontSize: 18,
              color: const Color(0xFF888888),
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            getDirection(currentIndex).toString().split('.').last == 'Up'
                ? AppLocalizations.of(context)!.directionUp
                : getDirection(currentIndex).toString().split('.').last ==
                        'Down'
                    ? AppLocalizations.of(context)!.directionDown
                    : getDirection(currentIndex).toString().split('.').last ==
                            'Left'
                        ? AppLocalizations.of(context)!.directionLeft
                        : getDirection(currentIndex)
                                    .toString()
                                    .split('.')
                                    .last ==
                                'Right'
                            ? AppLocalizations.of(context)!.directionRight
                            : AppLocalizations.of(context)!.directionUp,
            style: applyRobotoFont(
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
