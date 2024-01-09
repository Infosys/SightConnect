import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_quessionaire/presentation/provider/update_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateTriageTextTypeQuestion extends ConsumerWidget {
  final Function(String value) onSubmitted;
  final QuestionnaireItemFHIRModel question;
  const UpdateTriageTextTypeQuestion({
    super.key,
    required this.question,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(updateTriageQuestionnaireProvider);
    final loc = context.loc!;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     "Assessment",
      //     style: TextStyle(
      //       fontSize: 16,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(
      //         Icons.search,
      //       ),
      //     ),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(
          AppSize.klpadding,
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSize.klpadding,
                      horizontal: AppSize.kmpadding,
                    ),
                    child: Text(
                      question.text ?? '',
                      style: applyFiraSansFont(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(
                      AppSize.klpadding,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSize.ksradius,
                      ),
                      border: Border.all(
                        color: AppColor.grey.withOpacity(
                          0.2,
                        ),
                      ),
                    ),
                    child: TextFormField(
                      controller: model.textEditingController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 1.0,
                            color: AppColor.primary,
                          ),
                        ),
                        labelText: "Enter here",
                        labelStyle: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  // Container(
                  //   padding: const EdgeInsets.symmetric(
                  //     vertical: AppSize.kspadding,
                  //     horizontal: AppSize.kspadding,
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(
                  //       AppSize.klradius * 10,
                  //     ),
                  //     border: Border.all(
                  //       color: AppColor.grey.withOpacity(
                  //         0.2,
                  //       ),
                  //     ),
                  //   ),
                  //   child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         SvgPicture.asset(
                  //           AppImages.mic,
                  //         ),
                  //         SvgPicture.asset(
                  //           AppImages.speaker,
                  //         )
                  //       ]),
                  // )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        onSubmitted(model.textEditingController.text);
                      },
                      child: Text(
                        loc.submitButton,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
