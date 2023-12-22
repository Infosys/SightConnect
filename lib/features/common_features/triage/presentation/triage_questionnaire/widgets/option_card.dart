import 'package:cached_network_image/cached_network_image.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:flutter/material.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter_svg/svg.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.question,
    required this.onYesButtonPressed,
    required this.onNoButtonPressed,
  });
  final QuestionnaireItemFHIRModel? question;
  final VoidCallback onYesButtonPressed;
  final VoidCallback onNoButtonPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: SingleChildScrollView(
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
            const SizedBox(
              height: AppSize.kmheight,
            ),
            AspectRatio(
              aspectRatio: 0.79,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: question?.relatedImage?.first.url == null
                              ? const SizedBox()
                              : CachedNetworkImage(
                                  imageUrl: question!.relatedImage!.first.url!,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                )),
                    ),
                    // Align(
                    //   alignment: Alignment.bottomCenter,
                    //   child: Padding(
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: AppSize.klpadding * 2,
                    //       vertical: AppSize.klpadding,
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         SvgPicture.asset(
                    //           AppImages.mic,
                    //         ),
                    //         SvgPicture.asset(
                    //           AppImages.speaker,
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // )
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
      ),
    );
  }
}
