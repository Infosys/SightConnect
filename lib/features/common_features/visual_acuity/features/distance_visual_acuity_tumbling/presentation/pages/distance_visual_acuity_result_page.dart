import 'dart:math';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../domain/enums/tumbling_enums.dart';
import '../providers/distance_visual_acuity_test_provider.dart';
import '../widgets/distance_result_page_bottom_card.dart';

class DistanceTumblingResultReportPage extends ConsumerWidget {
  static const String routeName = "/patientEyesReportPage";
  const DistanceTumblingResultReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GlobalKey<NavigatorState> scaffoldKey = GlobalKey<NavigatorState>();
    final loc = context.loc!;

    return PopScope(
      canPop: false,
      onPopInvoked: (value) async {
        if (value == true) {
          return;
        }
        ref.read(resetProvider).reset();
        Navigator.of(context).popUntil((route) => route.isFirst);
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColor.scaffold,
        appBar: CustomAppbar(
          title: Text(loc.visualAcuityTestResults),
          leadingIcon: InkWell(
            onTap: () {
              ref.read(resetProvider).reset();
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Icon(
              CupertinoIcons.back,
              color: AppColor.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.km),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // const TumblingResultPageTopCard(),
                Consumer(
                  builder: (context, ref, _) {
                    double leftEyeSight = ref
                        .watch(distanceTumblingTestProvider)
                        .calculateEyeSight(Eye.left);
                    double rightEyeSight = ref
                        .watch(distanceTumblingTestProvider)
                        .calculateEyeSight(Eye.right);
                    double bothEyeSight = ref
                        .watch(distanceTumblingTestProvider)
                        .calculateEyeSight(Eye.both);
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.kl),
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
                                    AppSize.km,
                                    AppSize.km,
                                    AppSize.km,
                                    0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius:
                                        BorderRadius.circular(AppSize.kl),
                                  ),
                                  width: AppSize.width(context) * 0.65,
                                  height: AppSize.height(context) * 0.22,
                                  child: Transform.translate(
                                    offset: const Offset(0, 28),
                                    child: buildGauge(
                                        max(max(leftEyeSight, rightEyeSight),
                                            bothEyeSight),
                                        context),
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
                                  loc.leftEyeString,
                                  leftEyeSight.toString(),
                                  getColourScheme(leftEyeSight),
                                ),
                                buildCol(
                                  loc.rightEyeString,
                                  rightEyeSight.toString(),
                                  getColourScheme(rightEyeSight),
                                ),
                                buildCol(
                                  loc.bothEyesString,
                                  bothEyeSight.toString(),
                                  getColourScheme(bothEyeSight),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),

                const SizedBox(height: AppSize.kl),
                Text(
                  loc.assessmentResultPageMoreDetailsText,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: AppSize.kl),
                const NearbyVisionCentersList(),

                const SizedBox(height: AppSize.km),
                const DistanceTumblingResultPageBottomCards(),
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
    if (value >= 1) {
      return AppColor.red;
    } else if (value > 0.5) {
      return AppColor.orange;
    } else {
      return AppColor.green;
    }
  }

  buildGauge(double value, BuildContext context) {
    return AnimatedRadialGauge(
      duration: const Duration(seconds: 1),
      curve: Curves.elasticOut,
      value: value,
      axis: GaugeAxis(
          min: 0,
          max: 1.0,
          degrees: 180,
          style: const GaugeAxisStyle(
            thickness: 20,
            background: Color(0xFFDFE2EC),
            segmentSpacing: 0,
          ),
          progressBar: const GaugeProgressBar.rounded(
            color: Colors.transparent,
          ),
          pointer: NeedlePointer(
            width: 10,
            height: AppSize.height(context) * 0.1,
            color: const Color(0xFF193663),
            borderRadius: 16,
          ),
          segments: const [
            GaugeSegment(
              from: 0,
              to: 0.5,
              color: AppColor.altGreen,
              cornerRadius: Radius.zero,
            ),
            GaugeSegment(
              from: 0.5,
              to: 0.9,
              color: AppColor.orange,
              cornerRadius: Radius.zero,
            ),
            GaugeSegment(
              from: 0.9,
              to: 1,
              color: AppColor.red,
              cornerRadius: Radius.zero,
            )
          ]),
    );
  }
}
