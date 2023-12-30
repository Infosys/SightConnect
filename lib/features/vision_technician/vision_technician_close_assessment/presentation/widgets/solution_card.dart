import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/solution_tile.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/widgets/solution_tile_with_dropdown.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';

class SolutionCard extends StatelessWidget {
  const SolutionCard({super.key});

  static List<String> solutions = [
    "Spectacles",
    "Cataract Surgery",
    "Eye Drops",
    "Oral Medication",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Solutions(s)",
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SolutionTile(title: solutions[0]),
        SolutionTile(title: solutions[1]),
        SolutionTileWithDropdown(title: solutions[2]),
        SolutionTileWithDropdown(title: solutions[3]),
      ],
    );
  }
}
