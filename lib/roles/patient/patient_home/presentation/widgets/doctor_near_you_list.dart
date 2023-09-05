import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/doctor_near_you_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class DoctorNearYouList extends StatelessWidget {
  const DoctorNearYouList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> doctors = [
      {
        'id': 1,
        'name': 'Dr. Prashant Garg',
        'image': 'assets/images/dr_prashant_garg.png',
        "profession": 'Ophthalmologist',
        'hospital': 'LVPEI',
      },
      {
        'id': 2,
        'name': 'Dr. Rajeev Pappuru',
        'image': 'assets/images/dr_rajeev_r_pappuru.png',
        "profession": 'Ophthalmologist',
        'hospital': 'LVPEI',
      },
      {
        'id': 3,
        'name': 'Dr. Pravin Vaddavalli',
        'image': 'assets/images/dr_pravin_krishna_vaddavalli.png',
        "profession": 'Ophthalmologist',
        'hospital': 'LVPEI',
      },
    ];

    return Container(
      decoration: BoxDecoration(
        boxShadow: appShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Doctor near you",
            style: applyFiraSansFont(fontSize: 18),
          ),
          const SizedBox(height: AppSize.kmheight),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...doctors
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
      ),
    );
  }
}
