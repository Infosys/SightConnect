import 'package:eye_care_for_all/apps/eyebank/backlog/doctor/tissue_details/presentation/widgets/tissue_details_info_tile.dart';
import 'package:eye_care_for_all/shared/widgets/app_form_section.dart';
import 'package:flutter/material.dart';

class PathologyDetailsSection extends StatelessWidget {
  const PathologyDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppFormSection(
      title: 'Pathology',
      children: [
        TissueDetailsInfoTile(
          title: 'Autopsy',
        ),
      ],
    );
  }
}
