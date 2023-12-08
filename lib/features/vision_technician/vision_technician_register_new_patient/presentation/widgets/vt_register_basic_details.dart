import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_age_input.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_gender_input.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_input.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/upload_photo_bottom_sheet.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BasicDetails extends StatelessWidget {
 const BasicDetails({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: AppSize.klheight * 25,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(AppSize.kmradius),
          boxShadow: const [
            BoxShadow(
              color: AppColor.lightGrey, //New
              blurRadius: AppSize.ksradius / 2,
              spreadRadius: AppSize.ksradius / 8,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSize.klpadding),
          child: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Basic Details",
                    style: applyFiraSansFont(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        spacing: AppSize.kmwidth,
                        runSpacing: AppSize.kmheight,
                        direction: Axis.horizontal,
                        children: [
                          SizedBox(
                              width: AppSize.width(context) * 0.2,
                              child: VTRegisterInput(
                                  title: 'First Name',
                                  keyboardType: TextInputType.name,
                                  controller: ref.read(registerNewPatientProvider).basicDetailsTextEditingControllers["firstNameController"]!)),
                          SizedBox(
                              width: AppSize.width(context) * 0.2,
                              child: VTRegisterInput(
                                  title: 'Middle Name',
                                  keyboardType: TextInputType.name,
                                  controller: ref.read(registerNewPatientProvider).basicDetailsTextEditingControllers["middleNameController"]!)),
                          SizedBox(
                              width: AppSize.width(context) * 0.2,
                              child: VTRegisterInput(
                                title: 'Last Name',
                                keyboardType: TextInputType.name,
                                controller:  ref.read(registerNewPatientProvider).basicDetailsTextEditingControllers["lastNameController"]!)),
                          Column(
                            children: [
                              SizedBox(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return UploadPhotoBottomSheet(
                                            pickFile: () async {
                                              FilePickerResult? result =
                                                  await FilePicker.platform
                                                      .pickFiles(
                                                type: FileType.custom,
                                                allowedExtensions: ['jpg'],
                                              );

                                              if (result != null) {
                                                // PlatformFile file = result.files.first;
                                                if (context.mounted) {
                                                  Navigator.of(context).pop();
                                                }
                                              }
                                            },
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: AppSize.klwidth * 5,
                                      height: AppSize.klheight * 5,
                                      decoration: BoxDecoration(
                                        color: AppColor.white,
                                        borderRadius: BorderRadius.circular(
                                            AppSize.kmradius),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: AppColor.lightGrey, //New
                                            blurRadius: AppSize.ksradius / 2,
                                            spreadRadius: AppSize.ksradius / 8,
                                          )
                                        ],
                                      ),
                                      child: const Icon(
                                        CupertinoIcons.person_add_solid,
                                        size: AppSize.klheight * 4,
                                        color: AppColor.lightGrey,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Add Profile Photo",
                                  style: applyRobotoFont(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                     const VTRegisterAgeInput(),
                      const SizedBox(height: AppSize.klheight * 2),
                      Wrap(
                        direction: Axis.horizontal,
                        children: [
                          SizedBox(
                              width: AppSize.width(context) * 0.4,
                              child: const VTRegisterGenderInput()),
                          const SizedBox(
                            width: AppSize.kmwidth,
                          ),
                          SizedBox(
                              width: AppSize.width(context) * 0.4,
                              child: VTRegisterInput(
                                title: 'ABHA ID (Optional)',
                                keyboardType: TextInputType.name,
                                controller: ref.read(registerNewPatientProvider).basicDetailsTextEditingControllers["abhaIdController"]!)),
                        ],
                      ),
                      const SizedBox(height: AppSize.klheight * 2),
                      Row(
                        children: [
                          SizedBox(
                              width: AppSize.width(context) * 0.4,
                              child: VTRegisterInput(
                                title: "Mobile Number",
                                keyboardType: TextInputType.number,
                                controller: ref.read(registerNewPatientProvider).basicDetailsTextEditingControllers["mobileNumberController"]!)),
                          const SizedBox(
                            width: AppSize.kmwidth,
                          ),
                          SizedBox(
                              width: AppSize.width(context) * 0.4,
                              child: VTRegisterInput(
                                title: 'Email (Optional)',
                                keyboardType: TextInputType.emailAddress,
                                controller:  ref.read(registerNewPatientProvider).basicDetailsTextEditingControllers["emailIdController"]!)),
                        ],
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ));
  }
}
