import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/eye_camps_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EyeCampsCardList extends StatelessWidget {
  const EyeCampsCardList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "image": AppImages.eyeCampImage,
        "info":
            "LVPEI Vision Centre conducts a Free Vision Screening Camp at Saroor Nagar, Hyderabad, covering residents in the local community.",
        "date": "24 Jul, 2022. 10:00 AM"
      },
      {
        "image": AppImages.eyeCampImage,
        "info":
            "LVPEI Vision Centre conducts a Free Vision Screening Camp at Saroor Nagar, Hyderabad, covering residents in the local community.",
        "date": "24 Jul, 2022. 10:00 AM"
      },
    ];
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
          child: Text(
            "Eye Camps Near Me",
            style: applyFiraSansFont(
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: AppSize.kmheight),
        Container(
          decoration: BoxDecoration(
            boxShadow: applyLightShadow(),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...data
                    .map(
                      (e) => EyeCampCard(
                        data: e,
                      ),
                    )
                    .toList()
              ],
            ),
          ),
        )
      ],
    );
  }
}
