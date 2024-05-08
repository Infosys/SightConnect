import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
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
    // final loc = context.loc!;
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
          padding: const EdgeInsets.all(AppSize.ks),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: AppSize.km),
                    child: AutoSizeText(
                      question?.text ?? '',
                      style: applyRobotoFont(
                          fontSize:
                              question?.quesExplanationText == null ? 22 : 28),
                      maxLines: 6,
                      minFontSize: 18,
                    ),
                  ),
                ),
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
                              showGeneralDialog(
                                  context: context,
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: AppSize.kl * 5,
                                        horizontal: AppSize.km,
                                      ),
                                      child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                              AppSize.km,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  children: [
                                                    const SizedBox.shrink(),
                                                    const Spacer(),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Icon(
                                                        Icons.close,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                AutoSizeText(
                                                  question?.quesExplanationText ??
                                                      '',
                                                  style: applyRobotoFont(
                                                    fontSize: 24,
                                                  ),
                                                  maxLines: 6,
                                                  minFontSize: 18,
                                                ),
                                                const SizedBox(
                                                  height: AppSize.km,
                                                ),
                                                Expanded(
                                                  child: Stack(
                                                    fit: StackFit.expand,
                                                    children: [
                                                      (question
                                                                      ?.relatedImage ==
                                                                  null ||
                                                              question?.relatedImage
                                                                      ?.isEmpty ==
                                                                  true ||
                                                              question
                                                                      ?.relatedImage
                                                                      ?.first
                                                                      .url ==
                                                                  null)
                                                          ? Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: AppColor
                                                                    .black
                                                                    .withOpacity(
                                                                        0.5),
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  ("No Preview Available"),
                                                                  style: applyRobotoFont(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      color: AppColor
                                                                          .white),
                                                                ),
                                                              ),
                                                            )
                                                          : AppNetworkImage(
                                                              shapeCircle:
                                                                  false,
                                                              imageUrl: question!
                                                                  .relatedImage!
                                                                  .first
                                                                  .url!,
                                                              borderRadius:
                                                                  24.0,
                                                            ),
                                                      Positioned(
                                                        top: 10,
                                                        right: 10,
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            horizontal:
                                                                AppSize.km,
                                                            vertical:
                                                                AppSize.ks,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: AppColor
                                                                .white
                                                                .withOpacity(
                                                                    0.4),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),
                                                          child: Text.rich(
                                                            TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      '$index',
                                                                  style: applyRobotoFont(
                                                                      fontSize:
                                                                          16),
                                                                ),
                                                                TextSpan(
                                                                  text: '/',
                                                                  style: applyRobotoFont(
                                                                      fontSize:
                                                                          16),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      '${total - totalGroupQuestion}',
                                                                  style: applyRobotoFont(
                                                                      fontSize:
                                                                          16),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: AppSize.km,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 12.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Flexible(
                                                        child: InkWell(
                                                          splashColor:
                                                              AppColor.white,
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                            onNoButtonPressed(
                                                                false, true);
                                                          },
                                                          child: Container(
                                                            height:
                                                                AppSize.kl * 2,
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        AppSize.ks /
                                                                            2,
                                                                    vertical:
                                                                        0),
                                                            decoration:
                                                                const BoxDecoration(
                                                              color: AppColor
                                                                  .white,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          40)),
                                                              border: Border
                                                                  .fromBorderSide(
                                                                BorderSide(
                                                                  color:
                                                                      AppColor
                                                                          .blue,
                                                                ),
                                                              ),
                                                            ),
                                                            child: Center(
                                                              child:
                                                                  AutoSizeText(
                                                                isNoFirst
                                                                    ? 'No'
                                                                    : 'Yes',
                                                                style:
                                                                    applyRobotoFont(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: AppColor
                                                                      .primary,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 10),
                                                      Flexible(
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.pop(
                                                                context);
                                                            onYesButtonPressed();
                                                          },
                                                          child: Container(
                                                            height:
                                                                AppSize.kl * 2,
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        AppSize.ks /
                                                                            2,
                                                                    vertical:
                                                                        0),
                                                            decoration:
                                                                const BoxDecoration(
                                                              color: AppColor
                                                                  .white,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          40)),
                                                              border: Border
                                                                  .fromBorderSide(
                                                                BorderSide(
                                                                  color:
                                                                      AppColor
                                                                          .blue,
                                                                ),
                                                              ),
                                                            ),
                                                            child: Center(
                                                              child:
                                                                  AutoSizeText(
                                                                isNoFirst
                                                                    ? 'Yes'
                                                                    : 'No',
                                                                style:
                                                                    applyRobotoFont(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: AppColor
                                                                      .primary,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                softWrap: true,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )),
                                    );
                                  });
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
                                  Text(
                                    'Need help to understand this?',
                                    style: applyRobotoFont(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: AppColor.primary,
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
                        child: InkWell(
                          splashColor: AppColor.white,
                          onTap: () {
                            onNoButtonPressed(false, true);
                          },
                          child: Container(
                            height: AppSize.height(context) * 0.13,
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppSize.kl - 5, vertical: 0),
                            decoration: const BoxDecoration(
                              color: AppColor.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.fromBorderSide(
                                BorderSide(
                                  color: AppColor.blue,
                                ),
                              ),
                            ),
                            child: Center(
                              child: AutoSizeText(
                                isNoFirst
                                    ? question?.answerOption?.first.answer
                                            ?.answerDisplayString ??
                                        ''
                                    : question?.answerOption?.last.answer
                                            ?.answerDisplayString ??
                                        '',
                                style: applyRobotoFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.primary,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            onYesButtonPressed();
                          },
                          child: Container(
                            height: AppSize.height(context) * 0.13,
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.kl - 5,
                              vertical: 0,
                            ),
                            decoration: const BoxDecoration(
                              color: AppColor.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.fromBorderSide(
                                BorderSide(
                                  color: AppColor.blue,
                                ),
                              ),
                            ),
                            child: Center(
                              child: AutoSizeText(
                                isNoFirst
                                    ? question?.answerOption?.last.answer
                                            ?.answerDisplayString ??
                                        ''
                                    : question?.answerOption?.first.answer
                                            ?.answerDisplayString ??
                                        '',
                                style: applyRobotoFont(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.primary,
                                ),
                                textAlign: TextAlign.center,
                                softWrap: true,
                              ),
                            ),
                          ),
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
