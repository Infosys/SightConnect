import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/fake_data_source.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AssessmentCards extends StatelessWidget {
  const AssessmentCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            var currentData = data[index];
            return SizedBox(
              height: AppSize.height(context) * 0.9,
              child: Card(
                elevation: 2,
                clipBehavior: Clip.hardEdge,
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppSize.width(context) * 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: currentData['checkupType'] ==
                                        "Routine Checkup"
                                    ? Colors.green
                                    : Colors.orange,
                              ),
                              child: Text(
                                currentData['checkupType'],
                                style: applyRobotoFont(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.white),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
