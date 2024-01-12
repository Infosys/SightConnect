import 'dart:ui';

import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_filter_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/dashboard_filter_check_boxes.dart';
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
                  borderRadius: BorderRadius.circular(AppSize.klradius),
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
                        ref.watch(visionTechnicianSearchFilterProvider).gender;
                    var location = ref
                        .watch(visionTechnicianSearchFilterProvider)
                        .location;
                    var status =
                        ref.watch(visionTechnicianSearchFilterProvider).status;

                    var currentRangeValues = ref
                        .watch(visionTechnicianSearchFilterProvider)
                        .currentRangeValues;

                    return Wrap(
                      runSpacing: AppSize.klheight,
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
                              width: AppSize.klwidth * 40,
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
                                          visionTechnicianSearchFilterProvider)
                                      .setRangeSliderValues(values);
                                },
                              ),
                            ),
                          ],
                        ),
                        DashboardFilterCheckBoxes(
                            items: gender, name: "Gender"),
                        DashboardFilterCheckBoxes(
                            items: location, name: "Location"),
                        DashboardFilterCheckBoxes(
                            items: status, name: "Status"),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Save'),
                            ),
                            const SizedBox(
                              width: AppSize.klwidth,
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
}
