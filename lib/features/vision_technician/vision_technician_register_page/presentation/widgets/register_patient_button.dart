import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';

class RegisterPatientButton extends StatelessWidget {
  const RegisterPatientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const PatientRegistrationMiniappPage(
                          actionType: MiniAppActionType.REGISTER,
                          displayName: "Register Patient",
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Register Patient",
                    style: applyRobotoFont(
                      color: AppColor.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
  }
}