import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_analytics_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/age_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/gender_pie_chart.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/pages/pulsar_effect_page.dart';
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

    var model = ref.watch(visionTechnicianAnalyticsProvider);

    Map<String, double> dataMapAge = model.dataMapAge;
    Map<String, double> dataMale = model.dataMale;
    Map<String, double> dataFemale = model.dataFemale;
    Map<String, double> dataOthers = model.dataOthers;
    List<Color> colorsAge = model.colorsAge;
    List<List<Color>> colorsGender = model.colorsGender;
    double totalValuesGender = model.totalGenderValue;

    if (model.isLoading || dataMapAge.isEmpty) {
      // adding default values if data is empty
      dataMapAge = {
        '0-10 Yrs': 0,
        '11-20 Yrs': 0,
        '21-30 Yrs': 0,
        '31-40 Yrs': 0,
      };
      dataOthers = {'Others': 0};
      dataFemale = {"Female": 0};
      dataMale = {"Male": 0};
    }

    final loc = context.loc!;

    return Pulsar(
      disable: model.isLoading ? false : true,
      animationCurve: Curves.easeOut,
      highOpacity: 0.8,
      lowOpacity: 0.5,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: AppSize.width(context) * 0.45,
              padding: EdgeInsets.all(isMobile ? AppSize.ks : AppSize.km),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(AppSize.km),
                boxShadow: applyLightShadow(),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    maxLines: 1,
                    loc.vtByAge,
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
                            animationDuration:
                                const Duration(milliseconds: 800),
                            chartRadius:
                                isMobile ? AppSize.ks * 5 : AppSize.ks * 10,
                            colorList: colorsAge,
                            initialAngleInDegree: 270,
                            chartType: ChartType.ring,
                            ringStrokeWidth: isMobile ? 5 : 10,
                            centerWidget: AutoSizeText(
                              maxLines: 1,
                              model.totalAge.toInt().toString(),
                              style: applyFiraSansFont(
                                fontSize: isMobile ? 16 : 32,
                                fontWeight: FontWeight.w500,
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
                              AgeCard(
                                  colorsAge[0], dataMapAge.keys.elementAt(0)),
                              AgeCard(
                                  colorsAge[1], dataMapAge.keys.elementAt(1)),
                              AgeCard(
                                  colorsAge[2], dataMapAge.keys.elementAt(2)),
                              AgeCard(
                                  colorsAge[3], dataMapAge.keys.elementAt(3)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: isMobile ? AppSize.ks : AppSize.km),
            Container(
              width: AppSize.width(context) * 0.45,
              padding: EdgeInsets.all(isMobile ? AppSize.ks : AppSize.km),
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(AppSize.km),
                boxShadow: applyLightShadow(),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    maxLines: 1,
                    loc.vtByGender,
                    style: applyFiraSansFont(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // Spacer(),
                  const SizedBox(
                    height: AppSize.ks,
                  ),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GenderPieChart(
                          data: dataMale,
                          color: colorsGender[0],
                          total: totalValuesGender,
                        ),
                        GenderPieChart(
                          data: dataFemale,
                          color: colorsGender[1],
                          total: totalValuesGender,
                        ),
                        GenderPieChart(
                          data: dataOthers,
                          color: colorsGender[2],
                          total: totalValuesGender,
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
