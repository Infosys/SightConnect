import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/data/models/tumbling_models.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/optometritian_report_provider.dart';

class OptometritianTumblingReportCard extends ConsumerWidget {
  const OptometritianTumblingReportCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var eyeModel = ref.watch(tumblingTestProvider);
    double leftEyeSigth = eyeModel.calculateEyeSight(Eye.left);
    double rightEyeSigth = eyeModel.calculateEyeSight(Eye.right);
    double bothEyeSigth = eyeModel.calculateEyeSight(Eye.both);
    var model = ref.watch(optometritianReportProvider);
    var urgency = model.calculateTriageUrgency();
    var tumblingEData = model.getTumblingEData(
      leftEyeSigth,
      rightEyeSigth,
      bothEyeSigth,
    );

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
              itemCount: tumblingEData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
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
                          tumblingEData[index]["eye"],
                          style: applyRobotoFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          tumblingEData[index]["value"],
                          style: applyRobotoFont(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: tumblingEData[index]["color"],
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
          Column(
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
              const SizedBox(
                height: AppSize.ksheight,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                width: AppSize.width(context) * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: model.getColorOnUrgency(urgency),
                  border: Border.all(
                    width: 1.5,
                    color: model.getColorOnUrgency(urgency),
                  ),
                ),
                child: Center(
                  child: Text(
                    model.getUrgencyText(urgency),
                    style: applyRobotoFont(
                      fontSize: 12,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.ksheight),
        ],
      ),
    );
  }
}
