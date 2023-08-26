import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/doctor_near_you_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DoctorNearYouList extends StatelessWidget {
  const DoctorNearYouList({super.key});

  @override
  Widget build(BuildContext context) {
      var doctor = [
      {
        "name": "Dr. Rajkumar Williams",
         "profession": "Eye Surgeon",
         "image": AppImages.doctor_2,
      },
      {
        "name": "Dr. Priya Shankar",
         "profession": "Ophthalmologist",
         "image": null,
      },
      {
        "name" : "Dr. Manish Jain",
        "profession": "Optometrist",
        "image": null,
      }
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Doctor near you",
          style: applyFiraSansFont(fontSize: 18),
        ),
        const SizedBox(height: AppSize.ksheight),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...doctor
                  .map(
                    (e) => DoctorNearYouCard(
                      data: e,
                    ),
                  )
                  .toList()
            ],
          ),
        )
      ],
    );
  }
}
