import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/pages/triage_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_add_member_gender_details.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_add_member_photo.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_form_helper_widgets.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/vg_member_details_provider.dart';

class VisionGuardianMemberDetailsPage extends HookConsumerWidget {
  const VisionGuardianMemberDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(visionGuardianMemberDetailsProvider);
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: const CustomAppbar(
        title: Text("Add Member"),
        centerTitle: false,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ElevatedButton(
          onPressed: () {
            logger.d(" this is name form from vg : ${data.name.text}");
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TriagePage()));
          },
          child: const Text(
            'Save & Proceed',
            style: TextStyle(
              color: AppColor.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(AppSize.kspadding),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  boxShadow: applyLightShadow(),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(AppSize.kmradius - 5),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color: AppColor.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Basic Details",
                        style: applyFiraSansFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const VisionGuardianAddMemberPhoto(),
                      customTextFieldRows(
                          data.name, data.lastName, "First Name", "Last Name"),
                      const SizedBox(height: AppSize.klheight),
                      customTextFieldRowsAgeDob(
                          data.age, data.dob, "Age", "Date of Birth", context),
                      const SizedBox(height: AppSize.klheight),
                      const VisionGuardianAddMemberGenderDetails(),
                      const SizedBox(height: AppSize.klheight),
                      customTextField(data.abhaid, "Abha ID(Optional)"),
                      const SizedBox(height: AppSize.klheight),
                      customTextField(data.mobileNumber, "Mobile Number"),
                      const SizedBox(height: AppSize.klheight),
                      customTextField(data.email, "Email ID(Optional)"),
                      const SizedBox(height: AppSize.klheight),
                      customTextField(data.doorNo, "Door Number"),
                      const SizedBox(height: AppSize.klheight),
                      customTextField(data.street, "Street"),
                      const SizedBox(height: AppSize.klheight),
                      customTextField(data.subDistrict, "Sub District Name"),
                      const SizedBox(height: AppSize.klheight),
                      customTextField(data.district, "District"),
                      const SizedBox(height: AppSize.klheight),
                      customTextField(data.city, "City"),
                      const SizedBox(height: AppSize.klheight),
                      customTextField(data.state, "State"),
                      const SizedBox(height: AppSize.klheight),
                      customTextField(data.pincode, "Pincode"),
                      const SizedBox(height: AppSize.klheight),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSize.klheight * 2),
              const SizedBox(height: AppSize.kmheight),
            ],
          ),
        ),
      ),
    );
  }
}
