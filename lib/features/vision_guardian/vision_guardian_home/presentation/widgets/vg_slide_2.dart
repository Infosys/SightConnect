import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_age_chip.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_gender_pie_chart.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_slide_1.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class VGSlide2 extends StatelessWidget {
  const VGSlide2({super.key});
  static Map<String, int> dataMapAge = {
    "< 10 Yrs": 10,
    "10 - 29 Yrs": 10,
    "30 - 39 Yrs": 10,
    "40 - 59 Yrs": 10,
    "60+ Yrs": 10,
  };

  static List<Color> colorList = [
    AppColor.lavanderBlue,
    AppColor.darkOrange,
    AppColor.blue,
    AppColor.purple,
    AppColor.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppSize.kspadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: AppSize.width(context) * 0.9,
            padding: const EdgeInsets.all(AppSize.kspadding),
            decoration: boxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "By Age",
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VGAgeChip(
                      value: dataMapAge.values.elementAt(0).toString(),
                      years: dataMapAge.keys.elementAt(0),
                      color: colorList[0],
                    ),
                    VGAgeChip(
                      value: dataMapAge.values.elementAt(1).toString(),
                      years: dataMapAge.keys.elementAt(1),
                      color: colorList[1],
                    ),
                    VGAgeChip(
                      value: dataMapAge.values.elementAt(2).toString(),
                      years: dataMapAge.keys.elementAt(2),
                      color: colorList[2],
                    ),
                    VGAgeChip(
                      value: dataMapAge.values.elementAt(3).toString(),
                      years: dataMapAge.keys.elementAt(3),
                      color: colorList[3],
                    ),
                    VGAgeChip(
                      value: dataMapAge.values.elementAt(4).toString(),
                      years: dataMapAge.keys.elementAt(4),
                      color: colorList[4],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
