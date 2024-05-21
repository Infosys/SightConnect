import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/tissue_details_form_section.dart';
import 'package:eye_care_for_all/features/doctor/tissue_details/presentation/widgets/tissue_details_info_tile.dart';
import 'package:flutter/material.dart';

class PathologyDetailsSection extends StatelessWidget {
  const PathologyDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const TissueDetailsFormSection(
      title: 'Pathology',
      children: [
        TissueDetailsInfoTile(
          title: 'Autopsy',
        ),
      ],
    );
  }
}
