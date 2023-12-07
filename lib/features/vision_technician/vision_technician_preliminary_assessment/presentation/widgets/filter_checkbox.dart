import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/input.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FilterCheckBox extends StatelessWidget {
  final String itemName;
  final String? name;
  final int includeInputBox;
  FilterCheckBox(
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
            var items;
            if (itemName == "eyeIssueType") {
              items = ref.watch(preliminaryAssessmentProvider).eyeIssueType;
            } else if (itemName == "eyeSpecialistDeals")
              items =
                  ref.watch(preliminaryAssessmentProvider).eyeSpecialistDeals;
            else if (itemName == "eyeSightProblem")
              items = ref.watch(preliminaryAssessmentProvider).eyeSightProblem;
            else
              items =
                  ref.watch(preliminaryAssessmentProvider).eyeRelatedProblem;

            return Wrap(
              children: [
                for (int index = 0; index < items.length; index++) ...[
                  SizedBox(
                    width: AppSize.width(context) * 0.4,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        items[index]["type"],
                        style: applyRobotoFont(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: AppColor.grey),
                      ),
                      value: items[index]["checked"],
                      onChanged: (bool? value) {
                        print(items[index]);
                        ref
                            .read(preliminaryAssessmentProvider.notifier)
                            .toogleFilterBoxes(itemName, index);
                        print(items[index]);
                      },
                    ),
                  )
                ],
                if (includeInputBox == 1)
                  Padding(
                    padding: const EdgeInsets.only(left: AppSize.klpadding),
                    child: SizedBox(
                        width: AppSize.width(context) * 0.2,
                        child: Input(
                          title: 'Others',
                          keyboardType: TextInputType.name,
                          controller: itemName == "eyeSightProblem"
                              ? ref
                                  .read(preliminaryAssessmentProvider)
                                  .eyeSightProblemotherController
                              : ref
                                  .read(preliminaryAssessmentProvider)
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
