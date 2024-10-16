/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_analytics_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/widgets/analytics_cards.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
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

    return Container(
      width: AppSize.width(context) * 0.95,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: AnalyticsCard(
              title: loc.vtTotalCases,
              firstValue: model.ivrCalls.toString().split(".")[0],
              secondValue: '${model.totalVisit - model.ivrCalls}'.split(".")[0],
              firstAnalyticsDescription: loc.vtIvrCalls,
              secondAnalyticsDescription: loc.vtClinicVisits,
              firstValueColor: AppColor.black,
              secondValueColor: AppColor.black,
              isLoading: model.isLoading,
            ),
          ),
          const SizedBox(width: AppSize.ks),
          Expanded(
            child: AnalyticsTriageStats(
              isLoading: model.isLoading,
              title: loc.vtCasesClosed,
              earlyValue: model.closedCases['EARLY'].toString().split(".")[0],
              urgentValue: model.closedCases['URGENT'].toString().split(".")[0],
              routineValue:
                  model.closedCases['ROUTINE'].toString().split(".")[0],
            ),
          ),
          const SizedBox(width: AppSize.ks),
          Expanded(
            child: AnalyticsTriageStats(
              title: '% Completed',
              isLoading: model.isLoading,
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
    );
  }
}
