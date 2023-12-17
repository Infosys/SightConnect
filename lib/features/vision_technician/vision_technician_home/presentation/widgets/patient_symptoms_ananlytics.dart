import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_analytics_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/symptoms_card.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../../../../shared/theme/app_shadow.dart';

class PatientSymptomsAnalytics extends ConsumerWidget {
  const PatientSymptomsAnalytics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isMobile = Responsive.isMobile(context);
    var model = ref.watch(visionTechnicianAnalyticsProvider);
    Map<String, double> dataMapSymptom = model.dataMapSymptom;
    List<Color> colorsSymptom = model.colorsSymptom;
    int totalSymptom = model.totalSymptom;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: AppSize.width(context) * 0.9,
        padding:
            EdgeInsets.all(isMobile ? AppSize.kspadding : AppSize.kmpadding),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(AppSize.kmradius),
          boxShadow: applyLightShadow(),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Symptoms",
              style: applyFiraSansFont(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: PieChart(
                      dataMap: dataMapSymptom,
                      animationDuration: const Duration(milliseconds: 800),
                      chartRadius: isMobile
                          ? AppSize.ksradius * 6
                          : AppSize.ksradius * 11,
                      colorList: colorsSymptom,
                      initialAngleInDegree: 270,
                      chartType: ChartType.ring,
                      ringStrokeWidth: isMobile ? 5 : 10,
                      centerWidget: Text(
                        totalSymptom.toInt().toString(),
                        style: applyFiraSansFont(
                          fontSize: isMobile ? 16 : 24,
                          fontWeight: FontWeight.w500,
                          color: AppColor.darkBlue,
                        ),
                      ),
                      // centerText: "32",
                      legendOptions: const LegendOptions(
                        showLegends: false,
                      ),
                      chartValuesOptions: const ChartValuesOptions(
                        showChartValues: false,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSize.kswidth),
                  Expanded(
                    child: Wrap(
                      runSpacing:
                          isMobile ? AppSize.ksheight : AppSize.kmheight,
                      spacing: AppSize.kmwidth,
                      children: [
                        SymptomsCard(
                          color: colorsSymptom[0],
                          value: dataMapSymptom.values.elementAt(0),
                          symptom: dataMapSymptom.keys.elementAt(0),
                        ),
                        SymptomsCard(
                          color: colorsSymptom[1],
                          value: dataMapSymptom.values.elementAt(1),
                          symptom: dataMapSymptom.keys.elementAt(1),
                        ),
                        SymptomsCard(
                          color: colorsSymptom[2],
                          value: dataMapSymptom.values.elementAt(2),
                          symptom: dataMapSymptom.keys.elementAt(2),
                        ),
                        SymptomsCard(
                          color: colorsSymptom[3],
                          value: dataMapSymptom.values.elementAt(3),
                          symptom: dataMapSymptom.keys.elementAt(3),
                        ),
                        SymptomsCard(
                          color: colorsSymptom[4],
                          value: dataMapSymptom.values.elementAt(4),
                          symptom: dataMapSymptom.keys.elementAt(4),
                        ),
                        SymptomsCard(
                          color: colorsSymptom[5],
                          value: dataMapSymptom.values.elementAt(5),
                          symptom: dataMapSymptom.keys.elementAt(5),
                        ),
                        SymptomsCard(
                          color: colorsSymptom[6],
                          value: dataMapSymptom.values.elementAt(6),
                          symptom: dataMapSymptom.keys.elementAt(6),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
