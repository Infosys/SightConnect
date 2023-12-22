import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/providers/register_new_patient_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTRegisterEyeCareDetails extends ConsumerWidget {
  const VTRegisterEyeCareDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var eyeCareDetailsQuestion =
        ref.watch(registerNewPatientHelperProvider).eyeCareDetailsQuestion;

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
              "Eye Care Details (Optional)",
              style: applyFiraSansFont(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: AppSize.klheight),
            Wrap(
              spacing: AppSize.kswidth,
              children: [
                for (int index = 0;
                    index < eyeCareDetailsQuestion.length;
                    index++) ...[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${eyeCareDetailsQuestion[index].questionId}.${eyeCareDetailsQuestion[index].question}",
                          style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.ksheight,
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: AppSize.kmwidth,
                          children: List.generate(
                            2,
                            (index1) => ChoiceChip(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              side: const BorderSide(
                                  color: AppColor.grey, width: 1),
                              backgroundColor: AppColor.white,
                              padding: const EdgeInsets.all(8),
                              label: index1 == 0
                                  ? const Text('No')
                                  : const Text('Yes'),
                              selectedColor:
                                  eyeCareDetailsQuestion[index].answer ==
                                              "Yes" &&
                                          index1 == 1
                                      ? AppColor.lightBlue
                                      : eyeCareDetailsQuestion[index].answer ==
                                                  "No" &&
                                              index1 == 0
                                          ? AppColor.lightBlue
                                          : AppColor.white,
                              onSelected: (bool selected) {

                                if (eyeCareDetailsQuestion[index].answer ==
                                        "Yes" &&
                                    index1 == 1) {
                                  ref
                                      .read(registerNewPatientHelperProvider.notifier)
                                      .seteyeCareAnser(index, "UnSelected");
                                } else if (eyeCareDetailsQuestion[index]
                                            .answer ==
                                        "No" &&
                                    index1 == 0) {
                                  ref
                                      .read(registerNewPatientHelperProvider.notifier)
                                      .seteyeCareAnser(index, "UnSelected");
                                } else {
                                  ref
                                      .read(registerNewPatientHelperProvider.notifier)
                                      .seteyeCareAnser(
                                          index, (index1 == 0 ? "No" : "Yes"));
                                }
                              },
                              selected: true,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.kmheight,
                        ),
                        if (eyeCareDetailsQuestion[index].questionId != 3)
                          Consumer(
                            builder: (context, ref, child) {
                              return Container(
                                padding:
                                    const EdgeInsets.all(AppSize.kmpadding),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(AppSize.ksradius),
                                    color: const Color(0xffFFFFFF)),
                                width: AppSize.width(context) * 0.4,
                                height: AppSize.klheight * 5,
                                child: VTRegisterInput(
                                    title: "Where?",
                                    keyboardType: TextInputType.name,
                                    controller: eyeCareDetailsQuestion[index]
                                                .questionId ==
                                            1
                                        ? ref
                                                .read(registerNewPatientHelperProvider)
                                                .eyeCareDetailsTextEditingControllers[
                                            "whereController1"]!
                                        : ref
                                                .read(registerNewPatientHelperProvider)
                                                .eyeCareDetailsTextEditingControllers[
                                            "whereController2"]!),
                              );
                            },
                          ),
                        const SizedBox(
                          height: AppSize.kmheight,
                        )
                      ])
                ]
              ],
            )
          ],
        ),
      ),
    );
  }
}
