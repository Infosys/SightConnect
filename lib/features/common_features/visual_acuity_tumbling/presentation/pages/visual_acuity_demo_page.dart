import 'dart:math';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_face_distance_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';
import '../../../../../shared/widgets/app_toast.dart';
import '../../domain/models/enums/tumbling_enums.dart';

class VisualAcuityDemoPage extends HookWidget {
  const VisualAcuityDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var startPoint = useState<Offset>(const Offset(0, 0));
    var endPoint = useState<Offset>(const Offset(0, 0));
    var dragDirection = useState<QuestionDirection>(QuestionDirection.up);
    final loc = context.loc!;
    var swipeText = useState<String>("Swipe Up");
    var currentDemoImage = useState<SvgPicture>(
        SvgPicture.asset("assets/images/swipe_gesture_up.svg"));
    Map<QuestionDirection, dynamic> demoData = {
      QuestionDirection.down: SvgPicture.asset("assets/images/swipe_down.svg"),
      QuestionDirection.left: SvgPicture.asset("assets/images/swipe_left.svg"),
      QuestionDirection.right:
          SvgPicture.asset("assets/images/swipe_right.svg"),
    };
    var tumblingAngle = useState<double>(4.71);
    var countValue = useState<int>(0);
    var sliderValue = useState<double>(0.0);

    return Scaffold(
      appBar: const CustomAppbar(
        title: Text("Eye Test"),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: AppSize.kmheight,
          ),
          SizedBox(
            height: AppSize.height(context) * 0.2,
            child: Center(
              child: Transform.rotate(
                angle: tumblingAngle.value,
                child: SvgPicture.asset(
                  AppImages.tumblingE,
                  height: AppSize.height(context) * 0.14,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 4,
              width: AppSize.width(context) * 0.25,
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GestureDetector(
              onPanStart: (details) {
                startPoint.value = details.localPosition;
              },
              onPanUpdate: (details) {
                endPoint.value = details.localPosition;
              },
              onPanEnd: (details) {
                double angleDegrees =
                    _getAngleOfSwipe(startPoint.value, endPoint.value);

                if (angleDegrees >= 60 && angleDegrees <= 120) {
                  dragDirection.value = QuestionDirection.down;
                } else if (angleDegrees >= 150 && angleDegrees <= 210) {
                  dragDirection.value = QuestionDirection.left;
                } else if (angleDegrees >= 240 && angleDegrees <= 300) {
                  dragDirection.value = QuestionDirection.up;
                } else if (angleDegrees >= 330 || angleDegrees <= 30) {
                  dragDirection.value = QuestionDirection.right;
                } else {
                  //Interactive toast, set [isIgnoring] false.
                  AppToast.showToast(
                    context,
                    loc.swipeGestureError,
                  );
                  return;
                }

                if (countValue.value == 0) {
                  if (dragDirection.value == QuestionDirection.up) {
                    currentDemoImage.value = demoData[QuestionDirection.down];
                    swipeText.value = "Swipe Down";
                    tumblingAngle.value = 7.85;
                    //slider value 0 represt tranform movement of up, i want a value that makes it rotate 180 to down
                    sliderValue.value = 180.0;
                    countValue.value++;
                  }
                } else if (countValue.value == 1) {
                  if (dragDirection.value == QuestionDirection.down) {
                    currentDemoImage.value = demoData[QuestionDirection.left];
                    swipeText.value = "Swipe Left";
                    tumblingAngle.value = 3.14;
                    sliderValue.value = 270.0;
                    countValue.value++;
                  }
                } else if (countValue.value == 2) {
                  if (dragDirection.value == QuestionDirection.left) {
                    currentDemoImage.value = demoData[QuestionDirection.right];
                    swipeText.value = "Swipe Right";
                    tumblingAngle.value = 0.0;
                    sliderValue.value = 90.0;
                    countValue.value++;
                  }
                } else if (countValue.value == 3) {
                  if (dragDirection.value == QuestionDirection.right) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const VisualAcuityFaceDistancePage(),
                      ),
                    );
                  }
                }
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
                    children: [
                      SvgPicture.asset(
                        "assets/images/app_bg.svg",
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        top: 60,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Text("Instructions",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.grey,
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              swipeText.value,
                              style: applyFiraSansFont(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Transform.rotate(
                              angle: (pi / 180) * sliderValue.value,
                              child: Image.asset(
                                "assets/images/animation_up.gif",
                                height: AppSize.height(context) * 0.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
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
}
