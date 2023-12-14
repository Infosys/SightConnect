import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_dashboard/presentation/provider/vision_technician_dashboard_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_address_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_basic_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_eye_care_details.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/toaster.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianRegisterNewPatientPage extends ConsumerWidget {
  VisionTechnicianRegisterNewPatientPage({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.all(AppSize.kmpadding)),
            backgroundColor: MaterialStateProperty.all(AppColor.primary),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.klradius * 5),
              ),
            ),
          ),
          onPressed: () {
            ref.read(registerNewPatientProvider.notifier).saveAndProceed();
            /*  if (_formKey.currentState!.validate()) { */
            
            // ref.read(registerNewPatientProvider).saveAndProceed();
            
            // print(_formKey.currentState?.save);
            // ref
            //     .read(registerNewPatientProvider)
            //     .saveAndProceed();
            showToastMessage("Patient details saved!", context, 0);
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
                fontSize: 14, color: AppColor.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      backgroundColor: AppColor.scaffold,
      appBar: AppBar(
        leadingWidth: 70,
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            ref.read(visionTechnicianDashboardProvider).changeIndex(0);
          },
        ),
        title: Text(
          'Register Patient',
          style: applyFiraSansFont(fontWeight: FontWeight.w500),
        ),
      ),
      body: Form(
        key: _formKey,
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(AppSize.kmpadding),
            child: Column(
              children: [
                BasicDetails(),
                SizedBox(height: AppSize.klheight),
                VTRegisterEyeCareDetails(),
                SizedBox(height: AppSize.klheight),
                VTRegisterAddressDetails(),
                SizedBox(height: AppSize.klheight),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
