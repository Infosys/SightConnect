import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/data/model/vg_eye_assessment_patient_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/providers/vg_eye_assessment_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_empty_result_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_floating_action_add_patient.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_patient_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_search_bar.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_search_filter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianEyeAssessmentSearchPatient extends ConsumerWidget {
  const VisionGuardianEyeAssessmentSearchPatient({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<VisionGuardianEyeAssessmentPatientModel> searchResults =
        ref.watch(visionGuardianEyeAssessmentProvider).searchResults;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: AppSize.klheight * 3,
          // backgroundColor: Colors.red,
          title: const VisionGuardianEyeAssessmentSearchBar(readOnly: false),
          actions: [
            IconButton(
              onPressed: () {
                showVtSearchFilter(context);
              },
              icon: const Icon(Icons.filter_list),
            ),
          ],
        ),
         floatingActionButton: const VisionGuardianFloatingAddPatientAction()
        ,
        body: searchResults.isEmpty
            ? const Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VisionGuardianEyeAssessmentResultCard(),
              ],
            ))
            : VisionGuardianEyeAssessmentPatientsCard(model: searchResults));
  }
}
