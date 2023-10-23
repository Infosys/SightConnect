import 'dart:math';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/providers/patient_triage_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/providers/patient_visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/widgets/result_page_bottom_card.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/widgets/result_page_eye_center_details_card.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/widgets/result_page_top_card.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TumblingResultReportPage extends ConsumerWidget {
  static const String routeName = "/patientEyesReportPage";
  const TumblingResultReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GlobalKey<NavigatorState> scaffoldKey = GlobalKey<NavigatorState>();
    double leftEyeSight =
        ref.read(tumblingTestProvider).calculateLeftEyeSigth();
    double rightEyeSight =
        ref.read(tumblingTestProvider).calculateRightEyeSigth();
    return WillPopScope(
      onWillPop: () async {
        ref.read(patientTriageProvider).resetTriage();
        Navigator.of(context).popUntil((route) => route.isFirst);
        return false;
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColor.scaffold,
        appBar: const CustomAppbar(
          title: Text("Visual Acuity Test Results"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.kmpadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const TumblingResultPageTopCard(),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.klradius),
                  ),
                  color: const Color(0xff333333),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                AppSize.kmpadding,
                                AppSize.kmpadding,
                                AppSize.kmpadding,
                                0,
                              ),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                borderRadius:
                                    BorderRadius.circular(AppSize.klradius),
                              ),
                              width: AppSize.width(context) * 0.65,
                              height: AppSize.height(context) * 0.22,
                              child: Transform.translate(
                                offset: const Offset(0, 28),
                                child: buildGuage(
                                    min(rightEyeSight, leftEyeSight)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppSize.height(context) * 0.22,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildCol(
                              'Left Eye',
                              leftEyeSight.toString(),
                              getColourScheme(leftEyeSight),
                            ),
                            buildCol(
                              'Right Eye',
                              rightEyeSight.toString(),
                              getColourScheme(rightEyeSight),
                            ),
                            // buildCol('Both Eye', '1.0', AppColor.green),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSize.kmheight,
                ),
                Container(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(
                          2,
                          10,
                        ),
                        color: AppColor.primary.withOpacity(0.1),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(AppSize.ksradius),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.primary.withOpacity(0.1),
                        child: SvgPicture.asset(
                          AppIcon.report,
                          height: 16,
                        ),
                      ),
                      SizedBox(
                        width: AppSize.width(context) * 0.05,
                      ),
                      Text(
                        "Eye Assessment Report",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.chevron_right_sharp),
                    ],
                  ),
                ),
                const SizedBox(height: AppSize.klheight),
                Text(
                  'Visit the nearest vision center for more details. Call the toll-free number to speak to our vision technician.',
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: AppSize.klheight),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nearby Vision Centres",
                      style: applyFiraSansFont(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColor.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSize.kmheight),
                const TumblingEyeCentreDetailsCards(),
                const SizedBox(height: AppSize.kmheight),
                const TumblingResultPageBottomCards(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildCol(String title, String value, Color color) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: applyFiraSansFont(fontSize: 12, color: AppColor.white),
          ),
          Text(
            value,
            style: applyFiraSansFont(fontSize: 18, color: color),
          ),
        ],
      ),
    );
  }

  getColourScheme(value) {
    if (value > 0.7) {
      return AppColor.green;
    } else if (value > 0.4) {
      return AppColor.orange;
    } else {
      return AppColor.red;
    }
  }

  buildGuage(double value) {
    return SfRadialGauge(
      axes: [
        RadialAxis(
          radiusFactor: 1.3,
          startAngle: 180,
          endAngle: 0,
          showLabels: false,
          showAxisLine: false,
          showTicks: false,
          minimum: 0,
          maximum: 99,
          ranges: <GaugeRange>[
            GaugeRange(
              startValue: 0,
              endValue: 33,
              color: const Color(0xFFFE2A25),
              sizeUnit: GaugeSizeUnit.factor,
              startWidth: 0.2,
              endWidth: 0.2,
            ),
            GaugeRange(
              startValue: 33,
              endValue: 66,
              color: const Color(0xFFFFBA00),
              startWidth: 0.2,
              endWidth: 0.2,
              sizeUnit: GaugeSizeUnit.factor,
            ),
            GaugeRange(
              startValue: 66,
              endValue: 99,
              color: const Color(0xFF00AB47),
              sizeUnit: GaugeSizeUnit.factor,
              startWidth: 0.2,
              endWidth: 0.2,
            ),
          ],
          pointers: <GaugePointer>[NeedlePointer(value: value * 100)],
        )
      ],
    );
  }
}
