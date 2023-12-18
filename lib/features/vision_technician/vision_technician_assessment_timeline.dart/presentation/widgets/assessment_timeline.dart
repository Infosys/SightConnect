import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/assessment_timeline_view.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtAssessmentTimelineProvider =
    FutureProvider.autoDispose.family((ref, encounterId) {
  // inject repo here
  //call the method from repo
  return null;
});

class AssessmentTimeline extends ConsumerWidget {
  final int? encounterId;
  final String? enconterDate;

  const AssessmentTimeline({
    super.key,
    this.encounterId,
    this.enconterDate,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (encounterId != null) {
      return const Center(
        child: Text("Timeline is not available for this patient"),
      );
    }
    return ref.watch(vtAssessmentTimelineProvider(encounterId)).when(
          data: (data) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Assessment Timeline",
                  style: applyFiraSansFont(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
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
                          SizedBox(
                            width: AppSize.width(context) / 5,
                            child: Text(
                              "Timeline: EA ${encounterId ?? ""}",
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
                            child: Text(
                              "2nd Reminder Sent",
                              style: applyRobotoFont(
                                color: AppColor.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: AppSize.width(context) / 5,
                        child: Text(
                          "Start Date: ${enconterDate ?? ""}",
                          style: applyRobotoFont(
                            color: AppColor.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      const SizedBox(height: AppSize.klheight),
                      const Divider(thickness: 1, color: AppColor.grey),
                      const SizedBox(height: AppSize.klheight),
                      AssessmentTimelineView(),
                    ],
                  ),
                ),
              ],
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stack) => const Center(
            child: Text("Error"),
          ),
        );
  }
}
