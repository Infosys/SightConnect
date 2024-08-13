import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_questionnaire/modals/question_preview_dialog.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_questionnaire/widgets/choice_button.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.question,
    required this.onYesButtonPressed,
    required this.onNoButtonPressed,
    required this.index,
    required this.total,
    required this.totalGroupQuestion,
  });
  final QuestionnaireItemFHIRModel? question;
  final VoidCallback onYesButtonPressed;
  final Future Function(bool isNav, bool isForward) onNoButtonPressed;
  final int index;
  final int total;
  final int totalGroupQuestion;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    bool isNoFirst = question?.answerOption?.first.answer?.answerString == "No";
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: question?.quesExplanationText == null
            ? AppSize.kl * 2.5
            : AppSize.kl * 5,
        horizontal: AppSize.km,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSize.km),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              AutoSizeText(
                question?.text ?? '',
                style: applyRobotoFont(
                  fontSize: question?.quesExplanationText == null ? 18 : 22,
                ),
                maxLines: 5,
              ),
              Expanded(
                flex: question?.quesExplanationText == null ? 3 : 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSize.km,
                  ),
                  child: question?.quesExplanationText == null
                      ? Stack(
                          fit: StackFit.expand,
                          children: [
                            (question?.relatedImage == null ||
                                    question?.relatedImage?.isEmpty == true ||
                                    question?.relatedImage?.first.url == null)
                                ? Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.black.withOpacity(0.5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        ("No Preview Available"),
                                        style: applyRobotoFont(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColor.white),
                                      ),
                                    ),
                                  )
                                : AppNetworkImage(
                                    shapeCircle: false,
                                    imageUrl:
                                        question!.relatedImage!.first.url!,
                                    borderRadius: 24.0,
                                  ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppSize.km,
                                  vertical: AppSize.ks,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColor.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '$index',
                                        style: applyRobotoFont(fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: '/',
                                        style: applyRobotoFont(fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: '${total - totalGroupQuestion}',
                                        style: applyRobotoFont(fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // Positioned(
                            //   top: 200,
                            //   left: 0,
                            //   right: 0,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     mainAxisSize: MainAxisSize.max,
                            //     children: [
                            //       InkWell(
                            //         onTap: () {
                            //           onNoButtonPressed(true, false);
                            //         },
                            //         child: Container(
                            //           margin: const EdgeInsets.only(left: 20),
                            //           decoration: BoxDecoration(
                            //             color: AppColor.white.withOpacity(0.2),
                            //             borderRadius: BorderRadius.circular(4),
                            //           ),
                            //           child: const Center(
                            //             child: Icon(
                            //               Icons.chevron_left_sharp,
                            //               size: 40,
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //       InkWell(
                            //         onTap: () {
                            //           onNoButtonPressed(true, true);
                            //         },
                            //         child: Container(
                            //           margin: const EdgeInsets.only(right: 20),
                            //           decoration: BoxDecoration(
                            //             color: AppColor.white.withOpacity(0.2),
                            //             borderRadius: BorderRadius.circular(4),
                            //           ),
                            //           child: const Center(
                            //             child: Icon(
                            //               Icons.chevron_right_sharp,
                            //               size: 40,
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            // question?.relatedImage?.first.imageTitle == null ||
                            //         question?.relatedImage?.first.imageTitle ==
                            //             '0'
                            //     ? const SizedBox()
                            //     : Positioned(
                            //         bottom: 60,
                            //         left: 0,
                            //         right: 0,
                            //         child: Container(
                            //           margin: const EdgeInsets.only(bottom: 10),
                            //           padding: const EdgeInsets.all(10),
                            //           decoration: BoxDecoration(
                            //             color: AppColor.black.withOpacity(0.5),
                            //           ),
                            //           child: Center(
                            //             child: AutoSizeText(
                            //               question?.relatedImage?.first
                            //                       .imageTitle ??
                            //                   '',
                            //               style: applyRobotoFont(
                            //                 fontSize: 14,
                            //                 color: AppColor.white,
                            //               ),
                            //               softWrap: true,
                            //               textAlign: TextAlign.center,
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                          ],
                        )
                      : Center(
                          child: GestureDetector(
                            onTap: () {
                              showQuestionPreviewDialog(
                                context: context,
                                question: question,
                                isNoFirst: isNoFirst,
                                onNoButtonPressed: (isNoFirst, isYes) {
                                  onNoButtonPressed(isNoFirst, isYes);
                                },
                                onYesButtonPressed: onYesButtonPressed,
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: AppSize.km,
                                vertical: AppSize.ks,
                              ),
                              margin: const EdgeInsets.symmetric(
                                horizontal: AppSize.kl,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: AppColor.lightGrey,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.info_outline,
                                    color: AppColor.primary,
                                  ),
                                  const SizedBox(
                                    width: AppSize.ks,
                                  ),
                                  Flexible(
                                    child: AutoSizeText(
                                      loc.optionCardNeedHelpTextButton,
                                      maxLines: 1,
                                      style: applyRobotoFont(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: AppColor.primary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: ChoiceButton(
                          onPressed: () {
                            onNoButtonPressed(false, true);
                          },
                          title: isNoFirst
                              ? question?.answerOption?.first.answer
                                      ?.answerDisplayString ??
                                  ''
                              : question?.answerOption?.last.answer
                                      ?.answerDisplayString ??
                                  '',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: ChoiceButton(
                          onPressed: () {
                            onYesButtonPressed();
                          },
                          title: isNoFirst
                              ? question?.answerOption?.last.answer
                                      ?.answerDisplayString ??
                                  ''
                              : question?.answerOption?.first.answer
                                      ?.answerDisplayString ??
                                  '',
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // const SizedBox(height: AppSize.kl),
            ],
          ),
        ),
      ),
    );
  }
}
