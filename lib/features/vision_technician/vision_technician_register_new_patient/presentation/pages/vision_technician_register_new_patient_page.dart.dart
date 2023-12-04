import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/address_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/basic_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/eye_care_details.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/toaster.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class VisionTechnicianRegisterNewPatientPage extends StatelessWidget {
   VisionTechnicianRegisterNewPatientPage({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: const CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text('Register New Patient'),
      ),
      body: Form(
        key:_formKey,
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(AppSize.klpadding + 5),
              child: Column(children: [
                 BasicDetails(),
                const SizedBox(height: AppSize.klheight),
                 EyeCareDetails(),
                const SizedBox(height: AppSize.klheight),
                 AddressDetails(),
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
                         if (_formKey.currentState!.validate()) {
                      showToastMessage(
                          "Done! Patient has been registred with ID-OP-934567.",
                          context,0);

                        
                      return;
                         }
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
