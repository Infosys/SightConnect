import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_floating_action_add_patient.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_patient_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_search_bar_chips.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_search_patient.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../shared/constants/app_color.dart';
import '../../../../../../../shared/constants/app_size.dart';

class VisionGuardianEyeAssessmentPage extends HookConsumerWidget {
  const VisionGuardianEyeAssessmentPage({super.key});
  final eventStatus = const ["ALL", "URGENT", "EARLY", "ROUTINE"];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isSelected = useState<int>(0);
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(loc.recentServicesEyeAssessment),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VisionGuardianSearchPatient(
                    search: 'patient',
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
        ],
        leadingIcon: InkWell(
          onTap: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: const Icon(
            Icons.chevron_left,
            size: 35,
          ),
        ),
      ),
      floatingActionButton: const VisionGuardianFloatingAddPatientAction(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            vgEyeAssessmentHeaderChips(isSelected, context, eventStatus),
            const SizedBox(height: AppSize.km),
            const Expanded(
              child: VisionGuardianEyeAssessmentPatientsCard(
                type: "default",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
