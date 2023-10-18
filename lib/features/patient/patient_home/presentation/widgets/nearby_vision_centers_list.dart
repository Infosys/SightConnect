import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_center_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class NearbyVisionCentersList extends StatelessWidget {
  const NearbyVisionCentersList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        "name": "Dr Kommareddy Raja Ram Mohan Rao Eye Centre",
        "location": "Near Gudavalli Village, Cherukupalli, Guntur",
        "phone": "99634 78759",
        "speciality":
            "Emergency | Diagnostics | Rehabilitation | Paediatric Eye Care | Counselling",
      },
      {
        "name": "Edward and Soona Brown Eye Centre",
        "location": "Pindugurala Road, Sattanapalli, Guntur",
        "phone": "99634 78760",
        "speciality":
            "Emergency | Diagnostics | Rehabilitation | Paediatric Eye Care | Counselling",
      },
    ];
    return Container(
      decoration: BoxDecoration(
        boxShadow: appShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.kmwidth),
                child: Text(
                  "Nearby Vision Centers",
                  style: applyFiraSansFont(
                    fontSize: 18,
                  ),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blue,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.kmheight),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...data
                    .map(
                      (e) => NearbyVisionCentersCard(data: e),
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
