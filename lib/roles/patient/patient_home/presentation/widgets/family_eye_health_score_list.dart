import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/family_eye_health_score_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class FamilyEyeHealthScoreList extends StatelessWidget {
  const FamilyEyeHealthScoreList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        "image": AppImages.familyPerson2,
        "name": "Rajavan Kumar",
        "score": "6/20",
        "percentage": 0.27,
        "description": "Left eye - Consider surgery, your vision deteriorating"
      },
      {
        "image": AppImages.familyPerson1,
        "name": "Karthick Kumar",
        "score": "17/20",
        "percentage": 1.0,
        "description": "Limit your night driving"
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Family Eye Health Scores",
          style: applyFiraSansFont(fontSize: 18),
        ),
        const SizedBox(height: AppSize.ksheight),
        Text(
          "The score determines the health of your retina and the chances of it getting affected by certain diseases",
          style: applyFiraSansFont(
            fontSize: 10,
            color: AppColor.kGrey,
          ),
        ),
        const SizedBox(height: AppSize.ksheight),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...data
                  .map(
                    (e) => FamilyEyeHealthScoreCard(data: e),
                  )
                  .toList()
            ],
          ),
        )
      ],
    );
  }
}
