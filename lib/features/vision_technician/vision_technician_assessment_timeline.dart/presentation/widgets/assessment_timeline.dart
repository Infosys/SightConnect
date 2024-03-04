import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_response_dto.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/providers/assessment_timeline_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/assessment_timeline_view.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import '../../domain/repositories/assessment_timeline_repository_impl.dart';

var vtAssessmentTimelineProvider =
    FutureProvider.autoDispose.family((ref, int encounterId) async {
  return await ref
      .watch(assessmentTimeLineRepository)
      .getAssessmentTimeline(encounterId);
});

class AssessmentTimeline extends ConsumerWidget {
  const AssessmentTimeline({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    Encounter? encounter =
        ref.watch(assessmentTimelineProvider).currentEncounter;
    int? encounterId = encounter?.id;
    String? encounterDate =
        encounter?.period?.start?.formatDateTimeMonthName.toString();
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
            logger.d("timeline data $data");

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppSize.kmheight),
                Container(
                  padding: const EdgeInsets.all(AppSize.kmpadding),
                  decoration: const BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(AppSize.kmradius - 5),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              horizontal: 12,
                              vertical: 7,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColor.grey,
                              ),
                              color: const Color(0xffFBD5D5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: AutoSizeText(
                              data.first.title
                                      ?.replaceAll("_", " ")
                                      .toLowerCase()
                                      .capitalizeFirstOfEach() ??
                                  "",
                              maxFontSize: 18,
                              minFontSize: 12,
                              style: applyRobotoFont(
                                color: AppColor.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
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
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: AppSize.klheight),
                      const Divider(thickness: 1, color: AppColor.grey),
                      const SizedBox(height: AppSize.klheight),
                      AssessmentTimelineView(data),
                    ],
                  ),
                ),
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
