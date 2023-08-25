import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class PatientResultReportPage extends StatelessWidget {
  const PatientResultReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Tumbling E Test - Completed",
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
                              color: AppColor.kWhite,
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
                                8.verticalSpace,
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
                                  color: AppColor.kGreen,
                                  size: 40,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildCol(
                          "Left Eye",
                          "1.0",
                        ),
                        buildCol(
                          "Both Eyes",
                          "0.8",
                        ),
                        buildCol(
                          "Right Eye",
                          "1.0",
                        ),
                      ],
                    )
                  ],
                ),
              ),
              16.verticalSpace,
              const Text(
                "For more details and insights, visit nearest LVPEI vision centre, or call our toll free number to connect with our vision technician.",
              ),
              const ListTile(
                leading: Icon(Icons.abc),
                trailing: Icon(Icons.beach_access),
                title: Text("LVPEI Vision Center"),
                subtitle: Text("LVPEI Vision Center"),
              ),
              const ListTile(
                leading: Icon(Icons.abc),
                trailing: Icon(Icons.beach_access),
                title: Text("Vision Technician"),
                subtitle: Text("Toll Free Number"),
              ),
              16.verticalSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Home"),
                      ),
                    ),
                    8.horizontalSpace,
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
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

  buildCol(String title, String value) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: applyFiraSansFont(fontSize: 18, color: AppColor.kWhite),
          ),
          8.verticalSpace,
          Text(
            value,
            style: applyFiraSansFont(fontSize: 24, color: AppColor.kGreen),
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
