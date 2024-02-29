import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageQuestionnaireOtherSymptomPage extends ConsumerWidget {
  const TriageQuestionnaireOtherSymptomPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(triageQuestionnaireProvider);
    final loc = context.loc!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          loc.assessment,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
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
                      loc.triageOtherSymptomsQuestion,
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
                        labelText: loc.triageEnterSymptoms,
                        labelStyle: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSize.kspadding,
                      horizontal: AppSize.kspadding,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSize.klradius * 10,
                      ),
                      border: Border.all(
                        color: AppColor.grey.withOpacity(
                          0.2,
                        ),
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            AppImages.mic,
                          ),
                          SvgPicture.asset(
                            AppImages.speaker,
                          )
                        ]),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ElevatedButton(
                      onPressed: () {
                        ref
                                .watch(triageQuestionnaireProvider)
                                .questionnaireRemarks =
                            model.textEditingController.text;
                        Navigator.pop(context);
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
                  const SizedBox(
                    width: AppSize.kmpadding,
                  ),
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: AppColor.white, width: 0),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        loc.skipButton,
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
