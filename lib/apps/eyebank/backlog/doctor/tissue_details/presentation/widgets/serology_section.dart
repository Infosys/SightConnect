import 'package:eye_care_for_all/apps/eyebank/backlog/doctor/tissue_details/presentation/widgets/tissue_details_info_tile.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:flutter/material.dart';

class SerologySection extends StatelessWidget {
  const SerologySection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppFormSection(
      title: 'Serology',
      children: [
        const TissueDetailsInfoTile(
          title: 'HBsAg',
          value: 'Negative',
        ),
        const TissueDetailsInfoTile(
          title: 'HCV',
          value: 'Negative',
        ),
        const TissueDetailsInfoTile(
          title: 'HIV I/II',
          value: 'Negative',
        ),
        const TissueDetailsInfoTile(
          title: 'Syphillis',
          value: 'Negative',
        ),
        const Divider(),
        Text(
          'This Tissue was Reviewed and Released for Transplant Based on the Following: Physical Assessment, Donor Family Information. Attending Physician',
          style: applyRobotoFont(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        const TissueDetailsInfoTile(
          title: 'Final Release by',
        ),
        const TissueDetailsInfoTile(
          title: 'Final Release Date/Time',
          value: '01/01/2024, 02:44 PM',
        ),
        const TissueDetailsInfoTile(
          title: 'Registered with THOA',
          value: 'Yes',
        ),
      ],
    );
  }
}
