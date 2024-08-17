import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';

class EBFormPrefilledResponseEntity {
  final int? encounterId;
  final String? tenantId;
  final EBStageName? stageName;
  final String? assessmentVersion;
  final List<EBFormEntity>? eBforms;
  EBFormPrefilledResponseEntity({
    this.encounterId,
    this.tenantId,
    this.stageName,
    this.assessmentVersion,
    this.eBforms,
  });
  // toString
  @override
  String toString() {
    return 'EBFormPrefilledResponseEntity(encounterId: $encounterId, tenantId: $tenantId, stageName: $stageName, assessmentVersion: $assessmentVersion, eBforms: $eBforms)';
  }
}

class EBFormEntity {
  final int? identifier;
  final String? identifierType;
  final Map<String, dynamic>? eBformData;
  EBFormEntity({
    this.identifier,
    this.identifierType,
    this.eBformData,
  });
  // toString
  @override
  String toString() {
    return 'EBFormEntity(identifier: $identifier, identifierType: $identifierType, eBformData: $eBformData)';
  }
}
