import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/custom_switch.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';

class SolutionCard extends StatelessWidget {
  const SolutionCard({super.key});

  static List<String> solutions = [
    "Spectacles",
    "Cataract Surgery",
    "Eye Drops",
    "Oral Medication",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Solutions(s)",
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: ((context, index) {
            return Container(
              padding: const EdgeInsets.all(AppSize.kmpadding),
              margin: const EdgeInsets.all(AppSize.kspadding),
              decoration: BoxDecoration(
                color: AppColor.white,
                boxShadow: applyLightShadow(),
                borderRadius: BorderRadius.circular(AppSize.kmradius),
              ),
              child: Row(
                children: [
                  const CustomSwitch(),
                  const SizedBox(width: AppSize.kswidth),
                  Text(
                    solutions[index],
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.grey,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ],
    );
  }
}
