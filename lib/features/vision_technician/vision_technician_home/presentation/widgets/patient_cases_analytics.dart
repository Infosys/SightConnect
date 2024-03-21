import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_analytics_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/pages/pulsar_effect_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientCasesAnalytics extends ConsumerWidget {
  const PatientCasesAnalytics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(visionTechnicianAnalyticsProvider);
    final loc = context.loc!;

    if (model.isLoading || model.closedCases.isEmpty) {
      model.closedCases = {
        'EARLY': 0,
        'URGENT': 0,
        'ROUTINE': 0,
      };

      model.triageCompleted = {
        'EARLY': 0,
        'URGENT': 0,
        'ROUTINE': 0,
      };
    }

    return Pulsar(
      disable: model.isLoading ? false : true,
      animationCurve: Curves.easeOut,
      highOpacity: 0.8,
      lowOpacity: 0.5,
      child: Container(
        width: AppSize.width(context) * 0.95,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: AnalyticsCard(
                title: loc.vtTotalCases,
                firstValue: model.ivrCalls.toString().split(".")[0],
                secondValue:
                    '${model.totalVisit - model.ivrCalls}'.split(".")[0],
                firstAnalyticsDescription: loc.vtIvrCalls,
                secondAnalyticsDescription: loc.vtClinicVisits,
                firstValueColor: AppColor.black,
                secondValueColor: AppColor.black,
              ),
            ),
            const SizedBox(width: AppSize.ks),
            Expanded(
              child: AnalyticsTriageStats(
                title: loc.vtCasesClosed,
                earlyValue: model.closedCases['EARLY'].toString().split(".")[0],
                urgentValue:
                    model.closedCases['URGENT'].toString().split(".")[0],
                routineValue:
                    model.closedCases['ROUTINE'].toString().split(".")[0],
              ),
            ),
            const SizedBox(width: AppSize.ks),
            Expanded(
              child: AnalyticsTriageStats(
                title: '% Completed',
                earlyValue: model.triageCompleted.isEmpty
                    ? "0%"
                    : "${model.triageCompleted['EARLY'].toString().split(".")[0]}%",
                urgentValue: model.triageCompleted.isEmpty
                    ? "0%"
                    : "${model.triageCompleted['URGENT'].toString().split(".")[0]}%",
                routineValue: model.triageCompleted.isEmpty
                    ? "0%"
                    : "${model.triageCompleted['ROUTINE'].toString().split(".")[0]}%",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnalyticsCardData extends StatelessWidget {
  const AnalyticsCardData({
    super.key,
    required this.value,
    required this.description,
    required this.color,
  });

  final String value;
  final String description;
  final Color color;
  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          value,
          maxLines: 1,
          style: applyFiraSansFont(
            fontWeight: FontWeight.w500,
            fontSize: isMobile ? 16 : 32,
            color: color,
          ),
        ),
        AutoSizeText(
          description,
          maxLines: 1,
          style: applyRobotoFont(
            fontWeight: FontWeight.w400,
            fontSize: isMobile ? 10 : 12,
            color: AppColor.grey,
          ),
        ),
      ],
    );
    //add graph here
  }
}

class AnalyticsCard extends StatelessWidget {
  const AnalyticsCard({
    super.key,
    required this.title,
    required this.firstValue,
    required this.secondValue,
    required this.firstAnalyticsDescription,
    required this.secondAnalyticsDescription,
    this.pieChart = false,
    this.firstValueColor = AppColor.red,
    this.secondValueColor = AppColor.green,
  });
  final String title;
  final String firstValue;
  final String secondValue;
  final String firstAnalyticsDescription;
  final String secondAnalyticsDescription;
  final bool pieChart;
  final Color firstValueColor;
  final Color secondValueColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.km),
        boxShadow: applycustomShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            title,
            maxLines: 1,
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ks),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: AppSize.ks,
            spacing: AppSize.ks,
            children: [
              AnalyticsCardData(
                value: firstValue,
                description: firstAnalyticsDescription,
                color: firstValueColor,
              ),
              AnalyticsCardData(
                value: secondValue,
                description: secondAnalyticsDescription,
                color: secondValueColor,
              ),
            ],
          ),
          if (pieChart) const SizedBox()
        ],
      ),
    );
  }
}

class AnalyticsTriageStats extends StatelessWidget {
  const AnalyticsTriageStats({
    super.key,
    required this.title,
    required this.earlyValue,
    required this.urgentValue,
    required this.routineValue,
  });
  final String title;
  final String earlyValue;
  final String urgentValue;
  final String routineValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.km),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSize.km),
        boxShadow: applycustomShadow(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: AppSize.ks),
          Flexible(
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: AppSize.ks,
              spacing: AppSize.ks,
              children: [
                AnalyticsCardData(
                  value: routineValue,
                  description: "Routine",
                  color: AppColor.green,
                ),
                AnalyticsCardData(
                  value: earlyValue,
                  description: "Early",
                  color: AppColor.orange,
                ),
                AnalyticsCardData(
                  value: urgentValue,
                  description: "Urgent",
                  color: AppColor.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
