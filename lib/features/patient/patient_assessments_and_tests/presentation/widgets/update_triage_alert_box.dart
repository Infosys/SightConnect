import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_eye_scan/presentation/pages/pages/update_triage_eye_scan_page.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_quessionaire/presentation/pages/update_questionnaire_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acuity_tumbling_page.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/provider/patient_assessments_and_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/provider/triage_update_report_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateTriageAlertBox extends ConsumerWidget {
  final int dignosticReportID;
  const UpdateTriageAlertBox({
    super.key,
    required this.dignosticReportID,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var navigator = Navigator.of(context);
    return ref.watch(getAssementDetailsReport(dignosticReportID)).when(
      data: (data) {
        
        var model = ref.read(traigeUpdateReportProvider(dignosticReportID));
        List<UpdateTriageReportAlertBoxEntity> alertBoxEntityList =
            model.getUpdateTriageReportAlertBoxEntityList(data);

        return BlurDialogBox(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Select Steps to Redo'),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.close),
              )
            ],
          ),
          content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: alertBoxEntityList
                  .map(
                    (e) => UpdateTriageAlertBoxListOptoion(
                      title: e.title,
                      subtitle: e.subtitle,
                      subtitlecolor: e.subtitlecolor,
                      chipText: e.chipText,
                      chipColor: e.chipColor,
                      onPressed: () {
                        switch (e.testType) {
                          case TestType.QUESTIONNAIRE:
                            navigator.push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    UpdateTriageQuestionnairePage(
                                  questionnaireSections: model.triageAssessment
                                      .questionnaire!.questionnaireItem!,
                                  reportId: dignosticReportID,
                                ),
                              ),
                            );
                            break;
                          case TestType.OBSERVATION:
                            ref.read(globalProvider).setVAMode =
                                VisionAcuityMode.UPDATE;
                            navigator.push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const VisualAcuityTumblingPage(),
                              ),
                            );
                            break;
                          case TestType.IMAGE:
                            navigator.push(
                              MaterialPageRoute(
                                builder: (context) => const UpdateTriageEyeScanPage(

                                ),
                              ),
                            );
                            break;
                        }
                      },
                    ),
                  )
                  .toList()),
          actions: const [],
        );
      },
      error: (error, stackTrace) {
        logger.d({
          "getTriageDetailedEyeReport": error,
          "stackTrace": stackTrace,
        });
        return Text("${error.toString()}}");
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
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
