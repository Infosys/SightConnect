class EBFormActionRequestEntity {
  String timelineName;
  String timelineVersion;
  Map<String, dynamic> eBformData;
  String? performerId;
  String? performerRole;
  String? verifiedById;
  String? verifiedByRole;

  EBFormActionRequestEntity({
    required this.timelineName,
    required this.timelineVersion,
    required this.eBformData,
    required this.performerId,
    required this.performerRole,
    required this.verifiedById,
    required this.verifiedByRole,
    Map<String, dynamic>? data,
  });

  @override
  String toString() {
    return 'EBFormActionRequestEntity(timelineName: $timelineName, timelineVersion: $timelineVersion, EBformData: $eBformData, performerId: $performerId, performerRole: $performerRole, verifiedById: $verifiedById, verifiedByRole: $verifiedByRole)';
  }
}
