import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssessmentRecommendation extends StatelessWidget {
  const AssessmentRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        "name": "Dr. Praveen (ID 394956)",
        "date": "16 Sep 2023, 12:20 PM",
        "recommendation":
            "Surgery completed. Post operative care and follow-ups recommended."
      },
      {
        "name": "Ram C (VT 314200)",
        "date": "30 Aug 2023, 11:20 AM",
        "recommendation":
            "Cataract Identified in Left Eye with further test. Patient is recommended to visit Doctor for treatment."
      },
      {
        "name": "Ajai C (VG 314200)",
        "date": "29 Aug 2023, 11:20 AM",
        "recommendation":
            "Patient sees coloured halos around lights. Patient consistently identifies the orientation of few “E” letters but struggles with a most. Recommended Urgent Visit to Vision Center"
      },
      {
        "name": "IVR",
        "date": "10 Aug 2023, 11:20 AM",
        "recommendation":
            "Patient sees colored halos around lights. This could mean that patient is developing a serious eye disorder such as cataracts or glaucoma."
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: applyRobotoFont(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    'Dr. Praveen (ID 394956)',
                    style: applyRobotoFont(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '16 Sep 2023, 12:20 PM',
                    style: applyRobotoFont(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Surgery completed. Post operative care and follow-ups recommended.",
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppSize.height(context) * 0.05,
          ),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColor.blue, width: 1.5),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Previous Recommendations",
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.black,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        CupertinoIcons.chevron_up,
                        color: AppColor.grey,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppSize.height(context) * 0.05,
          ),
          ListView.builder(
            itemCount: data.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var currentData = data[index];
              return Column(
                children: [
                  Row(
                    children: [
                      Text(
                        currentData['name'],
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        currentData['date'],
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    currentData['recommendation'],
                    softWrap: true,
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Divider(
                      thickness: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
