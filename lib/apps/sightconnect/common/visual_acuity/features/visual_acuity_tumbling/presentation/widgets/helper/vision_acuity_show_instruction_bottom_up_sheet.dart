/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../visual_acuity_cover_eye.dart';

Future<T?> visionInstructionShowBottomUpSheet<T>({
  required BuildContext context,
  bool isRightEyeCovered = false,
  bool isLeftEyeCovered = false,
}) {
  final loc = context.loc!;
  return showModalBottomSheet(
    context: context,
    isDismissible: false,
    enableDrag: false,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    builder: (context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.55,
        minChildSize: 0.5,
        maxChildSize: 0.8,
        builder: (context, controller) {
          return ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Padding(
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      const SizedBox(height: AppSize.km),
                      Text(
                        isLeftEyeCovered
                            ? loc
                                .vaShowInstructionBottomSheetRightEyeInstruction
                            : isRightEyeCovered
                                ? loc
                                    .vaShowInstructionBottomSheetLeftEyeInstruction
                                : loc
                                    .vaShowInstructionBottomSheetBothEyesInstruction,
                        textAlign: TextAlign.center,
                        style: applyFiraSansFont(
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: AppSize.km),
                      VisualAcuityCoverEye(
                        height: 130,
                        isRightEyeCovered: isRightEyeCovered,
                        isLeftEyeCovered: isLeftEyeCovered,
                      ),
                      const SizedBox(height: AppSize.km),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(loc
                                  .vaShowInstructionBottomSheetProceedButton),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSize.km)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
