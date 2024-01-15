import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/keycloak.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/core/services/shared_preference.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/provider/triage_result_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/widgets/assessment_result_cards.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/widgets/result_page_top_card.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../patient/patient_assessments_and_tests/presentation/pages/patient_assessments_and_tests_page.dart';

import '../widgets/result_page_bottom_cards.dart';

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
          title: Text(loc.eyeAssessmentResults),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppSize.kmpadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                ResultPageTopCard(
                  triageResult: model.getOverallTriageResult(),
                  id: triageResult.subject,
                ),
                const SizedBox(height: AppSize.kmheight),
                AssessmentResultCards(
                  triageResult: model.getCompleteTriageResultList(),
                ),
                const SizedBox(height: AppSize.kmheight),
                PersistentAuthStateService.authState.activeRole ==
                        "ROLE_VISION_GUARDIAN"
                    ? const SizedBox()
                    : Column(
                        children: [
                          InkWell(
                            onTap: () {
                              ref.read(accessibilityProvider).resetBrightness();
                              Navigator.of(context)
                                  .popUntil((route) => route.isFirst);
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AssessmentsAndTestsPage(),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(AppSize.kspadding),
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(
                                      2,
                                      10,
                                    ),
                                    color: AppColor.primary.withOpacity(0.1),
                                    blurRadius: 20,
                                    spreadRadius: 5,
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.circular(AppSize.ksradius),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        AppColor.primary.withOpacity(0.1),
                                    child: SvgPicture.asset(
                                      AppIcon.report,
                                      height: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: AppSize.width(context) * 0.05,
                                  ),
                                  Text(
                                    loc.assessmentReportButton,
                                    style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(Icons.chevron_right_sharp),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: AppSize.klheight),
                        ],
                      ),
                Text(
                  loc.assessmentResultPageMoreDetailsText,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: AppSize.kmheight),
                const NearbyVisionCentersList(),
                const SizedBox(height: AppSize.kmheight),
                const ResultPageBottomCards(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
