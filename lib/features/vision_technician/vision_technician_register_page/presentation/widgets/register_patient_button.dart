import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';

class RegisterPatientButton extends StatelessWidget {
  const RegisterPatientButton({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;

    return OutlinedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PatientRegistrationMiniappPage(
              actionType: MiniAppActionType.REGISTER,
              displayName: loc.vtRegisterPatient,
            ),
          ),
        );
      },
      icon: const Icon(Icons.add),
      label: Text(
        loc.vtRegisterPatient,
        style: applyRobotoFont(
          color: AppColor.primary,
          fontSize: 16,
        ),
      ),
    );
  }
}
