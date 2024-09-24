import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';

class EBTimelineEntity {
  final String? timelineName;
  final String? timelineVersion;
  final String? serviceRequestId;
  final String? title;
  final String? subTitle;
  final EBStageName? stage;
  final String? stageVersion;
  final EBStatus? status;
  final DateTime? initiateDate;
  final DateTime? recentUpdatedTime;
  final List<EBTimelineEntity>? subStages;

  const EBTimelineEntity({
    this.timelineName,
    this.timelineVersion,
    this.serviceRequestId,
    this.title,
    this.stage,
    this.stageVersion,
    this.status,
    this.initiateDate,
    this.recentUpdatedTime,
    this.subStages,
    this.subTitle,
  });

  //to string
  @override
  String toString() {
    return 'EBTimelineEntity(timelineName: $timelineName, timelineVersion: $timelineVersion, serviceRequestId: $serviceRequestId, title: $title, stage: $stage, stageVersion: $stageVersion, status: $status, initiateDate: $initiateDate, recentUpdatedTime: $recentUpdatedTime, subStages: $subStages)';
  }
}
