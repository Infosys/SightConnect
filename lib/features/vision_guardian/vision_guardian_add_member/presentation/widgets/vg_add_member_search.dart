import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/provider/vg_member_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_add_member_list_details.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_add_member_result_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_add_member_search_bar.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/data/model/vg_eye_assessment_patient_model.dart';


import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianAddMemberSearch extends ConsumerWidget {
  const VisionGuardianAddMemberSearch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<VisionGuardianEyeAssessmentPatientModel> event = ref.watch(visionGuardianMemberDetailsProvider).casesCritical;
    
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: AppSize.klheight * 3,
          title: const VisionGuardianAddMemeberSearchBar(readOnly: false),
          actions: [
          ],
        ),
        /*  floatingActionButton: VisionGuardianFloatingAddPatientAction() */

        body: (event.isEmpty)
            ? const VisionGuardianAddMemberResultCard()
            :  VisionGuardianAddMemberPatientsCard(model: event,));
  }
}
