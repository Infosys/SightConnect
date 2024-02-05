import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/providers/patient_assesssment_and_test_provider_new.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessment_report_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PatientClinicalTestReports extends ConsumerStatefulWidget {
  const PatientClinicalTestReports({
    required this.encounterId,
    super.key,
  });

  final int encounterId;

  @override
  ConsumerState<PatientClinicalTestReports> createState() =>
      _PatientClinicalTestReportsState();
}

class _PatientClinicalTestReportsState
    extends ConsumerState<PatientClinicalTestReports>
    with AutomaticKeepAliveClientMixin {
  List<TriageReportBriefEntity> reports = [];
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      try {
        final result = await ref
            .read(patientAssessmentAndTestProvider)
            .getTriageReportByEncounterId(widget.encounterId, false);

        reports.addAll(result);
      } catch (e) {
        Fluttertoast.showToast(msg: "Clinical Report not found");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;

    var model = ref.watch(patientAssessmentAndTestProvider);
    if (model.isClinicalReportLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    if (reports.isEmpty) {
      return Scaffold(
        body: Center(
          child: Text(
            "No Clinical Report Found",
            style: applyRobotoFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: reports.length,
        itemBuilder: (BuildContext context, int index) {
          final currentData = reports[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'RID: ${currentData.triageResultID}',
                            minFontSize: 12,
                            maxLines: 1,
                            style: applyFiraSansFont(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            currentData.triageResultStartDate
                                    ?.formatDateTimeMonthName ??
                                "",
                            style: applyRobotoFont(
                              fontSize: 12,
                              color: AppColor.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColor.green,
                          ),
                          child: Text(
                            "Clinical Report",
                            style: applyRobotoFont(
                              fontSize: 14,
                              color: AppColor.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  currentData.triageResultDescription ?? "",
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                Consumer(
                  builder: (context, ref, child) {
                    final model = ref.watch(patientAssessmentAndTestProvider);
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        (model.isReportLoading &&
                                model.currentTriageReportId ==
                                    currentData.triageResultID)
                            ? const SizedBox(
                                height: 24,
                                width: 24,
                                child: CircularProgressIndicator(),
                              )
                            : Flexible(
                                child: TextButton(
                                  onPressed: () async {
                                    try {
                                      model.currentTriageReportId =
                                          currentData.triageResultID;
                                      final navigator = Navigator.of(context);
                                      final reports = await ref
                                          .read(
                                              patientAssessmentAndTestProvider)
                                          .getTriageDetailedReport(
                                            currentData.triageResultID,
                                          );
                                      navigator.push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PatientAssessmentReportPage(
                                            assessmentDetailsReport: reports,
                                          ),
                                        ),
                                      );
                                    } catch (e) {
                                      Fluttertoast.showToast(
                                          msg: "Clinical Report not found");
                                    }
                                  },
                                  child: Text(
                                    loc.viewReportButton,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: applyRobotoFont(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.primary,
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

String getSeverityText(Severity? severity, BuildContext context) {
  final loc = context.loc!;
  switch (severity) {
    case Severity.ABNORMAL:
      return loc.assessmentCardUrgentConsult;
    case Severity.LOW:
      return loc.assessmentCardRoutineCheckUp;
    case Severity.HIGH:
      return loc.assessmentCardEarlyCheckUp;
    default:
      return "";
  }
}

class UpdateTriageAlertBoxListOptoion extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color subtitlecolor;
  final String chipText;
  final Color chipColor;
  final Function() onPressed;

  const UpdateTriageAlertBoxListOptoion({
    super.key,
    required this.title,
    required this.subtitle,
    required this.subtitlecolor,
    required this.chipText,
    required this.chipColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      onTap: onPressed,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              title,
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.black,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            width: AppSize.kmwidth,
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: chipColor,
            ),
            child: Text(
              chipText,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: AppColor.white,
              ),
            ),
          )
        ],
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: subtitlecolor,
        ),
      ),
    );
  }
}
