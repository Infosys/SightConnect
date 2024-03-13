import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_gender_pie_chart.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VGSlide1 extends ConsumerWidget {
  const VGSlide1(
      {super.key, required this.eyeAssessment, required this.byGender});
  final Map<String, dynamic> eyeAssessment;
  final Map<String, dynamic> byGender;

  static List<List<Color>> genderColor = [
    [AppColor.primary],
    [AppColor.darkPink],
    [AppColor.darkOrange],
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    Map<String, double> dataMale = {
      loc.vgMale: double.parse(byGender["male"].toString())
    };
    Map<String, double> dataFemale = {
      loc.vgFemale: double.parse(byGender["female"].toString())
    };
    Map<String, double> dataOthers = {
      loc.vgOthers: double.parse(byGender["others"].toString())
    };

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppSize.ks,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: AppSize.width(context) * 0.45,
            padding: const EdgeInsets.all(AppSize.ks),
            decoration: boxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  loc.vgEyeAssessments,
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          eyeAssessment["total"].toString(),
                          style: applyFiraSansFont(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          loc.vgTotal,
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          eyeAssessment["camps"].toString(),
                          style: applyFiraSansFont(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          loc.vgCamps,
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          eyeAssessment["doorToDoor"].toString(),
                          style: applyFiraSansFont(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          loc.vgDoorToDoor,
                          softWrap: true,
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: AppSize.width(context) * 0.45,
            padding: const EdgeInsets.all(AppSize.ks),
            decoration: boxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  loc.vgByGender,
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VGGenderPieChart(
                      data: dataMale,
                      color: genderColor[0],
                      total: double.parse(byGender["male"].toString()),
                    ),
                    VGGenderPieChart(
                      data: dataFemale,
                      color: genderColor[1],
                      total: double.parse(byGender["female"].toString()),
                    ),
                    VGGenderPieChart(
                      data: dataOthers,
                      color: genderColor[2],
                      total: double.parse(byGender["others"].toString()),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final boxDecoration = BoxDecoration(
  color: AppColor.white,
  borderRadius: BorderRadius.circular(AppSize.km),
  boxShadow: applyLightShadow(),
);
