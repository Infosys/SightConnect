import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_response_dto.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/status.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/domain/repositories/assessment_timeline_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/providers/assessment_timeline_provider.dart';
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
  const ListOfEncountersChip({super.key, required this.patientId});
  final int? patientId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Encounter? encounter =
        ref.watch(assessmentTimelineProvider).currentEncounter;
    int? encounterId = encounter?.id;

    if (patientId == null) {
      return const SizedBox();
    }

    return ref.watch(vtListOfEncountersChipProvider(patientId!)).when(
          data: (data) {
            data = data.reversed.toList();

            return SizedBox(
              height: AppSize.height(context) * 0.05,
              child: ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final isDisabled = data[index].status == Status.COMPLETED;
                  return InkWell(
                    onTap: () {
                      ref
                          .read(assessmentTimelineProvider.notifier)
                          .setEncounter(data[index]);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: AppSize.ks,
                      ),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: isDisabled
                            ? AppColor.lightGrey
                            : (encounterId == data[index].id
                                ? AppColor.lightBlue
                                : AppColor.white),
                        borderRadius: BorderRadius.circular(AppSize.ks),
                        border: Border.all(
                          color: isDisabled
                              ? AppColor.lightGrey
                              : (encounterId == data[index].id
                                  ? AppColor.lightBlue
                                  : AppColor.white),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${data[index].id ?? ""} - ${data[index].period?.start?.formatDateTimeMonthName}",
                            softWrap: true,
                            style: applyRobotoFont(
                              fontSize: 14,
                              color: isDisabled
                                  ? AppColor.grey
                                  : (encounterId == data[index].id
                                      ? AppColor.primary
                                      : AppColor.black),
                            ),
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
            logger.e("encounters error $error");
            return Center(
              child: Text(
                "Failed to load encounters",
                style: applyRobotoFont(),
              ),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
  }
}
