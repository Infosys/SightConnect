import 'package:eye_care_for_all/apps/sightconnect/helpers/models/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'encounter_brief_model.freezed.dart';
part 'encounter_brief_model.g.dart';

@freezed
class EncounterBriefModel with _$EncounterBriefModel {
  const factory EncounterBriefModel({
    List<ContentBrief>? content,
    int? totalElements,
    int? totalPages,
    int? size,
    int? number,
    int? numberOfElements,
    bool? empty,
    bool? first,
    bool? last,
  }) = _EncounterBriefModel;

  factory EncounterBriefModel.fromJson(Map<String, dynamic> json) =>
      _$EncounterBriefModelFromJson(json);
}

@freezed
class ContentBrief with _$ContentBrief {
  const factory ContentBrief({
    String? encounterId,
    String? timelineName,
    String? timelineVersion,
    List<String>? activeStages,
    DonorBrief? donorBrief,
    @TimestampConverter() DateTime? intimateDate,
    int? performerId,
    @TimestampConverter() DateTime? deathDate,
    BodyLocation? bodyLocation,
    List<String>? organExtracted,
    Map<String, dynamic>? metaData,
  }) = _ContentBrief;

  factory ContentBrief.fromJson(Map<String, dynamic> json) =>
      _$ContentBriefFromJson(json);
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
    String? direction,
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
