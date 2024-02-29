import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_patient_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_event_list_patients.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianAddPatient extends HookConsumerWidget {
  final TriageMode triageMode;
  const VisionGuardianAddPatient({
    super.key,
    required this.triageMode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppbar(
        leadingIcon: IconButton(
          onPressed: () {
            ref.read(addPatientEventProvider).resetFields();
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        title: Text(
          loc.vgAddPatients,
          style: applyFiraSansFont(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        centerTitle: false,
      ),
      body: VisionGuardianPatientList(
        triageMode: triageMode,
      ),
    );
  }
}
