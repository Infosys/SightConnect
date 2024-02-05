import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/presentation/widgets/register_search_bar.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';

class VisionTechnicianRegisterPage extends StatelessWidget {
  const VisionTechnicianRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        centerTitle: false,
        title: Text(
          "Register Patient",
          style: applyFiraSansFont(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RegisterSearchBar(),
            InkWell(
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
                child: Text("Register Patient")),
          ],
        ),
      ),
    );
  }
}
