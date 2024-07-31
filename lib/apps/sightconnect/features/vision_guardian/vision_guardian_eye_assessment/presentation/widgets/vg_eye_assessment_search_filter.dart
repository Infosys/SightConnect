/* import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/providers/vg_eye_assessment_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_filter_check_boxes.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void showVtSearchFilter(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.kl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Filter by',
                      style: applyFiraSansFont(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.close))
                  ],
                ),
                content: Consumer(
                  builder: (context, ref, child) {
                    var gender =
                        ref.watch(visionGuardianEyeAssessmentProvider).gender;
                    var location = ref
                        .watch(visionGuardianEyeAssessmentProvider)
                        .location;
                    var status =
                        ref.watch(visionGuardianEyeAssessmentProvider).status;

                    var currentRangeValues = ref
                        .watch(visionGuardianEyeAssessmentProvider)
                        .currentRangeValues;

                    return Wrap(
                      runSpacing: AppSize.kl,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Age',
                              style: applyFiraSansFont(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: AppSize.kl * 40,
                              child: RangeSlider(
                                values: currentRangeValues,
                                max: 100,
                                labels: RangeLabels(
                                  currentRangeValues.start.round().toString(),
                                  currentRangeValues.end.round().toString(),
                                ),
                                onChanged: (RangeValues values) {
                                  ref
                                      .read(
                                          visionGuardianEyeAssessmentProvider)
                                      .setRangeSliderValues(values);
                                },
                              ),
                            ),
                          ],
                        ),
                        VisionGuardianEyeAssessmentFilterCheckBoxes(
                            items: gender, name: "Gender"),
                        VisionGuardianEyeAssessmentFilterCheckBoxes(
                            items: location, name: "Location"),
                        VisionGuardianEyeAssessmentFilterCheckBoxes(
                            items: status, name: "Status"),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                  /* ref
                                      .read(
                                          visionGuardianEyeAssessmentProvider)
                                      .filterEyeAssessment(); */
                                Navigator.of(context).pop();
                              },
                              child: const Text('Save'),
                            ),
                            const SizedBox(
                              width: AppSize.kl,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
            );
          },
        ),
      );
    },
  );
} */