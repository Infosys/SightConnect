import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_age_chip.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_slide_1.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VGSlide2 extends StatelessWidget {
   const VGSlide2({super.key, required this.dataMapAge});
  final Map<String, dynamic> dataMapAge ;

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
                      years: "< 10 Yrs",
                      color: colorList[0],
                    ),
                    VGAgeChip(
                      value: dataMapAge.values.elementAt(1).toString(),
                      years: "10 - 29 Yrs",
                      color: colorList[1],
                    ),
                    VGAgeChip(
                      value: dataMapAge.values.elementAt(2).toString(),
                      years: "30 - 39 Yrs",
                      color: colorList[2],
                    ),
                    VGAgeChip(
                      value: dataMapAge.values.elementAt(3).toString(),
                      years: "40 - 59 Yrs",
                      color: colorList[3],
                    ),
                    VGAgeChip(
                      value: dataMapAge.values.elementAt(4).toString(),
                      years: "60+ Yrs",
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
