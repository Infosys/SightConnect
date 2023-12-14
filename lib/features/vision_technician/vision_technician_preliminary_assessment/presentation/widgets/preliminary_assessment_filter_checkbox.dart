import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/preliminary_assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PreliminaryAssessmentFilterCheckBox extends StatelessWidget {
  final String itemName;
  final String? name;
  final int includeInputBox;
  PreliminaryAssessmentFilterCheckBox(
      {super.key,
      required this.itemName,
      this.name,
      required this.includeInputBox});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name!,
          style: applyFiraSansFont(
            fontSize: 18,
            color: AppColor.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        Consumer(
          builder: (context, ref, child) {
            List<PreliminaryAssessmentModel> items;
            if (itemName == "eyeIssueType") {
              items = ref.watch(preliminaryAssessmentHelperProvider).eyeIssueType;
            } else if (itemName == "eyeSpecialistDeals")
              items =
                  ref.watch(preliminaryAssessmentHelperProvider).eyeSpecialistDeals;
            else if (itemName == "eyeSightProblem")
              items = ref.watch(preliminaryAssessmentHelperProvider).eyeSightProblem;
            else
              items =
                  ref.watch(preliminaryAssessmentHelperProvider).eyeRelatedProblem;

            return Wrap(
              children: [
                for (int index = 0; index < items.length; index++) ...[
                  SizedBox(
                    width: AppSize.width(context) * 0.4,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        items[index].type,
                        style: applyRobotoFont(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColor.grey),
                      ),
                      value: items[index].checked,
                      onChanged: (bool? value) {
     
                        ref
                            .read(preliminaryAssessmentHelperProvider.notifier)
                            .toogleFilterBoxes(itemName, index);
   
                      },
                    ),
                  )
                ],
                if (includeInputBox == 1)
                  Padding(
                    padding: const EdgeInsets.only(left: AppSize.klpadding),
                    child: SizedBox(
                        width: AppSize.width(context) * 0.2,
                        child: VTRegisterInput(
                          title: 'Others',
                          keyboardType: TextInputType.name,
                          controller: itemName == "eyeSightProblem"
                              ? ref
                                  .read(preliminaryAssessmentHelperProvider)
                                  .eyeSightProblemotherController
                              : ref
                                  .read(preliminaryAssessmentHelperProvider)
                                  .eyeRelatedProblemotherController,
                        )),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
