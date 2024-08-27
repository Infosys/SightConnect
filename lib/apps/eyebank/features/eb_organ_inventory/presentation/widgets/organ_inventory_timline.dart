import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/provider/eb_case_time_line_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/widget/case_time_line_widget.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/presentation/providers/organ_timeline_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrganInventoryTimline extends ConsumerWidget {
  final String? encounterID;
  final String? timlineVersion;

  const OrganInventoryTimline({
    super.key,
    required this.encounterID,
    this.timlineVersion,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(ebCaseTimeLineProvider);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tissue Timeline'),
        ),
        body: ref
            .watch(ebOrganTimelineProvider(
              EbOrganTimlineParams(
                  encounterID: encounterID, timelineVersion: '0.0.1'),
            ))
            .when(
              data: (data) {
                final List<EBTimelineEntity> caseTimeLine = data;
                return CaseTimeLineWidget(
                  caseTimeLine: caseTimeLine,
                  onCaseSelected: (EBTimelineEntity event) =>
                      _handleCaseSelected(context, event),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: (error, stackTrace) => Center(
                child: Text('Error: $error'),
              ),
            ),
      ),
    );
  }

  _handleCaseSelected(BuildContext context, EBTimelineEntity event) {
    // if (event.serviceRequestId == null) {
    //   return;
    // }
    // final navigator = Navigator.of(context);
    // navigator.push(
    //   MaterialPageRoute(
    //     builder: (context) => EBFormManagePage(
    //       title: event.title ?? "",
    //       stageName: event.stage?.value,
    //       stageVersion: event.stageVersion,
    //       serviceRequestId: event.serviceRequestId,
    //       encounterId: encounterID,
    //       timelineName: event.timelineName,
    //       timelineVersion: event.timelineVersion,
    //       status: event.status,
    //     ),
    //   ),
    // );
  }
}
