import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_address_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_basic_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_eye_care_details.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/toaster.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianRegisterNewPatientPage extends ConsumerWidget {
  VisionTechnicianRegisterNewPatientPage({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: const CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text('Register New Patient'),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(AppSize.klpadding + 5),
              child: Column(children: [
                const BasicDetails(),
                const SizedBox(height: AppSize.klheight),
                const VTRegisterEyeCareDetails(),
                const SizedBox(height: AppSize.klheight),
                const VTRegisterAddressDetails(),
                const SizedBox(height: AppSize.klheight),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColor.shadowColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.klradius),
                      ),
                    ),
                    onPressed: () {
                      /*  if (_formKey.currentState!.validate()) { */
                      print(_formKey.currentState?.save);
                      print(ref
                          .read(registerNewPatientProvider.notifier)
                          .getFormDetails());
                      showToastMessage(
                          "Done! Patient has been registred with ID-OP-934567.",
                          context,
                          0);
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const VisionTechnicianPreliminaryAssessmentPage();
                        },
                      ));

                      return;
                      /* } */
                    },
                    child: Text(
                      "Save & Proceed",
                      style: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ])),
        ),
      ),
    );
  }
}
