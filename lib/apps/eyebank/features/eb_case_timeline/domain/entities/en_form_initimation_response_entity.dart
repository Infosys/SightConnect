class EBFormIntimationResponseEntity {
  final String? timelineName;
  final String? timelineVersion;
  final dynamic stage;

  EBFormIntimationResponseEntity({
    this.timelineName,
    this.timelineVersion,
    this.stage,
  });

  @override
  String toString() {
    return 'EBFormIntimationResponseModelEntity(timelineName: $timelineName, timelineVersion: $timelineVersion, stage: $stage)';
  }
}
