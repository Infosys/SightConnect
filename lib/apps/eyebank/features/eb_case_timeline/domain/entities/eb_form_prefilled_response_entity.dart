class EBFormPrefilledResponseEntity {
  final String? encounterId;
  final String? tenantId;
  final String? serviceRequestId;
  final String? stageName;
  final String? stageVersion;
  final dynamic formData;
  final dynamic displayFormData;

  final dynamic metaData;
  EBFormPrefilledResponseEntity({
    this.encounterId,
    this.tenantId,
    this.serviceRequestId,
    this.stageName,
    this.stageVersion,
    this.formData,
    this.displayFormData,
    this.metaData,
  });
  // toString
  @override
  String toString() {
    return 'EBFormPrefilledResponseEntity(encounterId: $encounterId, tenantId: $tenantId, serviceRequestId: $serviceRequestId, stageName: $stageName, stageVersion: $stageVersion, formData: $formData, displayFormData: $displayFormData, metaData: $metaData)';
  }
}
