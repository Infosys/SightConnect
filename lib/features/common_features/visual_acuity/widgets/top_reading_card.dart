import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
// import 'package:eye_care_for_all/core/services/ios_device_info_service.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/pages/face_distance_detector.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../main.dart';
import '../domain/enums/tumbling_enums.dart';
import '../domain/models/tumbling_models.dart';

class TopReadingCard extends StatelessWidget {
  const TopReadingCard({
    required this.currentLevel,
    required this.isThreeMeters,
    required this.currentEye,
    required this.currentIndex,
    required this.isShortDistance,
    Key? key,
  }) : super(key: key);

  final Level currentLevel;
  final bool isThreeMeters;
  final Eye currentEye;
  final int currentIndex;
  final bool isShortDistance;

  @override
  Widget build(BuildContext context) {

    // var model = ref.watch(distanceTumblingTestProvider);
    // var optoTypeData = ref.watch(globalVisualAcuityProvider);
    // var currentLevel = model.level;
    // final loc = context.loc!;
    // final physicalities = Millimeters.of(context);
    // final mm = physicalities.mm;
    // var scaleFactor = IOSDeviceInfoService.getOptoTypeScaleFactor(context);
    // final optoTypeSize = mm(currentLevel!.size * 10 * scaleFactor);

    double optoTypeSize;
    int lowerLimit = isShortDistance ? 35 : 0;
    int upperLimit = isShortDistance ? 45 : 1000;

    if (isShortDistance == false) {
      if (isThreeMeters == true) {
        optoTypeSize = currentLevel.sizeThreeMeters! * 10 * 160 * 0.03937;
      } else {
        optoTypeSize = currentLevel.sizeTwoMeters! * 10 * 160 * 0.03937;
      }
    } else {
      optoTypeSize = currentLevel.size * 10 * 160 * 0.03937;
    }
    return FaceDistanceDetector(
      showLoader: false,
      onCameraCreated: (controller, paint, distance, isLoading) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.kl),
            color: AppColor.white,
          ),
          child: Container(
            // height: AppSize.height(context) * 0.4, //height for 2m distance
            height: isShortDistance
                ? AppSize.height(context) * 0.3
                : AppSize.height(context) * 0.46,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.km - 3,
              vertical: AppSize.ks,
            ),
            // add innershadow
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.kl),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 9,
                  child: Center(
                    child: Wrap(
                      runAlignment: WrapAlignment.center,
                      runSpacing: 10,
                      spacing: optoTypeSize,
                      children: List.generate(
                        currentLevel.questions.length,
                        (index) {
                          var question = currentLevel.questions[index];

                          return _RotatedTumblingE(
                            size: optoTypeSize,
                            question: question,
                            index: index,
                            selectedIndex: currentIndex,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${currentLevel.snellerFraction}  ",
                              style: applyRobotoFont(
                                  color: AppColor.grey, fontSize: 16),
                            ),
                            Text(
                              currentEye == Eye.left
                                  ? context.loc!.leftEyeString
                                  : (currentEye == Eye.right
                                      ? context.loc!.rightEyeString
                                      : context.loc!.bothEyesString),
                              style: applyFiraSansFont(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  distance != null ? '$distance cm' : 'No Face',
                                  style: applyRobotoFont(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: (distance != null &&
                                            (distance >= lowerLimit &&
                                                distance <= upperLimit))
                                        ? AppColor.green
                                        : AppColor.red,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSize.km),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _RotatedTumblingE extends StatelessWidget {
  const _RotatedTumblingE({
    required this.size,
    required this.question,
    required this.index,
    required this.selectedIndex,
  });

  final double size;
  final Question question;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: question.angle,
          child: SvgPicture.asset(
            AppImages.tumblingE,
            width: size,
            height: size,
            colorFilter: ColorFilter.mode(
              question.questionStatus == QuestionStatus.unattempted
                  ? AppColor.black
                  : question.questionStatus == QuestionStatus.right
                      ? AppColor.green
                      : AppColor.red,
              BlendMode.srcIn,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Visibility(
          visible: index == selectedIndex,
          child: Container(
            height: 4,
            width: size,
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        )
      ],
    );
  }
}
