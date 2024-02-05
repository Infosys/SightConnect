import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/triage/data/models/optometrician_triage_response.dart';

class OptometritianTumblingReportCard extends ConsumerWidget {
  const OptometritianTumblingReportCard({required this.report, super.key});

  final OptometristTriageResponse report;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var eyeModel = ref.watch(tumblingTestProvider);
    // var model = ref.watch(optometritianReportProvider);
    // var urgency = model.visualAcuityUrgency();
    // var tumblingEData = model.getTumblingEData(
    //   eyeModel.calculateEyeSight(Eye.left),
    //   eyeModel.calculateEyeSight(Eye.right),
    //   eyeModel.calculateEyeSight(Eye.both),
    // );

    // List<Observation> observations = report.observations!;
    logger.d("image urgency : ${report.observations}");

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
              itemCount: report.observations!.length,
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
                          index == 0
                              ? "Right Eye"
                              : index == 1
                                  ? "Left Eye"
                                  : "Both Eye",
                          style: applyRobotoFont(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          index == 0
                              ? lookUpSnellenTablefromLogMarValue(
                                  report.observations![1].response!)
                              : index == 1
                                  ? lookUpSnellenTablefromLogMarValue(
                                      report.observations![0].response!)
                                  : lookUpSnellenTablefromLogMarValue(
                                      report.observations![2].response!),
                          style: applyRobotoFont(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: index == 0
                                ? getColorOnUrgency(
                                    report.observations![1].response!)
                                : index == 1
                                    ? getColorOnUrgency(
                                        report.observations![0].response!)
                                    : getColorOnUrgency(
                                        report.observations![2].response!),
                          ),
                          textAlign: TextAlign.left,
                        ),
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
                  fontSize: 16,
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
                  color: report.observationsUrgency == Urgency.RED
                      ? AppColor.red
                      : report.observationsUrgency == Urgency.YELLOW
                          ? AppColor.orange
                          : AppColor.green,
                  border: Border.all(
                    width: 1.5,
                    color: report.observationsUrgency == Urgency.RED
                        ? AppColor.red
                        : report.observationsUrgency == Urgency.YELLOW
                            ? AppColor.orange
                            : AppColor.green,
                  ),
                ),
                child: Center(
                  child: Text(
                    report.observationsUrgency == Urgency.RED
                        ? "Urgent Consult"
                        : report.observationsUrgency == Urgency.YELLOW
                            ? "Early Consult"
                            : "Regular Consult",
                    style: applyRobotoFont(
                      fontSize: 16,
                      color: AppColor.white,
                      fontWeight: FontWeight.w500,
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

  Color getColorOnUrgency(double value) {
    if (value >= 1.0) {
      return AppColor.red;
    } else if (value >= 0.5) {
      return AppColor.orange;
    } else {
      return AppColor.green;
    }
  }

  String lookUpSnellenTablefromLogMarValue(double logMar) {
    switch (logMar) {
      case 1.0:
        return "20/200";
      case 0.698:
        return "20/100";
      case 0.602:
        return "20/80";
      case 0.494:
        return "20/62.5";
      case 0.397:
        return "20/50";
      case 0.301:
        return "20/40";
      case 0.176:
        return "20/31.77";
      case 0.096:
        return "20/25";
      case 0.0:
        return "20/20";
      default:
        return "null";
    }
  }
}
