import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_color.dart';

void showQuestionPreviewDialog({
  required BuildContext context,
  required QuestionnaireItemFHIRModel? question,
  required Function onYesButtonPressed,
  required Function(bool isNoFirst, bool isYes) onNoButtonPressed,
  required bool isNoFirst,
}) {
  showGeneralDialog(
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSize.kl * 5,
          horizontal: AppSize.km,
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
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
                  question?.quesExplanationText ?? '',
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
                                    color: AppColor.white,
                                  ),
                                ),
                              ),
                            )
                          : AppNetworkImage(
                              shapeCircle: false,
                              imageUrl: question!.relatedImage!.first.url!,
                              borderRadius: 24.0,
                            ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSize.km,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: InkWell(
                          splashColor: AppColor.white,
                          onTap: () {
                            Navigator.pop(context);
                            onNoButtonPressed(false, true);
                          },
                          child: Container(
                            height: AppSize.kl * 2,
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppSize.ks / 2, vertical: 0),
                            decoration: const BoxDecoration(
                              color: AppColor.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              border: Border.fromBorderSide(
                                BorderSide(
                                  color: AppColor.blue,
                                ),
                              ),
                            ),
                            child: Center(
                              child: AutoSizeText(
                                isNoFirst ? 'No' : 'Yes',
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
                            Navigator.pop(context);
                            onYesButtonPressed();
                          },
                          child: Container(
                            height: AppSize.kl * 2,
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.ks / 2,
                              vertical: 0,
                            ),
                            decoration: const BoxDecoration(
                              color: AppColor.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                              border: Border.fromBorderSide(
                                BorderSide(
                                  color: AppColor.blue,
                                ),
                              ),
                            ),
                            child: Center(
                              child: AutoSizeText(
                                isNoFirst ? 'Yes' : 'No',
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
              ],
            ),
          ),
        ),
      );
    },
  );
}
