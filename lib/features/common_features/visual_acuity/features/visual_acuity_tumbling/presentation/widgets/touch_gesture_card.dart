import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';

import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/enums/tumbling_enums.dart';
import '../../../../domain/models/tumbling_models.dart';
import '../../../../providers/distance_notifier_provider.dart';
import '../providers/visual_acuity_test_provider.dart';
import 'helper/vision_acuity_show_instruction_bottom_up_sheet.dart';
import 'tumbling_e_click_pad.dart';
import 'visual_acuity_dialog.dart';

class TouchGestureCard extends HookConsumerWidget {
  const TouchGestureCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(tumblingTestProvider);

    final distance = ref.watch(distanceNotifierProvider);

    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(35)),
        color: AppColor.scaffold,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.1), // Shadow color at the top
            Colors.white.withOpacity(0.05),
            Colors.transparent, // Shadow color with less opacity
            AppColor.scaffold,
            AppColor.scaffold, // Original color of the container
          ],
          stops: const [
            0.0, // Shadow starts at the top of the container
            0.1,
            1, // Less opaque shadow starts at 20% of the container
            1,
            0.1, // Original color starts from 10% of the container
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/app_bg.svg",
              fit: BoxFit.fill,
            ),
            Positioned(
              child: distance.isDistanceValid()
                  ? Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: AppSize.kl,
                            horizontal: AppSize.km,
                          ),
                          child: Text(
                            model.currentEye == Eye.left
                                ? 'Cover your right eye and tap on the E matching the image on top'
                                : model.currentEye == Eye.right
                                    ? 'Cover your left eye and tap on the E matching the image on top'
                                    : 'View with both eyes and tap on the E matching the image on top.',
                            style: applyRobotoFont(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TumblingEClickPad(
                          onBottomClicked: () {
                            model.handUserResponse(
                              UserResponse(
                                levelNumber: model.currentLevel!,
                                swipeDirection: QuestionDirection.down,
                                mode: model.gameMode!,
                                questionIndex: model.currentIndex!,
                                isUserResponseCorrect: false,
                              ),
                            );
                            _handleGameOver(context, model);
                          },
                          onLeftClicked: () {
                            model.handUserResponse(
                              UserResponse(
                                levelNumber: model.currentLevel!,
                                swipeDirection: QuestionDirection.left,
                                mode: model.gameMode!,
                                questionIndex: model.currentIndex!,
                                isUserResponseCorrect: false,
                              ),
                            );
                            _handleGameOver(context, model);
                          },
                          onRightClicked: () {
                            model.handUserResponse(
                              UserResponse(
                                levelNumber: model.currentLevel!,
                                swipeDirection: QuestionDirection.right,
                                mode: model.gameMode!,
                                questionIndex: model.currentIndex!,
                                isUserResponseCorrect: false,
                              ),
                            );
                            _handleGameOver(context, model);
                          },
                          onTopClicked: () {
                            model.handUserResponse(
                              UserResponse(
                                levelNumber: model.currentLevel!,
                                swipeDirection: QuestionDirection.up,
                                mode: model.gameMode!,
                                questionIndex: model.currentIndex!,
                                isUserResponseCorrect: false,
                              ),
                            );
                            _handleGameOver(context, model);
                          },
                        ),
                        Row(
                          children: [
                            const SizedBox.shrink(),
                            const Spacer(),
                            OutlinedButton(
                                onPressed: () {},
                                child: const Text('I Can’t see'))
                          ],
                        )
                      ],
                    )
                  : Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: AppSize.width(context) * 0.8,
                          decoration: BoxDecoration(
                            color: AppColor.black.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            distance.getDistanceText(context),
                            textAlign: TextAlign.center,
                            style: applyRobotoFont(
                              fontSize: 16,
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleGameOver(
    BuildContext context,
    VisualAcuityTestProvider model,
  ) async {
    if (!model.isGameOver!) {
      return;
    }
    if (model.currentEye == Eye.left) {
      logger.d("Game Over for left eye");
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return VisualAcuityDialog.showEyeInstructionDialog(
              context, model.currentEye!);
        },
      ).then((value) => visionInstructionShowBottomUpSheet(context: context));

      model.startGame(Eye.both);
    } else if (model.currentEye == Eye.both) {
      logger.d("Game Over for both eyes");
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return const VisualAcuitySuccessDialog();
        },
      );
    }
  }
}
