import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/date_input.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AgeInput extends StatelessWidget {
  const AgeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Row(
          children: [
            SizedBox(
              width: AppSize.width(context) * 0.2,
              child: Input(
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
            SizedBox(
              width: AppSize.width(context) * 0.2,
              child: DateInput(
                title: "Date of Birth",
                controller: ref
                        .read(registerNewPatientProvider)
                        .basicDetailsTextEditingControllers[
                    "dateofBirthController"]!,
              ),
            ),
          ],
        );
      },
    );
  }
}
