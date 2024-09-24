import 'package:eye_care_for_all/apps/eyebank/backlog/doctor/tissue_details/presentation/widgets/tissue_details_info_tile.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:flutter/material.dart';

class MedicalSummarySection extends StatelessWidget {
  const MedicalSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppFormSection(
      title: 'Medical Summary',
      children: [
        TissueDetailsInfoTile(
            title: 'Social and Behavioural History', value: 'No'),
        TissueDetailsInfoTile(
          title: 'Medical/Surgical History',
          value: 'Natural Death Old Age',
        ),
        TissueDetailsInfoTile(title: 'Donor on Respirator', value: 'No'),
        TissueDetailsInfoTile(title: 'Amount of Time on Respirator'),
      ],
    );
  }
}
