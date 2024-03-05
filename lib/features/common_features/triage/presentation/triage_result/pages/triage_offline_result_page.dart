import 'dart:convert';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/providers/triage_member_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageOfflineResultPage extends ConsumerWidget {
  const TriageOfflineResultPage({
    required this.triageResult,
    super.key,
  });
  final TriagePostModel triageResult;

  Severity _calculateSeverity(TriagePostModel triageResult) {
    int cummulativeScore = triageResult.cummulativeScore ?? 0;
    if (cummulativeScore >= 3) {
      return Severity.ABNORMAL;
    } else if (cummulativeScore >= 2) {
      return Severity.HIGH;
    } else {
      return Severity.LOW;
    }
  }

  _getSeverityDescription(Severity severity) {
    switch (severity) {
      case Severity.ABNORMAL:
        return "Seeking immediate attention from an eye specialist is crucial to address your condition effectively. Please schedule a consultation without delay";
      case Severity.HIGH:
        return "It's advisable to arrange an early visit to an eye specialist for a thorough evaluation and personalized treatment.";
      default:
        return "Prioritizing regular eye check-ups contributes to long-term eye health. Book an appointment with an eye specialist for a comprehensive examination";
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;

    return PopScope(
      canPop: false,
      onPopInvoked: (value) async {
        if (value) {
          return;
        }

        ref.read(accessibilityProvider).resetBrightness();
        Navigator.of(context).popUntil((route) => route.isFirst);
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppbar(
          leadingIcon: InkWell(
            onTap: () {
              ref.read(accessibilityProvider).resetBrightness();
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            child: const Icon(
              Icons.close_outlined,
              color: AppColor.black,
            ),
          ),
          title: Text(loc.triageEyeAssessmentResults),
          actions: [
            SvgPicture.asset(
              AppIcon.offlineReportSyncError,
              height: 32,
              width: 32,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.scaffoldBg),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: AppSize.height(context) * 0.14),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ref
                                      .read(triageMemberProvider)
                                      .testPatientName
                                      ?.capitalizeFirstOfEach() ??
                                  "--",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColor.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "PID: ${triageResult.patientId ?? ""}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.white.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Triage ID: --",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColor.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              triageResult.issued.formatDateTimeMonthName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.white.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSize.kmheight),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor.white,
                    border: Border.all(
                      color: _checkColorMapper(
                        _calculateSeverity(triageResult),
                      ),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    _getSeverityDescription(_calculateSeverity(triageResult)) ??
                        context.loc!.vtNoDataFound,
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.kmheight),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor.grey.withOpacity(0.2),
                  ),
                  child: Text(
                    'Please call us immediately, we will guide you to the nearest eye centre.',
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.kmheight),
                const HelplineCard(helpLine: AppText.tollFreeNumber),
                const SizedBox(height: AppSize.kmheight),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        loc.eyeScanTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: applyFiraSansFont(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: AppSize.kmheight),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: SizedBox(
                          height: 170,
                          child: Row(
                            children: [
                              Expanded(
                                child: _EyeScanImage(
                                  image: triageResult.imagingSelection
                                      ?.where((element) =>
                                          element.bodySite == BodySite.LEFT_EYE)
                                      .first
                                      .endpoint,
                                  name: loc.leftEyeString,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: _EyeScanImage(
                                  image: triageResult.imagingSelection
                                      ?.where((element) =>
                                          element.bodySite ==
                                          BodySite.RIGHT_EYE)
                                      .first
                                      .endpoint,
                                  name: loc.rightEyeString,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSize.klheight * 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _checkColorMapper(Severity? severity) {
    switch (severity) {
      case Severity.ABNORMAL:
        return AppColor.red;
      case Severity.LOW:
        return AppColor.green;
      case Severity.HIGH:
        return AppColor.orange;
      default:
        return AppColor.grey;
    }
  }
}

class _EyeScanImage extends StatelessWidget {
  const _EyeScanImage({
    required this.image,
    required this.name,
  });

  final String? image;
  final String name;

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          name,
          style: applyRobotoFont(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.kmheight),
        image == null
            ? Center(child: Text(loc.imageNotCapturedToastMessage))
            : Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.ksradius),
                  child: Image.memory(
                    base64Decode(image!),
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
      ],
    );
  }
}
