import 'package:freezed_annotation/freezed_annotation.dart';

part 'organ_tissue_search_deligate_model.freezed.dart';
part 'organ_tissue_search_deligate_model.g.dart';

@freezed
class OrganTissueSearchDeligateModel with _$OrganTissueSearchDeligateModel {
  const factory OrganTissueSearchDeligateModel({
    @JsonKey(name: "content") List<Content>? content,
    @JsonKey(name: "totalElements") int? totalElements,
    @JsonKey(name: "totalPages") int? totalPages,
    @JsonKey(name: "size") int? size,
    @JsonKey(name: "number") int? number,
    @JsonKey(name: "numberOfElements") int? numberOfElements,
    @JsonKey(name: "empty") bool? empty,
    @JsonKey(name: "first") bool? first,
    @JsonKey(name: "last") bool? last,
  }) = _OrganTissueSearchDeligateModel;

  factory OrganTissueSearchDeligateModel.fromJson(Map<String, dynamic> json) =>
      _$OrganTissueSearchDeligateModelFromJson(json);
}

@freezed
class Content with _$Content {
  const factory Content({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "identifier") String? identifier,
    @JsonKey(name: "productCategory") String? productCategory,
    @JsonKey(name: "productCode") String? productCode,
    @JsonKey(name: "productStatus") dynamic productStatus,
    @JsonKey(name: "expiryDate") dynamic expiryDate,
    @JsonKey(name: "lotNumber") dynamic lotNumber,
    @JsonKey(name: "storageMedium") dynamic storageMedium,
    @JsonKey(name: "properties") dynamic properties,
    @JsonKey(name: "storageTemp") dynamic storageTemp,
    @JsonKey(name: "document") dynamic document,
    @JsonKey(name: "recoveryInformation")
    RecoveryInformation? recoveryInformation,
    @JsonKey(name: "encounterId") int? encounterId,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

@freezed
class RecoveryInformation with _$RecoveryInformation {
  const factory RecoveryInformation({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "extractionMethod") String? extractionMethod,
    @JsonKey(name: "extractionDateTime") DateTime? extractionDateTime,
    @JsonKey(name: "lotNumber") String? lotNumber,
    @JsonKey(name: "storageMedium") String? storageMedium,
    @JsonKey(name: "expirationDate") DateTime? expirationDate,
    @JsonKey(name: "intent") String? intent,
    @JsonKey(name: "performedBy") String? performedBy,
    @JsonKey(name: "performerRole") dynamic performerRole,
    @JsonKey(name: "assistedBy") String? assistedBy,
    @JsonKey(name: "assistedRole") dynamic assistedRole,
    @JsonKey(name: "properties") Properties? properties,
    @JsonKey(name: "storageTemp") dynamic storageTemp,
    @JsonKey(name: "documents") dynamic documents,
    @JsonKey(name: "productCategory") String? productCategory,
    @JsonKey(name: "productCode") String? productCode,
    @JsonKey(name: "productIdentifier") String? productIdentifier,
  }) = _RecoveryInformation;

  factory RecoveryInformation.fromJson(Map<String, dynamic> json) =>
      _$RecoveryInformationFromJson(json);
}

@freezed
class Properties with _$Properties {
  const factory Properties({
    @JsonKey(name: "comments") String? comments,
    @JsonKey(name: "scleraRecovered") int? scleraRecovered,
  }) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}
