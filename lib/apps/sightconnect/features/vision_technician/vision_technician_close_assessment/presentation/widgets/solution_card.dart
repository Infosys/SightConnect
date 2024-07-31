import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/data/enums/vt_close_assessment_enums.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/widgets/solution_tile.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SolutionCard extends ConsumerWidget {
  const SolutionCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<GoalOutCome> goalOutcomes =
        ref.watch(vtCloseAssessmentHelperProvider).goalOutComeList;
    final loc = context.loc!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          loc.vtSolutions,
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        ...goalOutcomes
            .map((goalOutCome) => SolutionTile(goalOutCome: goalOutCome)),
        // SolutionTile(title: solutions[0]),
        // SolutionTile(title: solutions[1]),
        // SolutionTileWithDropdown(title: solutions[2]),
        // SolutionTileWithDropdown(title: solutions[3]),
      ],
    );
  }
}
