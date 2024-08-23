import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';

class EBTimelineEntity {
  final String? timelineName;
  final String? timelineVersion;
  final String? serviceRequestId;
  final EBStageName? title;
  final EBStageName? stage;
  final String? assessmentVersion;
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
    this.assessmentVersion,
    this.status,
    this.initiateDate,
    this.recentUpdatedTime,
    this.subStages,
  });

  //to string
  @override
  String toString() {
    return 'EbTimelineEntity(timelineName: $timelineName, timelineVersion: $timelineVersion, serviceRequestId: $serviceRequestId, stage: $stage, title: $title, assessmentVersion: $assessmentVersion, status: $status, initiateDate: $initiateDate, recentUpdatedTime: $recentUpdatedTime, subStages: $subStages)';
  }
}
