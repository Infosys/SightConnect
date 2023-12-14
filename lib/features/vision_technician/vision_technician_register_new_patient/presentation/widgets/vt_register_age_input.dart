import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_date_input.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTRegisterAgeInput extends StatelessWidget {
  const VTRegisterAgeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Row(
          children: [
            Flexible(
              child: VTRegisterInput(
                title: "Age",
                keyboardType: TextInputType.name,
                controller: ref
                    .read(registerNewPatientProvider)
                    .basicDetailsTextEditingControllers["ageController"]!,
              ),
            ),
            const SizedBox(width: AppSize.klwidth),
            Text("OR", style: applyRobotoFont(fontSize: 14)),
            const SizedBox(width: AppSize.klwidth),
            Flexible(
              child: VTRegisterDateInput(
                title: "Date of Birth",
                controller: ref
                        .read(registerNewPatientProvider)
                        .basicDetailsTextEditingControllers[
                    "dateOfBirthController"]!,
              ),
            ),
          ],
        );
      },
    );
  }
}
