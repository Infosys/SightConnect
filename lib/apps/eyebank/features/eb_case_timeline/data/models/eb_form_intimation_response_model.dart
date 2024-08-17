import 'package:freezed_annotation/freezed_annotation.dart';

part 'eb_form_intimation_response_model.freezed.dart';
part 'eb_form_intimation_response_model.g.dart';

@freezed
class EBFormIntimationResponseModel with _$EBFormIntimationResponseModel {
  const factory EBFormIntimationResponseModel({
    @JsonKey(name: "timelineName") String? timelineName,
    @JsonKey(name: "timelineVersion") String? timelineVersion,
    @JsonKey(name: "stage") Stage? stage,
  }) = _EBFormIntimationResponseModel;

  factory EBFormIntimationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EBFormIntimationResponseModelFromJson(json);
}

@freezed
class Stage with _$Stage {
  const factory Stage({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "version") String? version,
    @JsonKey(name: "logoPosition") String? logoPosition,
    @JsonKey(name: "formLayoutType") String? formLayoutType,
    @JsonKey(name: "pages") List<Page>? pages,
  }) = _Stage;

  factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
}

@freezed
class Page with _$Page {
  const factory Page({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "pageNumber") int? pageNumber,
    @JsonKey(name: "elements") List<Element>? elements,
  }) = _Page;

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
}

@freezed
class Element with _$Element {
  const factory Element({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "prefix") String? prefix,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "repeats") bool? repeats,
    @JsonKey(name: "minRepeat") int? minRepeat,
    @JsonKey(name: "maxRepeat") int? maxRepeat,
    @JsonKey(name: "elements") List<Element>? elements,
  }) = _Element;

  factory Element.fromJson(Map<String, dynamic> json) =>
      _$ElementFromJson(json);
}
