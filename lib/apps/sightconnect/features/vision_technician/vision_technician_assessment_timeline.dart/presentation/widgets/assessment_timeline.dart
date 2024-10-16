/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/models/triage_response_dto.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_assessment_timeline.dart/domain/models/assessment_timeline_view_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/providers/assessment_timeline_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/assessment_timeline_view.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/pages/vision_technician_close_assessment_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/repositories/assessment_timeline_repository_impl.dart';

var vtAssessmentTimelineProvider = FutureProvider.autoDispose.family(
  (ref, int encounterId) async {
    return await ref
        .watch(assessmentTimeLineRepository)
        .getAssessmentTimeline(encounterId);
  },
);

class AssessmentTimeline extends ConsumerWidget {
  final VTPatientDto? patientDetail;

  const AssessmentTimeline({
    super.key,
    this.patientDetail,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    Encounter? encounter =
        ref.watch(assessmentTimelineProvider).currentEncounter;
    int? encounterId = encounter?.id;
    String? encounterDate =
        encounter?.period?.start?.formatDateTimeMonthNameWithTime;
    if (encounterId == null) {
      return Center(
        child: Text(
          loc.vtPleaseSelectEncounter,
          style: applyRobotoFont(fontSize: 18),
        ),
      );
    }

    return ref.watch(vtAssessmentTimelineProvider(encounterId)).when(
          data: (data) {
            final encounterStatus = data.first.title;

            final isCaseClosed = (encounterStatus!.contains("Closure"));
            bool isVGSource = false;

            for (var element in data) {
              if (element.source == TimelineSource.VG_APP &&
                  element.status?.toLowerCase() == "final") {
                isVGSource = true;
                break;
              } else {
                isVGSource = false;
              }
            }
            logger.d("isVGSource $isVGSource");

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSize.km),
                Container(
                  padding: const EdgeInsets.all(AppSize.km),
                  decoration: const BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppSize.km - 5),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: AutoSizeText(
                              "${loc.vtTimelineEA} $encounterId",
                              maxFontSize: 18,
                              minFontSize: 12,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: applyFiraSansFont(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: isCaseClosed
                                  ? AppColor.altGreen
                                  : AppColor.mediumOrange,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: AutoSizeText(
                              isCaseClosed ? "Case Closed" : "Open",
                              maxFontSize: 18,
                              minFontSize: 12,
                              style: applyRobotoFont(
                                color: AppColor.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      AutoSizeText(
                        "${loc.vtStartDate}: ${encounterDate ?? ""}",
                        maxFontSize: 16,
                        minFontSize: 14,
                        style: applyRobotoFont(
                          color: AppColor.grey,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: AppSize.ks),
                      const Divider(thickness: 1, color: AppColor.lightGrey),
                      const SizedBox(height: AppSize.ks),
                      AssessmentTimelineView(
                        timeLineList: data,
                        patientDetail: patientDetail!,
                      ),
                    ],
                  ),
                ),
                Responsive.isMobile(context)
                    ? const SizedBox(height: AppSize.kl)
                    : const SizedBox(height: AppSize.kl * 2),
                Visibility(
                  visible: !isCaseClosed,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: AppSize.width(context) * 0.8,
                        child: ElevatedButton(
                          onPressed: isVGSource
                              ? null
                              : () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return VisionTechnicianCloseAssessmentPage(
                                          patientId:
                                              patientDetail?.id.toString() ??
                                                  "",
                                          patientName:
                                              patientDetail?.name.toString() ??
                                                  "",
                                          encounterId: encounterId,
                                        );
                                      },
                                    ),
                                  );
                                },
                          child: isVGSource
                              ? const Text("Not Authorized")
                              : Text(loc.vtClose),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSize.kl),
              ],
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          error: (error, stack) {
            logger.d("timeline error $error");
            return Center(
              child: Text(
                loc.vtError,
                style: applyRobotoFont(),
              ),
            );
          },
        );
  }
}
