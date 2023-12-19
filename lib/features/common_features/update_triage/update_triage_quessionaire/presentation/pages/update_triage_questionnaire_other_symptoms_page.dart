import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_quessionaire/presentation/provider/update_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateTriageQuestionnaireOtherSymptomPage extends ConsumerWidget {
  final int reportId;
  const UpdateTriageQuestionnaireOtherSymptomPage(
      {super.key, required this.reportId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(updateTriageQuestionnaireProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assessment",
          style: TextStyle(
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
                      "Do you have any other symptoms?",
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
                        labelText: "Enter your symptoms here",
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
                    child: ElevatedButton(
                      onPressed: () async {
                        logger.f("I am here");
                        ref
                                .read(updateTriageQuestionnaireProvider)
                                .questionnaireRemarks =
                            model.textEditingController.text;

                        final res = await ref
                            .read(updateTriageQuestionnaireProvider)
                            .updateTriage(reportId);
                        res.fold((l) => logger.d(l), (r) {
                          logger.d(r);
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        });
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
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
                        showDialog(
                          context: context,
                          builder: (context) => BlurDialogBox(
                            content: Text(
                              "Are you sure you want to cancel?",
                              style: applyFiraSansFont(
                                fontSize: 18,
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                child: const Text("Yes"),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("No")),
                            ],
                          ),
                        );
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
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
