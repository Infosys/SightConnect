import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_dropdown_input.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTRegisterAddressDetails extends ConsumerWidget {
  const VTRegisterAddressDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> listOfStates =
        ref.watch(registerNewPatientHelperProvider).listOfStates;
    return Container(
        width: double.infinity,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address Details (Optional)",
                  style: applyFiraSansFont(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: AppSize.klheight),
                Consumer(
                  builder: (context, ref, child) {
                    return Wrap(
                      spacing: AppSize.klwidth,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: VTRegisterInput(
                                title: "Door Number",
                                keyboardType: TextInputType.name,
                                controller: ref
                                        .read(registerNewPatientHelperProvider)
                                        .addressDetailsTextEditingControllers[
                                    "doorNoController"]!,
                              ),
                            ),
                            const SizedBox(
                              width: AppSize.kmwidth,
                            ),
                            Flexible(
                              child: VTRegisterInput(
                                title: "Street",
                                keyboardType: TextInputType.name,
                                controller: ref
                                        .read(registerNewPatientHelperProvider)
                                        .addressDetailsTextEditingControllers[
                                    "streetController"]!,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: VTRegisterInput(
                                title: "District",
                                keyboardType: TextInputType.name,
                                controller: ref
                                        .read(registerNewPatientHelperProvider)
                                        .addressDetailsTextEditingControllers[
                                    "districtController"]!,
                              ),
                            ),
                            const SizedBox(
                              width: AppSize.kmwidth,
                            ),
                            Flexible(
                              child: VTRegisterInput(
                                title: "City",
                                keyboardType: TextInputType.name,
                                controller: ref
                                        .read(registerNewPatientHelperProvider)
                                        .addressDetailsTextEditingControllers[
                                    "cityController"]!,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: VTRegisterDropdownInput(
                                  listOfOptions: listOfStates),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: VTRegisterInput(
                                title: "Landmark",
                                keyboardType: TextInputType.name,
                                controller: ref
                                        .read(registerNewPatientHelperProvider)
                                        .addressDetailsTextEditingControllers[
                                    "landMarkController"]!,
                              ),
                            ),
                            const SizedBox(
                              width: AppSize.kmwidth,
                            ),
                            Flexible(
                              child: VTRegisterInput(
                                title: "Pincode",
                                keyboardType: TextInputType.number,
                                controller: ref
                                        .read(registerNewPatientHelperProvider)
                                        .addressDetailsTextEditingControllers[
                                    "pinCodeController"]!,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ],
            )));
  }
}
