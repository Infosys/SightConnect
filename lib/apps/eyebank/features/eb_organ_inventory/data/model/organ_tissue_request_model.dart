import 'package:freezed_annotation/freezed_annotation.dart';

part 'organ_tissue_request_model.freezed.dart';
part 'organ_tissue_request_model.g.dart';

@freezed
class OrganTissueRequestModel with _$OrganTissueRequestModel {
  const factory OrganTissueRequestModel({
    @JsonKey(name: "content") List<Content>? content,
    @JsonKey(name: "totalElements") int? totalElements,
    @JsonKey(name: "totalPages") int? totalPages,
    @JsonKey(name: "size") int? size,
    @JsonKey(name: "number") int? number,
    @JsonKey(name: "numberOfElements") int? numberOfElements,
    @JsonKey(name: "empty") bool? empty,
    @JsonKey(name: "first") bool? first,
    @JsonKey(name: "last") bool? last,
  }) = _OrganTissueRequestModel;

  factory OrganTissueRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OrganTissueRequestModelFromJson(json);
}

@freezed
class Content with _$Content {
  const factory Content({
    @JsonKey(name: "encounterId") String? encounterId,
    @JsonKey(name: "tissueTypeRequested") String? tissueTypeRequested,
    @JsonKey(name: "requestedBy") String? requestedBy,
    @JsonKey(name: "requestedDate") String? requestedDate,
    @JsonKey(name: "procedures") List<String?>? procedures,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}
