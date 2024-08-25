import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'eb_form_intimation_response_model.freezed.dart';
part 'eb_form_intimation_response_model.g.dart';

@freezed
class EBFormIntimationResponseModel with _$EBFormIntimationResponseModel {
    const factory EBFormIntimationResponseModel({
        String? timelineName,
        String? version,
        String? timelineVersion,
        Stage? stage,
        String? name,
    }) = _EBFormIntimationResponseModel;

    factory EBFormIntimationResponseModel.fromJson(Map<String, dynamic> json) => _$EBFormIntimationResponseModelFromJson(json);
}

@freezed
class Stage with _$Stage {
    const factory Stage({
        String? name,
        String? version,
        String? title,
        dynamic titleDisplay,
        dynamic description,
        dynamic descriptionDisplay,
        bool? repeats,
        int? minRepeat,
        int? maxRepeat,
        dynamic differentiator,
        String? logoPosition,
        String? formLayoutType,
        List<Page>? pages,
        String? stageName,
        String? stageVersion,
    }) = _Stage;

    factory Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
}

@freezed
class Page with _$Page {
    const factory Page({
        String? name,
        dynamic version,
        String? title,
        dynamic titleDisplay,
        dynamic description,
        dynamic descriptionDisplay,
        List<PageElement>? elements,
    }) = _Page;

    factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
}

@freezed
class PageElement with _$PageElement {
    const factory PageElement({
        String? name,
        String? type,
        String? prefix,
        String? title,
        String? titleDisplay,
        String? description,
        String? descriptionDisplay,
        bool? repeats,
        int? minRepeat,
        int? maxRepeat,
        List<ElementElementClass>? elements,
    }) = _PageElement;

    factory PageElement.fromJson(Map<String, dynamic> json) => _$PageElementFromJson(json);
}

@freezed
class ElementElementClass with _$ElementElementClass {
    const factory ElementElementClass({
        String? name,
        String? type,
        String? prefix,
        String? title,
        String? titleDisplay,
        String? description,
        String? descriptionDisplay,
        bool? repeats,
        int? minRepeat,
        int? maxRepeat,
        bool? isRequired,
        String? requiredErrorText,
        bool? readOnly,
        String? inputType,
        List<Validator>? validators,
    }) = _ElementElementClass;

    factory ElementElementClass.fromJson(Map<String, dynamic> json) => _$ElementElementClassFromJson(json);
}

@freezed
class Validator with _$Validator {
    const factory Validator({
        String? type,
        String? regex,
        String? text,
    }) = _Validator;

    factory Validator.fromJson(Map<String, dynamic> json) => _$ValidatorFromJson(json);
}
