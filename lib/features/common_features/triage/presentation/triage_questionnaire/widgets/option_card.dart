import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            question?.text ?? '',
            style: applyFiraSansFont(fontSize: 22),
          ),
        ),
        const SizedBox(height: AppSize.klheight),
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                child: (question?.relatedImage == null ||
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
                        imageUrl: question!.relatedImage!.first.url!,
                        borderRadius: 0.0,
                      ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.kmpadding,
                    vertical: AppSize.kspadding,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.white.withOpacity(0.8),
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
              Positioned(
                top: 200,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () {
                        onNoButtonPressed(true, false);
                      },
                      child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: AppColor.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.chevron_left_outlined,
                              size: 50,
                            ),
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        onNoButtonPressed(true, true);
                      },
                      child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: AppColor.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.chevron_right_outlined,
                              size: 50,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              question?.relatedImage?.first.imageTitle == null ||
                      question?.relatedImage?.first.imageTitle == '0'
                  ? const SizedBox()
                  : Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColor.black.withOpacity(0.5),
                        ),
                        child: Center(
                          child: Text(
                            question?.relatedImage?.first.imageTitle ?? '',
                            style: applyRobotoFont(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColor.white,
                            ),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
            ],
          ),
        ),
        const SizedBox(height: AppSize.klheight),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 0),
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
                        horizontal: AppSize.klpadding - 5, vertical: 0),
                    decoration: const BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: AppColor.blue,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
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
                          color: AppColor.blue,
                        ),
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
                        horizontal: AppSize.klpadding - 5, vertical: 0),
                    decoration: const BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: AppColor.blue,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
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
                          color: AppColor.blue,
                        ),
                        softWrap: true,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSize.klheight),
      ],
    );
  }
}
