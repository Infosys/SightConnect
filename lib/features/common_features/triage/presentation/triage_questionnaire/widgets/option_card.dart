import 'package:cached_network_image/cached_network_image.dart';
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
  });
  final QuestionnaireItemFHIRModel? question;
  final VoidCallback onYesButtonPressed;
  final VoidCallback onNoButtonPressed;
  final int index;
  final int total;
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
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
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
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColor.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '${index + 1}',
                              style: const TextStyle(
                                color: AppColor.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const TextSpan(
                              text: ' / ',
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: '$total',
                              style: const TextStyle(
                                color: AppColor.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
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
          const SizedBox(height: AppSize.klheight),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: onNoButtonPressed,
                child: Container(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  decoration: const BoxDecoration(
                    color: AppColor.red,
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
