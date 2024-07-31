import 'package:eye_care_for_all/apps/sightconnect/features/optometritian/optometritian_dashboard/presentation/provider/optometritian_add_patient_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientIdInput extends HookConsumerWidget {
  const PatientIdInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(optometritianAddPatientProvider);

    var errorText = useState<String>("");

    return TextFormField(
      style: const TextStyle(
        fontFamily: 'Roboto',
      ),
      onChanged: (value) {
        if (data.patientIdController.text.isEmpty) {
          errorText.value = "Patient ID cannot be empty";
        } else if (!RegExp(r'^[0-9a-zA-Z\-]+$')
            .hasMatch(data.patientIdController.text)) {
          errorText.value = "Patient ID can only contain alphabets and numbers";
        } else {
          errorText.value = "";
        }
      },
      controller: data.patientIdController,
      decoration: InputDecoration(
        labelText: "Patient ID",
        labelStyle: applyRobotoFont(
          fontSize: 14,
        ),
        errorText: errorText.value.isEmpty ? null : errorText.value,
      ),
    );
  }
}
