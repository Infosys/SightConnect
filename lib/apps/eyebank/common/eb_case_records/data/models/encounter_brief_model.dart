import 'package:freezed_annotation/freezed_annotation.dart';

part 'encounter_brief_model.freezed.dart';
part 'encounter_brief_model.g.dart';

@freezed
class EncounterBriefModel with _$EncounterBriefModel {
  const factory EncounterBriefModel({
    int? encounterId,
    String? encounterStatus,
    DonorBrief? donorBrief,
    DateTime? intimateDate,
    int? performerId,
    DateTime? deathDate,
    BodyLocation? bodyLocation,
    List<String>? organExtracted,
    DateTime? lastModifiedDate,
  }) = _EncounterBriefModel;

  factory EncounterBriefModel.fromJson(Map<String, dynamic> json) =>
      _$EncounterBriefModelFromJson(json);
}

@freezed
class BodyLocation with _$BodyLocation {
  const factory BodyLocation({
    String? addressLine1,
    String? addressLine2,
    String? street,
    String? city,
    String? state,
    String? zipCode,
    String? country,
    String? landmark,
    String? village,
    String? district,
    String? latitude,
    String? longitude,
  }) = _BodyLocation;

  factory BodyLocation.fromJson(Map<String, dynamic> json) =>
      _$BodyLocationFromJson(json);
}

@freezed
class DonorBrief with _$DonorBrief {
  const factory DonorBrief({
    int? id,
    String? name,
    String? contact,
  }) = _DonorBrief;

  factory DonorBrief.fromJson(Map<String, dynamic> json) =>
      _$DonorBriefFromJson(json);
}
