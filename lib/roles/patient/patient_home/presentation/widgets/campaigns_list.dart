import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/roles/patient/patient_home/presentation/widgets/campaigns_card.dart';
import 'package:flutter/material.dart';

class CampaginsList extends StatelessWidget {
  const CampaginsList({super.key});

  @override
  Widget build(BuildContext context) {
    var data = [
      {
        "image": AppImages.campaign,
        "title": "Rural Eye Camps",
        "description":
            "Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer",
      },
      {
        "image": AppImages.campaign2,
        "title": "Eye Care Awareness",
        "description":
            "Zwei flinke Boxer jagen die quirlige Eva und ihren Mops durch Sylt. Franz jagt im komplett verwahrlosten Taxi quer",
      },
    ];
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return CampaginsCard(
          data: data[index],
        );
      },
    );
  }
}
