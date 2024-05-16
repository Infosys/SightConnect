import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../visual_acuity_cover_eye.dart';

Future<T?> visionInstructionShowBottomUpSheet<T>({
  required BuildContext context,
  bool isRightEyeCovered = false,
  bool isLeftEyeCovered = false,
}) {
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
                            ? 'Cover your right eye and tap on the E matching the image on top'
                            : isRightEyeCovered
                                ? 'Cover your left eye and tap on the E matching the image on top'
                                : 'View with both eyes and tap on the E matching the image on top.',
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
                              child: const Text('Proceed'),
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
