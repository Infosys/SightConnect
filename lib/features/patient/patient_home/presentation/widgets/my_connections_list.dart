import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_connections_card.dart';
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
                "My Members",
                style: applyFiraSansFont(
                  fontSize: 18,
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
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    ...doctors
                        .asMap()
                        .entries
                        .map(
                          (e) => MyConnectionsCard(
                            doctor: e.value,
                            index: e.key,
                          ),
                        )
                        .toList(),
                  ]),
                ),
              ),
              const SizedBox(width: AppSize.kmwidth),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 60,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColor.lightBlue,
                          width: 2.0,
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: AppColor.blue,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.ksheight),
                  Text(
                    "Add",
                    style: applyFiraSansFont(
                      fontSize: 12,
                      color: AppColor.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
