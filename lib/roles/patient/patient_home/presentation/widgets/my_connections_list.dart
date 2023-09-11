import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/my_connections_card.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class MyConnectionsList extends StatelessWidget {
  const MyConnectionsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> doctors = [
      {
        'name': 'Raghavi',
        'image': 'assets/images/connection_dp_one.png',
      },
      {
        'name': 'Chunkey',
        'image': 'assets/images/connection_dp_two.png',
      },
      {
        'name': 'Mangal',
        'image': 'assets/images/connections_dp_three.png',
      },
      {
        'name': 'Rati',
        'image': 'assets/images/profile_image.png',
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
              Text(
                "My Connections",
                style: applyFiraSansFont(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: applyFiraSansFont(
                        fontSize: 14,
                        color: AppColor.kBlue,
                        fontWeight: FontWeight.w700),
                  ))
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...doctors
                    .map(
                      (e) => MyConnectionsCard(
                        data: e,
                      ),
                    )
                    .toList(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Container(
                          width: 41.0,
                          height: 41.0,
                          decoration: BoxDecoration(
                            color: AppColor.kWhite,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColor.kLightBlue,
                              width: 2.0,
                            ),
                          ),
                          child: const Center(
                              child: Icon(Icons.add,
                                  color: AppColor.kBlue, size: 30))),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
