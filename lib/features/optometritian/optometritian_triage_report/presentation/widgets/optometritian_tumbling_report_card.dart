import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/optometritian_report_provider.dart';

class OptometritianTumblingReportCard extends ConsumerWidget {
  final List<Map<String, dynamic>> data;
  final TriageUrgency urgency;
  const OptometritianTumblingReportCard({
    super.key,
    required this.data,
    required this.urgency,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> eye = ["Left Eye", "Right Eye", "Both Eye"];
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
          const SizedBox(height: 10),
          Text(
            "Patient consistently identifies the orientation of most “E” letters but struggles with a few.",
            style: applyRobotoFont(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: data.length,
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
                    border: Border.all(
                      color: AppColor.black.withOpacity(0.1),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          eye[index],
                          style: applyRobotoFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          data[index]["eye"],
                          style: applyRobotoFont(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: data[index]["color"],
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: AppSize.ksheight,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1.5,
            ),
          ),
          const SizedBox(
            height: AppSize.ksheight,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Category",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: AppSize.ksheight,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                width: AppSize.width(context) * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: getColorOnUrgency(urgency),
                  border: Border.all(
                    width: 1.5,
                    color: getColorOnUrgency(urgency),
                  ),
                ),
                child: Center(
                  child: Text(
                    getUrgencyText(urgency),
                    style: applyRobotoFont(
                      fontSize: 12,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // const SizedBox(height: AppSize.ksheight),
        ],
      ),
    );
  }
}
