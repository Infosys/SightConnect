import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'search_case_model.freezed.dart';
part 'search_case_model.g.dart';

@freezed
class SearchCaseModel with _$SearchCaseModel {
    const factory SearchCaseModel({
        int? caseId,
        String? screeningStatus,
        DonarBrief? donarBrief,
        DateTime? intimateDate,
        int? performerId,
        DateTime? deathDate,
        BodyLocation? bodyLocation,
        List<String>? organExtracted,
    }) = _SearchCaseModel;

    factory SearchCaseModel.fromJson(Map<String, dynamic> json) => _$SearchCaseModelFromJson(json);
}

@freezed
class BodyLocation with _$BodyLocation {
    const factory BodyLocation({
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

    factory BodyLocation.fromJson(Map<String, dynamic> json) => _$BodyLocationFromJson(json);
}

@freezed
class DonarBrief with _$DonarBrief {
    const factory DonarBrief({
        int? id,
        String? name,
        String? contact,
    }) = _DonarBrief;

    factory DonarBrief.fromJson(Map<String, dynamic> json) => _$DonarBriefFromJson(json);
}
