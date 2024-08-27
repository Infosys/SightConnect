import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/entities/eb_timeline_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebOrganTimelineProvider = FutureProvider.family
    .autoDispose<List<EBTimelineEntity>, EbOrganTimlineParams>(
        (ref, data) async {
  return dummyData;
});

class EbOrganTimlineParams {
  final String? encounterID;
  final String timelineName;
  final String? timelineVersion;

  EbOrganTimlineParams({
    this.encounterID,
    this.timelineName = "CORNEA_DONATION",
    this.timelineVersion,
  });
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EbOrganTimlineParams &&
        other.encounterID == encounterID &&
        other.timelineVersion == timelineVersion;
  }

  @override
  int get hashCode => encounterID.hashCode ^ timelineVersion.hashCode;
}

final List<EBTimelineEntity> dummyData = [
  EBTimelineEntity(
    timelineName: "CORNEA_DONATION",
    timelineVersion: "1.0",
    serviceRequestId: "SR001",
    title: "REQUEST FOR CORNEA",
    stage: EBStageName.UNDEFINED,
    stageVersion: "1.0",
    status: EBStatus.ACCEPTED,
    initiateDate: DateTime.now().subtract(const Duration(days: 10)),
    recentUpdatedTime: DateTime.now().subtract(const Duration(days: 5)),
  ),
  EBTimelineEntity(
    timelineName: "CORNEA_DONATION",
    timelineVersion: "1.0",
    serviceRequestId: "SR002",
    title: "Obtain Doctor Confirmation",
    stage: EBStageName.UNDEFINED,
    stageVersion: "1.0",
    status: EBStatus.UNKNOWN,
    initiateDate: DateTime.now().subtract(const Duration(days: 9)),
    recentUpdatedTime: DateTime.now().subtract(const Duration(days: 4)),
  ),
  EBTimelineEntity(
    timelineName: "CORNEA_DONATION",
    timelineVersion: "1.0",
    serviceRequestId: "SR003",
    title: "Assign Tissue",
    stage: EBStageName.UNDEFINED,
    stageVersion: "1.0",
    status: EBStatus.UNKNOWN,
    initiateDate: DateTime.now().subtract(const Duration(days: 8)),
    recentUpdatedTime: DateTime.now().subtract(const Duration(days: 3)),
  ),
  EBTimelineEntity(
    timelineName: "CORNEA_DONATION",
    timelineVersion: "1.0",
    serviceRequestId: "SR004",
    title: "Process Request (Pre cut)",
    stage: EBStageName.UNDEFINED,
    stageVersion: "1.0",
    status: EBStatus.UNKNOWN,
    initiateDate: DateTime.now().subtract(const Duration(days: 7)),
    recentUpdatedTime: DateTime.now().subtract(const Duration(days: 2)),
  ),
  EBTimelineEntity(
    timelineName: "CORNEA_DONATION",
    timelineVersion: "1.0",
    serviceRequestId: "SR005",
    title: "SENT to Surgeon",
    stage: EBStageName.UNDEFINED,
    stageVersion: "1.0",
    status: EBStatus.UNKNOWN,
    initiateDate: DateTime.now().subtract(const Duration(days: 6)),
    recentUpdatedTime: DateTime.now().subtract(const Duration(days: 1)),
  ),
  EBTimelineEntity(
    timelineName: "CORNEA_DONATION",
    timelineVersion: "1.0",
    serviceRequestId: "SR006",
    title: "RECIEVED BY SURGEON",
    stage: EBStageName.UNDEFINED,
    stageVersion: "1.0",
    status: EBStatus.UNKNOWN,
    initiateDate: DateTime.now().subtract(const Duration(days: 5)),
    recentUpdatedTime: DateTime.now(),
  ),
  EBTimelineEntity(
    timelineName: "CORNEA_DONATION",
    timelineVersion: "1.0",
    serviceRequestId: "SR007",
    title: "Transplant ACCEPTED",
    stage: EBStageName.UNDEFINED,
    stageVersion: "1.0",
    status: EBStatus.UNKNOWN,
    initiateDate: DateTime.now().subtract(const Duration(days: 4)),
    recentUpdatedTime: DateTime.now().add(const Duration(days: 1)),
  ),
  EBTimelineEntity(
    timelineName: "CORNEA_DONATION",
    timelineVersion: "1.0",
    serviceRequestId: "SR008",
    title: "TRANPLANT REJECTED",
    stage: EBStageName.UNDEFINED,
    stageVersion: "1.0",
    status: EBStatus.UNKNOWN,
    initiateDate: DateTime.now().subtract(const Duration(days: 3)),
    recentUpdatedTime: DateTime.now().add(const Duration(days: 2)),
  ),
  EBTimelineEntity(
    timelineName: "CORNEA_DONATION",
    timelineVersion: "1.0",
    serviceRequestId: "SR010",
    title: "Reaction Adverse reaction report",
    stage: EBStageName.UNDEFINED,
    stageVersion: "1.0",
    status: EBStatus.UNKNOWN,
    initiateDate: DateTime.now().subtract(const Duration(days: 1)),
    recentUpdatedTime: DateTime.now().add(const Duration(days: 4)),
  ),
];
