import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_analytics_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/age_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/gender_pie_chart.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pie_chart/pie_chart.dart';

class PatientAgeAnalytics extends ConsumerWidget {
  const PatientAgeAnalytics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isMobile = Responsive.isMobile(context);

    var model = ref.watch(visionTechnicianAnalyticsProvider.notifier);

    Map<String, double> dataMapAge = model.dataMapAge;
    Map<String, double> dataMale = model.dataMale;
    Map<String, double> dataFemale = model.dataFemale;
    Map<String, double> dataOthers = model.dataOthers;
    List<Color> colorsAge = model.colorsAge;
    List<List<Color>> colorsGender = model.colorsGender;
    List<double> totalValuesGender = model.totalValuesGender;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: AppSize.width(context) * 0.45,
            padding: EdgeInsets.all(
                isMobile ? AppSize.kspadding : AppSize.kmpadding),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(AppSize.kmradius),
              boxShadow: applyLightShadow(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "By Age",
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: PieChart(
                          dataMap: dataMapAge,
                          animationDuration: const Duration(milliseconds: 800),
                          chartRadius: isMobile
                              ? AppSize.ksradius * 5
                              : AppSize.ksradius * 10,
                          colorList: colorsAge,
                          initialAngleInDegree: 270,
                          chartType: ChartType.ring,
                          ringStrokeWidth: isMobile ? 5 : 10,
                          centerWidget: Text(
                            "-",
                            style: applyFiraSansFont(
                              fontSize: isMobile ? 16 : 32,
                              fontWeight: FontWeight.w500,
                              color: AppColor.orange,
                            ),
                          ),
                          legendOptions: const LegendOptions(
                            showLegends: false,
                          ),
                          chartValuesOptions: const ChartValuesOptions(
                            showChartValues: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Wrap(
                          children: [
                            AgeCard(colorsAge[0], dataMapAge.keys.elementAt(0)),
                            AgeCard(colorsAge[1], dataMapAge.keys.elementAt(1)),
                            AgeCard(colorsAge[2], dataMapAge.keys.elementAt(2)),
                            AgeCard(colorsAge[3], dataMapAge.keys.elementAt(3)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: AppSize.width(context) * 0.45,
            padding: EdgeInsets.all(
                isMobile ? AppSize.kspadding : AppSize.kmpadding),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(AppSize.kmradius),
              boxShadow: applyLightShadow(),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "By Gender",
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                // Spacer(),
                const SizedBox(
                  height: AppSize.ksheight,
                ),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GenderPieChart(
                        data: dataMale,
                        color: colorsGender[0],
                        total: totalValuesGender[0],
                      ),
                      GenderPieChart(
                        data: dataFemale,
                        color: colorsGender[1],
                        total: totalValuesGender[1],
                      ),
                      GenderPieChart(
                        data: dataOthers,
                        color: colorsGender[2],
                        total: totalValuesGender[2],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
