import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/visual_acuity_tumbling_test_left_eye_instruction.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/pages/face_distance_detector.dart';
import 'package:flutter/material.dart';
import 'package:superapp_scanner/constants/app_color.dart';

class VisualAcuityFaceDistancePage extends StatelessWidget {
  const VisualAcuityFaceDistancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FaceDistanceDetector(
      onCameraCreated: (controller, paint, distance, isLoading) {
        final isValidDistance =
            distance != null && distance >= 35 && distance <= 45;
        return Scaffold(
          appBar: CustomAppbar(
            title: const Text('Distance to Face'),
            leadingIcon: IconButton(
              splashRadius: 20,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  "Please keep your face at 40 cm from the screen",
                  textAlign: TextAlign.center,
                  style: applyRobotoFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.topCenter,
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: controller.value.isInitialized
                              ? (Platform.isAndroid || Platform.isIOS)
                                  ? CameraPreview(
                                      controller,
                                      child: paint,
                                    )
                                  : CameraPreview(
                                      controller,
                                    )
                              : Container(),
                        ),
                      ),
                      Positioned(
                        top: AppSize.height(context) * 0.06,
                        left: AppSize.width(context) * 0.2,
                        right: AppSize.width(context) * 0.2,
                        child: Visibility(
                          visible: Platform.isAndroid || Platform.isIOS,
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black.withOpacity(0.8),
                            ),
                            child: AutoSizeText(
                              distance != null
                                  ? 'Distance to Face: $distance cm'
                                  : 'Bring your face inside the box',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: isValidDistance
                                    ? const Color(0xff22BF85)
                                    : AppColor.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: AppSize.height(context) * 0.04,
                        left: AppSize.width(context) * 0.1,
                        right: AppSize.width(context) * 0.1,
                        child: ElevatedButton(
                          onPressed: isValidDistance
                              ? () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const VisualAcuityTumblingLeftEyeInstruction(),
                                    ),
                                  );
                                }
                              : null,
                          child: const Text("Proceed"),
                        ),
                      )
                    ],
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
