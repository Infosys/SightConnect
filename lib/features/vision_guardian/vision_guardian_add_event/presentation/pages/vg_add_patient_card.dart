import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_patient_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_list_patients.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianAddPatient extends HookConsumerWidget {
  const VisionGuardianAddPatient({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppbar(
        leadingIcon: IconButton(
          onPressed: () {
            ref.read(addPatientEventProvider).setPatientSearchQuery("");
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        title: Text(
          "Add Patients",
          style: applyFiraSansFont(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        centerTitle: false,
      ),
      body: const VisionGuardianPatientList(),
    );
  }
}
