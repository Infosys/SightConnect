import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/models/distance_tumbling_models.dart';
import '../../domain/models/enums/distance_tumbling_enums.dart';
import '../providers/distance_acuity_notifier_provider.dart';
import '../providers/distance_visual_acuity_test_provider.dart';
import 'dart:math';

import 'distance_visual_acuity_dialog.dart';

class DistanceSwipeGestureCard extends HookConsumerWidget {
  const DistanceSwipeGestureCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var startPoint = useState<Offset>(const Offset(0, 0));
    var endPoint = useState<Offset>(const Offset(0, 0));
    var dragDirection = useState<QuestionDirection>(QuestionDirection.up);
    var model = ref.watch(distanceTumblingTestProvider);
    final loc = context.loc!;
    final distance = ref.watch(distanceAcuityNotifierProvider);
    final minSwipeLength = AppSize.width(context) * 0.1;

    ref.listen(distanceTumblingTestProvider, (previous, next) async {
      if (next.currentEye == Eye.right && next.isGameOver!) {
        logger.d("Game Over for right eye");
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return DistanceVisualAcuityDialog.showEyeInstructionDialog(
                context, next.currentEye!);
          },
        );
        next.startGame(Eye.left);
      }
    });

    return GestureDetector(
      onTap: () {},
      onPanStart: (details) {
        startPoint.value = details.localPosition;
      },
      onPanUpdate: (details) {
        endPoint.value = details.localPosition;
      },
      onPanEnd: (details) {
        double distanceBetweenPoints =
            _getDistanceBetweenPoints(startPoint.value, endPoint.value);

        logger.d("distance between start and end point $distanceBetweenPoints");

        if (distanceBetweenPoints < minSwipeLength) {
          AppToast.showToast(
            context,
            "Swipe is too short",
          );
          return;
        }

        final value = _getSwipeDirection(startPoint.value, endPoint.value);

        if (value == null) {
          AppToast.showToast(context, loc.swipeGestureError);
          return;
        } else {
          dragDirection.value = value;
        }

        if (!distance.isDistanceValid()) {
          return;
        }

        model.handUserResponse(
          UserResponse(
            levelNumber: model.currentLevel!,
            swipeDirection: dragDirection.value,
            mode: model.gameMode!,
            questionIndex: model.currentIndex!,
            isUserResponseCorrect: false,
          ),
        );

        _handleGameOver(context, model);
      },
      child: Container(
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
                    ? Center(
                        child: Text(
                          loc.swipeGestureCardText,
                          style: applyRobotoFont(
                            fontSize: 14,
                            color: AppColor.grey,
                          ),
                        ),
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
      ),
    );
  }

  QuestionDirection? _getSwipeDirection(Offset startPoint, Offset endPoint) {
    double angleDegrees = _getAngleOfSwipe(startPoint, endPoint);

    if (angleDegrees >= 60 && angleDegrees <= 120) {
      return QuestionDirection.down;
    } else if (angleDegrees >= 150 && angleDegrees <= 210) {
      return QuestionDirection.left;
    } else if (angleDegrees >= 240 && angleDegrees <= 300) {
      return QuestionDirection.up;
    } else if (angleDegrees >= 330 || angleDegrees <= 30) {
      return QuestionDirection.right;
    } else {
      return null;
    }
  }

  Future<void> _handleGameOver(
    BuildContext context,
    DistanceVisualAcuityTestProvider model,
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
          return DistanceVisualAcuityDialog.showEyeInstructionDialog(
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
  }

  double _getAngleOfSwipe(Offset startPoint, Offset endPoint) {
    double dx = endPoint.dx - startPoint.dx;
    double dy = endPoint.dy - startPoint.dy;

    double angleRadians = atan2(dy, dx);

    double angleDegrees = angleRadians * 180 / pi;
    if (angleDegrees < 0) {
      angleDegrees += 360;
    }
    return angleDegrees;
  }

  double _getDistanceBetweenPoints(Offset startPoint, Offset endPoint) {
    double swipeLength = (endPoint - startPoint).distance;
    return swipeLength;
  }
}
