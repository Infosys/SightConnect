import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/pages/triage_questionnaire_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/eye_scan_tab_view.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/widgets/optometritian_report_questionnaire_card.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/widgets/optometritian_tumbling_report_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OptometritianReportPage extends ConsumerWidget {
  const OptometritianReportPage(
      {required this.id,
      required this.education,
      required this.employment,
      super.key});

  final String id;
  final String education;
  final String employment;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GlobalKey<NavigatorState> scaffoldKey = GlobalKey<NavigatorState>();
    TriageUrgency urgency =
        ref.watch(triageUrgencyRepositoryProvider).calculateTriageUrgency();
    return WillPopScope(
      onWillPop: () async {
        ref.read(triageProvider).resetTriage();
        Navigator.of(context).popUntil((route) => route.isFirst);
        return false;
      },
      child: Scaffold(
        key: scaffoldKey,
        appBar: CustomAppbar(
          leadingIcon: IconButton(
            onPressed: () {
              ref.read(triageProvider).resetTriage();
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColor.black.withOpacity(0.7),
            ),
          ),
          centerTitle: false,
          title: Text(
            "Assessment Report",
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(
                  AppSize.ksradius,
                ),
              ),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    "assets/images/optometritian_report_top_bg.svg",
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppSize.kspadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              id,
                              style: applyFiraSansFont(
                                  fontSize: 16,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "AID ${id}1",
                              style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              education,
                              style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              employment,
                              style: applyRobotoFont(
                                  fontSize: 14,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSize.klheight,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Category",
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: AppSize.ksheight,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                  width: AppSize.width(context) * 0.35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: urgency == TriageUrgency.EMERGENCY
                        ? AppColor.red
                        : urgency == TriageUrgency.PRIORITY
                            ? AppColor.orange
                            : AppColor.green,
                    border: Border.all(
                      width: 1.5,
                      color: urgency == TriageUrgency.EMERGENCY
                          ? AppColor.red
                          : urgency == TriageUrgency.PRIORITY
                              ? AppColor.orange
                              : AppColor.green,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      urgency == TriageUrgency.EMERGENCY
                          ? 'Urgent Consult'
                          : urgency == TriageUrgency.PRIORITY
                              ? 'Early Consult'
                              : 'Regular Consult',
                      style: applyRobotoFont(
                        fontSize: 12,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: AppSize.ksheight),
            const OptometritianReportQuestionnaireCard(),
            const OptometritianTumblingReportCard(),
            const EyeScanTabView(),
            // SizedBox(
            //   height: AppSize.height(context) * 0.01,
            // ),
            const BrandingWidgetH(),
          ]),
        )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(triageProvider);
                  ref.invalidate(tumblingTestProvider);
                  ref.invalidate(triageQuestionnaireProvider);
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TriageQuestionnairePage(),
                    ),
                  );
                },
                child: const Text("Start New Assessment"),
              ),
              const SizedBox(
                width: AppSize.kmheight,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    ref.invalidate(triageProvider);
                    ref.invalidate(tumblingTestProvider);
                    ref.invalidate(triageQuestionnaireProvider);
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: const Text("Home"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
