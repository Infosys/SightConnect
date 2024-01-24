import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_response_dto.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/domain/repositories/assessment_timeline_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/providers/assessment_timeline_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_search_page/presentation/providers/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

var vtListOfEncountersChipProvider =
    FutureProvider.autoDispose.family((ref, int patientId) async {
  return await ref.watch(assessmentTimeLineRepository).getEncounters(patientId);
});

class ListOfEncountersChip extends HookConsumerWidget {
  const ListOfEncountersChip({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int? patientId =
        ref.watch(visionTechnicianSearchProvider).patientDetails?.id;

    Encounter? encounter =
        ref.watch(assessmentTimelineProvider).currentEncounter;
    int? encounterId = encounter?.id;

    if (patientId == null) {
      return Container();
    }

    return ref.watch(vtListOfEncountersChipProvider(patientId)).when(
          data: (data) {
            return SizedBox(
              height: AppSize.klheight * 1.5,
              child: ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      ref
                          .read(assessmentTimelineProvider.notifier)
                          .setEncounter(data[index]);

                      // logger.d("Tapped on ${data[index]}");
                      // ref
                      //     .read(visionTechnicianSearchProvider.notifier)
                      //     .setEncounterId(data[index].id!);
                    },
                    child: Container(
                      // width: 100,
                      margin: const EdgeInsets.symmetric(
                          horizontal: AppSize.kspadding),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.kmpadding,
                      ),
                      // height: AppSize.klheight,
                      decoration: BoxDecoration(
                        color: encounterId == data[index].id
                            ? AppColor.lightBlue
                            : AppColor.white,
                        borderRadius: BorderRadius.circular(AppSize.ksradius),
                        border: Border.all(
                          color: encounterId == data[index].id
                              ? AppColor.primary
                              : AppColor.grey,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${data[index].id.toString()} - ${data[index].period!.start!.formatDateTimeMonthName}",
                            softWrap: true,
                            style: applyRobotoFont(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
          error: (error, stack) {
            logger.d("encounters error $error");
            return Center(
              child: Text(
                "Error",
                style: applyRobotoFont(),
              ),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }
}
