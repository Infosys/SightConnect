import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
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
  final VoidCallback onNoButtonPressed;
  final int index;
  final int total;
  final int totalGroupQuestion;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.kmpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            question?.text ?? '',
            style: applyFiraSansFont(fontSize: 22),
          ),
          const SizedBox(height: AppSize.klheight),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.kmradius),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: (question?.relatedImage == null ||
                            question?.relatedImage?.isEmpty == true ||
                            question?.relatedImage?.first.url == null)
                        ? Container(
                            decoration: BoxDecoration(
                              color: AppColor.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
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
                ],
              ),
            ),
          ),
          const SizedBox(height: AppSize.ksheight),
          Text(
            "Note: The images shown here are for indication only. They may not appear the same way in real life.",
            style: applyRobotoFont(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.klheight),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                customBorder: const CircleBorder(),
                onTap: onNoButtonPressed,
                child: Container(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  decoration: const BoxDecoration(
                    color: Color(0xffDD0000),
                    shape: BoxShape.circle,
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: AppColor.white,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.close,
                    color: AppColor.white,
                    size: 35,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              InkWell(
                customBorder: const CircleBorder(),
                onTap: onYesButtonPressed,
                child: Container(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  decoration: const BoxDecoration(
                    color: AppColor.green,
                    shape: BoxShape.circle,
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: AppColor.white,
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.check,
                    color: AppColor.white,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.klheight),
        ],
      ),
    );
  }
}
