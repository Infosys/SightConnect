/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/pages/face_distance_detector.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:superapp_scanner/constants/app_color.dart';

class VisualAcuityFaceDistancePage extends StatelessWidget {
  const VisualAcuityFaceDistancePage(
      {super.key,
      required this.minDistance,
      required this.maxDistance,
      required this.onProceed,
      required this.title});

  final int minDistance;
  final int maxDistance;
  final Function onProceed;
  final String title;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return FaceDistanceDetector(
      onCameraCreated: (controller, paint, distance, isLoading) {
        final isValidDistance = distance != null &&
            distance >= minDistance &&
            distance <= maxDistance;
        return Scaffold(
          appBar: CustomAppbar(
            title: Text(title),
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
                  loc.vaDistanceToFaceInstruction(minDistance + 5),
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
                        left: AppSize.width(context) * 0.1,
                        right: AppSize.width(context) * 0.1,
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
                                  ? '${loc.vaDistanceToFace}: $distance cm'
                                  : loc.vaBringFaceInsideBox,
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
                                  onProceed();
                                  // Navigator.of(context).pushReplacement(
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         const DistanceVisualAcuityDistanceSelectionPage(),
                                  //   ),
                                  // );
                                }
                              : null,
                          child: Text(loc.proceedButton),
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
