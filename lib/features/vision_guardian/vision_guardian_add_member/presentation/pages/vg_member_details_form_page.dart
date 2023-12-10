import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/pages/triage_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/camera_helper.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_form_helper_widgets.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/vg_member_details_provider.dart';

class VisionGuardianMemberDetailsPage extends HookConsumerWidget {
  const VisionGuardianMemberDetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(visionGuardianMemberDetailsProvider);
    var selectedValue = useState<int>(-1);
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TriagePage()));
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
              Card(
                elevation: 2,
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
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 40, left: 20, bottom: 40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            data.image == null
                                ? InkWell(
                                    onTap: () async {
                                      try {
                                        var navigator = Navigator.of(context);
                                        var cameras = await availableCameras();
                                        if (cameras.isEmpty) {
                                          Fluttertoast.showToast(
                                              msg:
                                                  "camera found ${cameras.length}");
                                          return;
                                        }
                                        navigator.push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CameraHelper(cameras: cameras),
                                          ),
                                        );
                                      } catch (e) {
                                        Fluttertoast.showToast(
                                            msg: e.toString());
                                      }
                                    },
                                    child: const Icon(
                                      Icons.camera_alt_outlined,
                                      color: AppColor.grey,
                                      size: 45,
                                    ),
                                  )
                                : Image.file(
                                    File(data.image!.path),
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                            Text(
                              "Click to add Patient’s profile photo",
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColor.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      customTextFieldRows(
                          data.name, data.lastName, "First Name", "Last Name"),
                      const SizedBox(height: AppSize.klheight),
                      customTextFieldRowsAgeDob(
                          data.age, data.dob, "Age", "Date of Birth", context),
                      const SizedBox(height: AppSize.klheight),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Gender",
                            style: applyRobotoFont(
                                fontSize: 14, fontWeight: FontWeight.w400)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: 100,
                              child: RadioListTile<int>(
                                visualDensity: VisualDensity.compact,
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  "Male",
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.grey,
                                  ),
                                ),
                                value: 1,
                                groupValue: selectedValue.value,
                                onChanged: (value) {
                                  selectedValue.value = value!;
                                  data.setGender = 'Male';
                                },
                              ),
                            ),
                          ),
                          Flexible(
                            child: RadioListTile<int>(
                              visualDensity: VisualDensity.compact,
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                "Female",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.grey,
                                ),
                              ),
                              value: 2,
                              groupValue: selectedValue.value,
                              onChanged: (value) {
                                selectedValue.value = value!;
                                data.setGender = 'Female';
                              },
                            ),
                          ),
                          Flexible(
                            child: RadioListTile<int>(
                              visualDensity: VisualDensity.compact,
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                "Other",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.grey,
                                ),
                              ),
                              value: 3,
                              groupValue: selectedValue.value,
                              onChanged: (value) {
                                selectedValue.value = value!;
                                data.setGender = 'Other';
                              },
                            ),
                          ),
                        ],
                      ),
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
              const BrandingWidgetH(),
              const SizedBox(height: AppSize.kmheight),
            ],
          ),
        ),
      ),
    );
  }
}
