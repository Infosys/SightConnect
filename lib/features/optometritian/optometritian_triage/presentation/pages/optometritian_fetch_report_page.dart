import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/optometrician_triage_response.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../main.dart';
import '../providers/optometritian_report_provider.dart';
import '../widgets/opto_eye_scan_tab_view.dart';
import '../widgets/optometritian_report_questionnaire_card.dart';
import '../widgets/optometritian_tumbling_report_card.dart';

class OptometritianFetchReportPage extends ConsumerWidget {
  const OptometritianFetchReportPage({
    required this.report,
    super.key,
  });
  final OptometristTriageResponse report;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.d("report is ${report.observations}");

    var model = ref.watch(optometritianReportProvider);
    // TriageUrgency urgency = model.calculateTriageUrgency();
    final loc = context.loc!;
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).popUntil((route) => route.isFirst);
        return false;
      },
      child: Scaffold(
        key: model.scaffoldKey,
        appBar: CustomAppbar(
          leadingIcon: IconButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColor.black.withOpacity(0.7),
            ),
          ),
          centerTitle: false,
          title: Text(
            loc.optoAssessmentReport,
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
                  AppSize.ks,
                ),
              ),
              child: Stack(
                children: [
                  SvgPicture.asset(
                    "assets/images/optometritian_report_top_bg.svg",
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppSize.ks),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${loc.optoPID}: ${report.patientId}",
                              style: applyFiraSansFont(
                                  fontSize: 16,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: AppSize.ks,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                report.patientEducation!,
                                softWrap: true,
                                style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            const SizedBox(
                              width: AppSize.km,
                            ),
                            Expanded(
                              child: Text(
                                report.patientProfession!,
                                softWrap: true,
                                style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w400),
                              ),
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
              height: AppSize.kl,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loc.category,
                    style: applyRobotoFont(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.ks,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                    width: AppSize.width(context) * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: model.getColorOnUrgency(report.overallUrgency!),
                      border: Border.all(
                        width: 1.5,
                        color: model.getColorOnUrgency(report.overallUrgency!),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        model.getUrgencyText(report.overallUrgency!),
                        style: applyRobotoFont(
                          fontSize: 16,
                          color: AppColor.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSize.ks),
            OptometritianReportQuestionnaireCard(report: report),
            OptometritianTumblingReportCard(
              report: report,
            ),
            OptoEyeScanTabView(report: report),
            const SizedBox(),
          ]),
        )),
      ),
    );
  }
}
