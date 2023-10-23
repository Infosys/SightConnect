import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/presentation/pages/patient_visual_acuity_initiate_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class VisualAcuityTumblingLeftEyeInstruction extends StatelessWidget {
  const VisualAcuityTumblingLeftEyeInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(
          title: Text("Visual Acuity Test"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Test 1 - Left Eye",
                style: applyFiraSansFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                softWrap: true,
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              Text(
                "Without pressing on the eyelid, cover the RIGHT EYE with your hand. If you are wearing eyeglasses place your hand over the eyeglass.",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                softWrap: true,
              ),
              const SizedBox(
                height: AppSize.kmheight + 2,
              ),
              Center(
                child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.primary.withOpacity(0.12),
                          offset: const Offset(0, 2),
                          blurRadius: 20,
                          spreadRadius: 20,
                        ),
                      ],
                    ),
                    height: AppSize.height(context) * 0.5,
                    width: AppSize.width(context) * 0.7,
                    child: Image.asset("assets/images/Test1LeftEye.png")),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        visualDensity: VisualDensity(vertical: -1),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const PatinetVisualAcuityInitiatePage(),
                          ),
                        );
                      },
                      child: const Text("Continue"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
