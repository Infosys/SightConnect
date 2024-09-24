import 'package:eye_care_for_all/apps/eyebank/backlog/doctor/tissue_details/presentation/widgets/tissue_details_info_tile.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:flutter/material.dart';

class PostAcceptanceSurgeryInformationSection extends StatelessWidget {
  const PostAcceptanceSurgeryInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppFormSection(
      title: 'Surgery Information',
      children: [
        TissueDetailsInfoTile(
          title: 'Surgeon Name',
          value: 'Dr. John Doe',
        ),
        TissueDetailsInfoTile(
          title: 'Phone No.',
          value: '+91 92304567890',
        ),
        TissueDetailsInfoTile(
          title: 'Surgery Procedure',
          value: 'ELK',
        ),
        TissueDetailsInfoTile(
          title: 'Surgery Location',
          value: 'LVP Eye Hospital',
        ),
        TissueDetailsInfoTile(
          title: 'Date of Surgery',
          value: '12th May 2024',
        ),
      ],
    );
  }
}
