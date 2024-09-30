import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../../shared/constants/app_color.dart';
import '../../../../../../../../shared/constants/app_images.dart';
import '../../../../../../../../shared/constants/app_size.dart';
import '../../../../../../../../shared/theme/text_theme.dart';
import '../../../../widgets/tumbling_e_click_pad.dart';
import '../../../../widgets/visual_acuity_face_distance_page.dart';
import '../widgets/visual_acuity_tumbling_test_right_eye_instruction.dart';

class VisualAcuityDemoPage extends HookConsumerWidget {
  const VisualAcuityDemoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(loc.vaEyeTest),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: AppSize.km,
          ),
          Stack(
            children: [
              Positioned(
                right: 100,
                top: AppSize.height(context) * 0.01,
                child: Center(
                  child: Container(
                    height: AppSize.height(context) * 0.12,
                    width: AppSize.height(context) * 0.12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.blue.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              Center(
                child: SvgPicture.asset(
                  AppImages.tumblingE,
                  height: AppSize.height(context) * 0.14,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            loc.instructions,
            style: applyFiraSansFont(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(35)),
                  color: AppColor.scaffold,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.1),
                      Colors.white.withOpacity(0.05),
                      Colors.transparent,
                      AppColor.scaffold,
                      AppColor.scaffold,
                    ],
                    stops: const [0.0, 0.1, 1, 1, 0.1],
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
                        bottom: 30,
                        left: 30,
                        child: IntrinsicHeight(
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      VisualAcuityFaceDistancePage(
                                    minDistance: 35,
                                    maxDistance: 45,
                                    title: loc.vaDistanceToFace,
                                    onProceed: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const VisualAcuityTumblingRightEyeInstruction(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: AppColor.grey,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Text(
                                loc.skipButton,
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 0,
                        right: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                loc.vaDemoPageInstruction,
                                style: applyRobotoFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  height: AppSize.height(context) * 0.5,
                                  child: TumblingEClickPad(
                                    isRightSelected: true,
                                    onRightClicked: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              VisualAcuityFaceDistancePage(
                                            minDistance: 35,
                                            maxDistance: 45,
                                            title: loc.vaDistanceToFace,
                                            onProceed: () {
                                              Navigator.of(context)
                                                  .pushReplacement(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const VisualAcuityTumblingRightEyeInstruction(),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Positioned(
                                  bottom: 100,
                                  right: 60,
                                  child: SvgPicture.asset(
                                    AppImages.cursor,
                                    height: 100,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}














// import 'dart:math';

// import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_face_distance_page.dart';
// import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
// import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../../../../core/constants/app_color.dart';
// import '../../../../../core/constants/app_images.dart';
// import '../../../../../core/constants/app_size.dart';
// import '../../../../../shared/theme/text_theme.dart';
// import '../../../../../shared/widgets/app_toast.dart';
// import '../../domain/models/enums/tumbling_enums.dart';
// import '../widgets/visual_acuity_tumbling_overlay.dart';

// class VisualAcuityDemoPage extends HookConsumerWidget {
//   const VisualAcuityDemoPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     var startPoint = useState<Offset>(const Offset(0, 0));
//     var endPoint = useState<Offset>(const Offset(0, 0));
//     var dragDirection = useState<QuestionDirection>(QuestionDirection.up);
//     var pointerState = ref.watch(visualAcuityTumblingTestDialogProvider);
//     final loc = context.loc!;
//     var swipeText = useState<String>(loc.vaSwipeUp);
//     var currentDemoImage = useState<SvgPicture>(
//         SvgPicture.asset("assets/images/swipe_gesture_up.svg"));
//     Map<QuestionDirection, dynamic> demoData = {
//       QuestionDirection.down: SvgPicture.asset("assets/images/swipe_down.svg"),
//       QuestionDirection.left: SvgPicture.asset("assets/images/swipe_left.svg"),
//       QuestionDirection.right:
//           SvgPicture.asset("assets/images/swipe_right.svg"),
//     };
//     var tumblingAngle = useState<double>(4.71);
//     var countValue = useState<int>(0);
//     var sliderValue = useState<double>(0.0);

//     return Scaffold(
//       appBar: CustomAppbar(
//         title: Text(loc.vaEyeTest),
//         centerTitle: false,
//       ),
//       body: VisualAcuityTumblingOverlay(
//         child: IgnorePointer(
//           ignoring: !pointerState,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: AppSize.km,
//               ),
//               SizedBox(
//                 height: AppSize.height(context) * 0.2,
//                 child: Center(
//                   child: Transform.rotate(
//                     angle: tumblingAngle.value,
//                     child: SvgPicture.asset(
//                       AppImages.tumblingE,
//                       height: AppSize.height(context) * 0.14,
//                     ),
//                   ),
//                 ),
//               ),
//               Center(
//                 child: Container(
//                   height: 4,
//                   width: AppSize.width(context) * 0.25,
//                   decoration: BoxDecoration(
//                     color: AppColor.primary,
//                     borderRadius: BorderRadius.circular(4),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Expanded(
//                 child: GestureDetector(
//                   onPanStart: (details) {
//                     startPoint.value = details.localPosition;
//                   },
//                   onPanUpdate: (details) {
//                     endPoint.value = details.localPosition;
//                   },
//                   onPanEnd: (details) {
//                     double angleDegrees =
//                         _getAngleOfSwipe(startPoint.value, endPoint.value);

//                     if (angleDegrees >= 60 && angleDegrees <= 120) {
//                       dragDirection.value = QuestionDirection.down;
//                     } else if (angleDegrees >= 150 && angleDegrees <= 210) {
//                       dragDirection.value = QuestionDirection.left;
//                     } else if (angleDegrees >= 240 && angleDegrees <= 300) {
//                       dragDirection.value = QuestionDirection.up;
//                     } else if (angleDegrees >= 330 || angleDegrees <= 30) {
//                       dragDirection.value = QuestionDirection.right;
//                     } else {
//                       //Interactive toast, set [isIgnoring] false.
//                       AppToast.showToast(
//                         context,
//                         loc.swipeGestureError,
//                       );
//                       return;
//                     }

//                     if (countValue.value == 0) {
//                       if (dragDirection.value == QuestionDirection.up) {
//                         currentDemoImage.value =
//                             demoData[QuestionDirection.down];
//                         swipeText.value = loc.vaSwipeDown;
//                         tumblingAngle.value = 7.85;
//                         //slider value 0 repeat transform movement of up, i want a value that makes it rotate 180 to down
//                         sliderValue.value = 180.0;
//                         countValue.value++;
//                       }
//                     } else if (countValue.value == 1) {
//                       if (dragDirection.value == QuestionDirection.down) {
//                         currentDemoImage.value =
//                             demoData[QuestionDirection.left];
//                         swipeText.value = loc.vaSwipeLeft;
//                         tumblingAngle.value = 3.14;
//                         sliderValue.value = 270.0;
//                         countValue.value++;
//                       }
//                     } else if (countValue.value == 2) {
//                       if (dragDirection.value == QuestionDirection.left) {
//                         currentDemoImage.value =
//                             demoData[QuestionDirection.right];
//                         swipeText.value = loc.vaSwipeRight;
//                         tumblingAngle.value = 0.0;
//                         sliderValue.value = 90.0;
//                         countValue.value++;
//                       }
//                     } else if (countValue.value == 3) {
//                       if (dragDirection.value == QuestionDirection.right) {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) =>
//                                 const VisualAcuityFaceDistancePage(),
//                           ),
//                         );
//                       }
//                     }
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: const BorderRadius.all(Radius.circular(35)),
//                       color: AppColor.scaffold,
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.black
//                               .withOpacity(0.1), // Shadow color at the top
//                           Colors.white.withOpacity(0.05),
//                           Colors.transparent, // Shadow color with less opacity
//                           AppColor.scaffold,
//                           AppColor.scaffold, // Original color of the container
//                         ],
//                         stops: const [
//                           0.0, // Shadow starts at the top of the container
//                           0.1,
//                           1, // Less opaque shadow starts at 20% of the container
//                           1,
//                           0.1, // Original color starts from 10% of the container
//                         ],
//                       ),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: const BorderRadius.only(
//                         topLeft: Radius.circular(35),
//                         topRight: Radius.circular(35),
//                       ),
//                       child: Stack(
//                         fit: StackFit.expand,
//                         clipBehavior: Clip.none,
//                         children: [
//                           SvgPicture.asset(
//                             "assets/images/app_bg.svg",
//                             fit: BoxFit.fill,
//                           ),
//                           Positioned(
//                             top: 60,
//                             left: 0,
//                             right: 0,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Center(
//                                   child: Text(
//                                     loc.instructions,
//                                     style: applyRobotoFont(
//                                       fontSize: 14,
//                                       color: AppColor.grey,
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 20,
//                                 ),
//                                 Center(
//                                   child: Text(
//                                     swipeText.value,
//                                     style: applyFiraSansFont(
//                                       fontSize: 24,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                 ),
//                                 Center(
//                                   child: Transform.rotate(
//                                     angle: (pi / 180) * sliderValue.value,
//                                     child: Image.asset(
//                                       "assets/images/animation_up.gif",
//                                       height: AppSize.height(context) * 0.4,
//                                     ),
//                                   ),
//                                 ),
//                                 Transform.translate(
//                                   offset: const Offset(20, -40),
//                                   child: OutlinedButton(
//                                     onPressed: () {
//                                       Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                           builder: (context) =>
//                                               const VisualAcuityFaceDistancePage(),
//                                         ),
//                                       );
//                                     },
//                                     style: OutlinedButton.styleFrom(
//                                       side: const BorderSide(
//                                         color: AppColor.grey,
//                                       ),
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(30),
//                                       ),
//                                     ),
//                                     child: Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 12.0),
//                                       child: Text(
//                                         loc.skipButton,
//                                         style: applyRobotoFont(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.w500,
//                                           color: AppColor.grey,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   double _getAngleOfSwipe(Offset startPoint, Offset endPoint) {
//     double dx = endPoint.dx - startPoint.dx;
//     double dy = endPoint.dy - startPoint.dy;

//     double angleRadians = atan2(dy, dx);

//     double angleDegrees = angleRadians * 180 / pi;
//     if (angleDegrees < 0) {
//       angleDegrees += 360;
//     }
//     return angleDegrees;
//   }
// }
