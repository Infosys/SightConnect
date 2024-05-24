import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:flutter/material.dart';
import '../../../../patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';

class AssessmentReportDetails extends StatefulWidget {
  const AssessmentReportDetails({
    super.key,
    this.questionResponseBreifModel,
  });

  final List<QuestionResponseBriefEntity>? questionResponseBreifModel;

  @override
  State<AssessmentReportDetails> createState() =>
      _AssessmentReportDetailsState();
}

class _AssessmentReportDetailsState extends State<AssessmentReportDetails> {
  bool showAll = false;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;

    final itemsToShow = showAll
        ? widget.questionResponseBreifModel
        : widget.questionResponseBreifModel?.take(5).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          loc.vtAssessment,
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: AppSize.km),
        () {
          if (widget.questionResponseBreifModel?.isEmpty ?? true) {
            return Center(
              child: Text(
                loc.vtNoDataAvailable,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppCard(
                  padding: AppSize.km,
                  child: ListView.builder(
                    itemCount: itemsToShow!.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var responseModel = itemsToShow[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${index + 1}. ${responseModel.question}",
                            style: applyRobotoFont(
                              fontSize: 14,
                              color: const Color(0xff333333),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "\u2022  ",
                                  style: applyRobotoFont(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black.withOpacity(0.7),
                                      height: 1.5),
                                ),
                                Text(
                                  responseModel.response,
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(
                              thickness: 1.5,
                            ),
                          ),
                          const SizedBox(height: 10)
                        ],
                      );
                    },
                  ),
                ),
                Visibility(
                  visible: !Responsive.isMobile(context),
                  child: const SizedBox(height: 10),
                ),
                if (!showAll && widget.questionResponseBreifModel!.length > 10)
                  TextButton(
                    child: const Text('Show More'),
                    onPressed: () {
                      setState(() {
                        showAll = true;
                      });
                    },
                  ),
              ],
            );
          }
        }()
      ],
    );
  }
}
