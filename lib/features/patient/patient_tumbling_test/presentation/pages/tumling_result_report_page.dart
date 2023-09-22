import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/providers/patient_home_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_tumbling_test/presentation/providers/tumbling_test_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:url_launcher/url_launcher.dart';

class TumblingResultReportPage extends ConsumerWidget {
  static const String routeName = "/tumbling-result-report";
  const TumblingResultReportPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tumbling E Test - Completed"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            children: [
              const SizedBox(height: AppSize.kmheight),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.klradius),
                ),
                color: const Color(0xff333333),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 230,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.topCenter,
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
                            height: 230,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Done! According to the test you don’t have visual acuity problems.",
                                  textAlign: TextAlign.center,
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    color: const Color(0xff333333),
                                  ),
                                ),
                                const SizedBox(
                                  height: AppSize.ksheight,
                                ),
                                buildGuage()
                              ],
                            ),
                          ),
                          Positioned(
                            top: -40,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(200),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(14.0),
                                child: Icon(
                                  Icons.check_circle_outline,
                                  color: AppColor.green,
                                  size: 40,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Consumer(
                      builder: (context, ref, child) {
                        var model = ref.watch(tumblingTestProvider);
                        var leftEye = model.calculateLeftEyeSigth();

                        var rightEye = model.calculateRightEyeSigth();
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildCol(
                              "Left Eye",
                              leftEye.toString(),
                            ),
                            buildCol(
                              "Right Eye",
                              rightEye.toString(),
                            ),
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              const Text(
                "For more details and insights, visit nearest LVPEI vision centre, or call our toll free number to connect with our vision technician.",
              ),
              ListTile(
                onTap: () async {
                  await launchOut(
                    Uri(
                      scheme: "geo",
                      path: "15.8145,79.9920",
                    ),
                  );
                },
                leading: SvgPicture.asset(
                  AppIcon.visionCenter,
                ),
                trailing: SvgPicture.asset(
                  AppIcon.location,
                ),
                title: const Text("LVPEI Vision Center"),
                subtitle: const Text("Addanki"),
              ),
              ListTile(
                onTap: () async {
                  await launchOut(
                    Uri(
                      scheme: "tel",
                      path: "08069490400",
                    ),
                  );
                },
                leading: SvgPicture.asset(
                  AppIcon.tollFree,
                ),
                trailing: SvgPicture.asset(
                  AppIcon.call,
                ),
                title: const Text("Vision Technician"),
                subtitle: const Text("Toll Free Number"),
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          ref.read(patientHomeProvider).changeIndex(0);
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                        },
                        child: const Text("Home"),
                      ),
                    ),
                    const SizedBox(
                      width: AppSize.kmheight,
                    ),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                        },
                        child: const Text("Test Again"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> launchOut(Uri uri) async {
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  buildCol(String title, String value) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: applyFiraSansFont(fontSize: 18, color: AppColor.white),
          ),
          const SizedBox(
            height: AppSize.ksheight,
          ),
          Text(
            value,
            style: applyFiraSansFont(fontSize: 24, color: AppColor.green),
          ),
        ],
      ),
    );
  }

  buildGuage() {
    return Flexible(
      child: SizedBox(
        height: 140,
        child: SfRadialGauge(
          axes: [
            RadialAxis(
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
              pointers: const <GaugePointer>[NeedlePointer(value: 80)],
            )
          ],
        ),
      ),
    );
  }
}
