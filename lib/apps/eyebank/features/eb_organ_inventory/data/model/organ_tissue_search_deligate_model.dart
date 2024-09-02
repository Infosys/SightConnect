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
    @JsonKey(name: "tissueId") String? tissueId,
    @JsonKey(name: "cellCount") int? cellCount,
    @JsonKey(name: "harvestDate") String? harvestDate,
    @JsonKey(name: "suitableProcedures") List<String>? suitableProcedures,
    @JsonKey(name: "clearZone") String? clearZone,
    @JsonKey(name: "lensType") String? lensType,
    @JsonKey(name: "pachemetry") String? pachemetry,
    @JsonKey(name: "tissueExpiry") String? tissueExpiry,
    @JsonKey(name: "extractionMethod") String? extractionMethod,
    @JsonKey(name: "storageMedium") String? storageMedium,
    @JsonKey(name: "encounterId") int? encounterId,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}
