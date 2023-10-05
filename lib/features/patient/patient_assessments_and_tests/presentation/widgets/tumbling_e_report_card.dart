import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TumblingEReportCard extends StatelessWidget {
  const TumblingEReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tumblingEData = [
      {"eye": "Left Eye", "value": "1.0", "color": AppColor.green},
      {"eye": "Right Eye", "value": "0.8", "color": AppColor.orange},
      {"eye": "Both Eyes", "value": "1.0", "color": AppColor.green},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Acuity Test - Tumbling E",
            style: applyRobotoFont(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Patient consistently identifies the orientation of most “E” letters but struggles with a few.",
            style: applyRobotoFont(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 3,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.4,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(
                    left: AppSize.width(context) * 0.03,
                    top: AppSize.height(context) * 0.01,
                  ),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColor.black.withOpacity(0.1))),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          tumblingEData[index]["eye"],
                          style: applyRobotoFont(
                              fontSize: 12, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          tumblingEData[index]["value"],
                          style: applyRobotoFont(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: tumblingEData[index]["color"]),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
