import '../enums/eb_timline_enums.dart';

class EBTimelineEntity {
  final String? timelineName;
  final String? timelineVersion;
  final int? serviceRequestId;
  final EBAssessmentName? assessmentName;
  final String? stageName;
  final String? assessmentVersion;
  final EBCaseStatus? status;
  final DateTime? initiateDate;
  final DateTime? recentUpdatedTime;
  final List<EBTimelineEntity>? subStages;

  const EBTimelineEntity({
    this.timelineName,
    this.timelineVersion,
    this.serviceRequestId,
    this.assessmentName,
    this.stageName,
    this.assessmentVersion,
    this.status,
    this.initiateDate,
    this.recentUpdatedTime,
    this.subStages,
  });

  //to string
  @override
  String toString() {
    return 'EbTimelineEntity(timelineName: $timelineName, timelineVersion: $timelineVersion, serviceRequestId: $serviceRequestId, assessmentName: $assessmentName, stageName: $stageName, assessmentVersion: $assessmentVersion, status: $status, initiateDate: $initiateDate, recentUpdatedTime: $recentUpdatedTime, subStages: $subStages)';
  }


}
