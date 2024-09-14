import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_result/provider/triage_result_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_result/widgets/result_image_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_result/widgets/result_page_top_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/visual_acuity/features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/pages/vg_event_details_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_dashboard/presentation/pages/vg_dashboard_page.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_images.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/services/app_info_service.dart';
import 'package:eye_care_for_all/shared/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_event_data_provider.dart';

class TriageResultPage extends ConsumerWidget {
  const TriageResultPage({
    required this.triageResult,
    super.key,
  });
  final TriagePostModel triageResult;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(triageResultProvider(triageResult));
    final loc = context.loc!;
    // final observationData = ref.read(globalVisualAcuityProvider);
    return PopScope(
      canPop: false,
      onPopInvoked: (value) async {
        if (value) {
          return;
        }

        ref.read(accessibilityProvider).resetBrightness();
        if (PersistentAuthStateService.authState.activeRole ==
            "ROLE_VOLUNTEER" || PersistentAuthStateService.authState.activeRole == "ROLE_VISION_GUARDIAN") {
              VisionGuardianEventModel eventDetails = ref.read(vgEventDataCacheProvider).getEventDetails!;
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>  VisionGuardianEventDetailsPage(eventDetails: eventDetails)));
        } else {
          Navigator.popUntil(context, (route) => route.isFirst);
        }
        // Navigator.of(context).pushAndRemoveUntil(
        //   MaterialPageRoute(builder: (context) => const InitializationPage()),
        //   (route) => route.isFirst,
        // );
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppbar(
          leadingIcon: InkWell(
            onTap: () {
              ref.read(accessibilityProvider).resetBrightness();
              if (PersistentAuthStateService.authState.activeRole ==
                  "ROLE_VOLUNTEER") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const VisionGuardianDashboardPage()));
              } else {
                Navigator.popUntil(context, (route) => route.isFirst);
              }
            },
            child: const Icon(
              Icons.close_outlined,
              color: AppColor.black,
            ),
          ),
          title: Text(loc.triageEyeAssessmentResults),
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
                ResultPageTopCard(
                  triageResult: model.getOverallTriageResult(),
                  id: triageResult.subject,
                  testDate: triageResult.userStartDate?.formateDate,
                  testId: "${loc.triageTestId} ${triageResult.id}",
                ),
                const SizedBox(height: AppSize.km),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: AppSize.km),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor.white,
                    border: Border.all(
                      color: _checkColorMapper(
                        triageResult.cumulativeSeverity,
                      ),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    triageResult.diagnosticReportDescription ?? "",
                    textAlign: TextAlign.left,
                    softWrap: true,
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.km),
                const NearbyVisionCentersList(),
                const SizedBox(height: AppSize.km),
                HelplineCard(helpLine: AppInfoService.tollFreeNumber),
                const SizedBox(height: AppSize.km),
                ResultImageCard(
                  reportId: triageResult.id,
                ),
                const SizedBox(height: AppSize.kl * 3),
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
