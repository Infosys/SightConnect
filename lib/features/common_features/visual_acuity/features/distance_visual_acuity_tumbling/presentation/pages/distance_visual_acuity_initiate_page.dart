import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity/widgets/swipe_gesture_card.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity/widgets/top_reading_card.dart';
import 'package:eye_care_for_all/l10n/app_localizations.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../../../../../../core/providers/global_visual_acuity_provider.dart';
import '../../../../../../../main.dart';
import '../../../../../triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import '../../../../domain/enums/tumbling_enums.dart';
import '../../../../domain/models/tumbling_models.dart';
import '../../../../providers/distance_notifier_provider.dart';
import '../../../visual_acuity_tumbling/presentation/widgets/helper/vision_acuity_show_instruction_bottom_up_sheet.dart';
import '../../../../widgets/touch_gesture_card.dart';
import '../providers/distance_visual_acuity_test_provider.dart';
import '../widgets/distance_visual_acuity_dialog.dart';

class DistanceVisualAcuityInitiatePage extends ConsumerWidget {
  static const String routeName = "/distance-tumbling-test-initiate";
  const DistanceVisualAcuityInitiatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final isTriageMode = ref.watch(globalProvider).isTriageMode();

    return PopScope(
      canPop: false,
      onPopInvoked: (value) async {
        if (value) {
          return;
        }

        if (isTriageMode) {
          showDialog(
            context: context,
            builder: (context) => TriageExitAlertBox(
              content: AppLocalizations.of(context)!.visualAcuityExitDialog,
            ),
          );
        } else {
          Navigator.of(context).pop();
        }
      },
      child: TraceableWidget(
        actionName: 'Distance VisualAcuity Test',
        child: PopScope(
          canPop: false,
          child: Scaffold(
            backgroundColor: AppColor.white,
            key: scaffoldKey,
            drawer: const TriageStepsDrawer(),
            appBar: !isTriageMode
                ? CustomAppbar(
                    leadingIcon: IconButton(
                      splashRadius: 20,
                      onPressed: () {
                        if (isTriageMode) {
                          showDialog(
                            context: context,
                            builder: (context) => TriageExitAlertBox(
                              content: AppLocalizations.of(context)!
                                  .visualAcuityExitDialog,
                            ),
                          );
                        } else {
                          Navigator.of(context).pop();
                        }
                      },
                      icon: const Icon(CupertinoIcons.back),
                    ),
                    titleSpacing: 0,
                    actions: const [],
                    centerTitle: false,
                    title: const Text("Visual Acuity Test - Long Distance"),
                  )
                : CustomAppbar(
                    leadingWidth: 60,
                    titleSpacing: 0.0,
                    actions: [
                      IconButton(
                        onPressed: () {
                          TextScalePopupMenu.show(context, ref);
                        },
                        icon: SvgPicture.asset(
                          "assets/drawer_icons/accessibility.svg",
                          height: 22,
                        ),
                      ),
                    ],
                    centerTitle: false,
                    leadingIcon: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Image.asset(
                          AppIcon.hamburgerIcon,
                        ),
                      ),
                    ),
                    title: Text(
                      "Visual Acuity Test - Long Distance",
                      style: applyFiraSansFont(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
            body: Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                ref.listen(distanceTumblingTestProvider,
                    (previous, next) async {
                  if (next.currentEye == Eye.right && next.isGameOver!) {
                    logger.d("Game Over for right eye");
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return DistanceVisualAcuityDialog
                            .showEyeInstructionDialog(
                                context, next.currentEye!);
                      },
                    );
                    next.startGame(Eye.left);
                  }
                });
                var model = ref.watch(distanceTumblingTestProvider);
                bool isThreeMeters =
                    ref.watch(globalVisualAcuityProvider).isThreeMeter;
                var distanceData = ref.watch(distanceNotifierProvider);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TopReadingCard(
                      currentLevel: model.level!,
                      isThreeMeters: isThreeMeters,
                      currentEye: model.currentEye!,
                      currentIndex: model.currentIndex!,
                      isShortDistance: ref
                          .watch(globalVisualAcuityProvider)
                          .isShortDistanceTest,
                    ),
                    Expanded(
                      child: visionAcuityIsSwipeMode
                          ? SwipeGestureCard(
                              isDistanceValid:
                                  distanceData.isLongDistanceValid(),
                              handleUserResponse:
                                  (QuestionDirection swipeDirection,
                                      bool isUserResponseCorrect) {
                                model.handUserResponse(
                                  UserResponse(
                                    levelNumber: model.currentLevel!,
                                    swipeDirection: swipeDirection,
                                    mode: model.gameMode!,
                                    questionIndex: model.currentIndex!,
                                    isUserResponseCorrect:
                                        isUserResponseCorrect,
                                  ),
                                );
                              },
                              handleGameOver: (BuildContext context) {
                                if (!model.isGameOver!) {
                                  return;
                                }
                                if (model.currentEye == Eye.left) {
                                  logger.d("Game Over for left eye");
                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) {
                                      return DistanceVisualAcuityDialog
                                          .showEyeInstructionDialog(
                                              context, model.currentEye!);
                                    },
                                  );
                                  model.startGame(Eye.both);
                                } else if (model.currentEye == Eye.both) {
                                  logger.d("Game Over for both eyes");
                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) {
                                      return const DistanceVisualAcuitySuccessDialog();
                                    },
                                  );
                                }
                              },
                              distanceText:
                                  distanceData.getLongDistanceText(context),
                            )
                          : TouchGestureCard(
                              isDistanceValid:
                                  distanceData.isLongDistanceValid(),
                              handleUserResponse:
                                  (QuestionDirection swipeDirection,
                                      bool isUserResponseCorrect) {
                                model.handUserResponse(
                                  UserResponse(
                                    levelNumber: model.currentLevel!,
                                    swipeDirection: swipeDirection,
                                    mode: model.gameMode!,
                                    questionIndex: model.currentIndex!,
                                    isUserResponseCorrect:
                                        isUserResponseCorrect,
                                  ),
                                );
                              },
                              handleGameOver: (BuildContext context) async {
                                if (!model.isGameOver!) {
                                  return;
                                }
                                if (model.currentEye == Eye.left) {
                                  logger.d("Game Over for left eye");
                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) {
                                      return DistanceVisualAcuityDialog
                                          .showEyeInstructionDialog(
                                              context, model.currentEye!);
                                    },
                                  ).then((value) =>
                                      visionInstructionShowBottomUpSheet(
                                          context: context));
                                  model.startGame(Eye.both);
                                } else if (model.currentEye == Eye.both) {
                                  logger.d("Game Over for both eyes");
                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) {
                                      return const DistanceVisualAcuitySuccessDialog();
                                    },
                                  );
                                }
                              },
                              distanceText:
                                  distanceData.getLongDistanceText(context),
                              eye: model.currentEye!,
                            ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
