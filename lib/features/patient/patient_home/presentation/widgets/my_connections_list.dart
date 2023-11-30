import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/data/models/related_party_model.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_connections_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../data/source/local/fake_data_source.dart';

class MyConnectionsList extends StatelessWidget {
  const MyConnectionsList({super.key, required this.connectionsList});
  final List<RelatedPartyModel> connectionsList;

  @override
  Widget build(BuildContext context) {
    var data = connectionList;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.kmwidth),
              child: Text(
                "My Members",
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
                  ...connectionsList
                      .asMap()
                      .entries
                      .map(
                        (e) => MyConnectionsCard(
                          image: e.value.profilePicture ?? AppImages.raghavi,
                          name: e.value.name ?? "",
                          index: e.key,
                        ),
                      )
                      .toList(),
                ]),
              ),
            ),
            const SizedBox(width: AppSize.kswidth),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Transform.translate(
                    offset: const Offset(0, 10),
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: () {},
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: AppColor.lightBlue,
                            width: 1.0,
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: AppColor.blue,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSize.height(context) * 0.037),
                  Text(
                    "Add",
                    style: applyFiraSansFont(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
