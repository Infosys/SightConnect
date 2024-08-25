// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_form_intimation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBFormIntimationResponseModelImpl
    _$$EBFormIntimationResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$EBFormIntimationResponseModelImpl(
          timelineName: json['timelineName'] as String?,
          version: json['version'] as String?,
          timelineVersion: json['timelineVersion'] as String?,
          stage: json['stage'] == null
              ? null
              : Stage.fromJson(json['stage'] as Map<String, dynamic>),
          name: json['name'] as String?,
        );

Map<String, dynamic> _$$EBFormIntimationResponseModelImplToJson(
        _$EBFormIntimationResponseModelImpl instance) =>
    <String, dynamic>{
      'timelineName': instance.timelineName,
      'version': instance.version,
      'timelineVersion': instance.timelineVersion,
      'stage': instance.stage?.toJson(),
      'name': instance.name,
    };

_$StageImpl _$$StageImplFromJson(Map<String, dynamic> json) => _$StageImpl(
      name: json['name'] as String?,
      version: json['version'] as String?,
      title: json['title'] as String?,
      titleDisplay: json['titleDisplay'],
      description: json['description'],
      descriptionDisplay: json['descriptionDisplay'],
      repeats: json['repeats'] as bool?,
      minRepeat: (json['minRepeat'] as num?)?.toInt(),
      maxRepeat: (json['maxRepeat'] as num?)?.toInt(),
      differentiator: json['differentiator'],
      logoPosition: json['logoPosition'] as String?,
      formLayoutType: json['formLayoutType'] as String?,
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => Page.fromJson(e as Map<String, dynamic>))
          .toList(),
      stageName: json['stageName'] as String?,
      stageVersion: json['stageVersion'] as String?,
    );

Map<String, dynamic> _$$StageImplToJson(_$StageImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'title': instance.title,
      'titleDisplay': instance.titleDisplay,
      'description': instance.description,
      'descriptionDisplay': instance.descriptionDisplay,
      'repeats': instance.repeats,
      'minRepeat': instance.minRepeat,
      'maxRepeat': instance.maxRepeat,
      'differentiator': instance.differentiator,
      'logoPosition': instance.logoPosition,
      'formLayoutType': instance.formLayoutType,
      'pages': instance.pages?.map((e) => e.toJson()).toList(),
      'stageName': instance.stageName,
      'stageVersion': instance.stageVersion,
    };

_$PageImpl _$$PageImplFromJson(Map<String, dynamic> json) => _$PageImpl(
      name: json['name'] as String?,
      version: json['version'],
      title: json['title'] as String?,
      titleDisplay: json['titleDisplay'],
      description: json['description'],
      descriptionDisplay: json['descriptionDisplay'],
      elements: (json['elements'] as List<dynamic>?)
          ?.map((e) => PageElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PageImplToJson(_$PageImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'title': instance.title,
      'titleDisplay': instance.titleDisplay,
      'description': instance.description,
      'descriptionDisplay': instance.descriptionDisplay,
      'elements': instance.elements?.map((e) => e.toJson()).toList(),
    };

_$PageElementImpl _$$PageElementImplFromJson(Map<String, dynamic> json) =>
    _$PageElementImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      prefix: json['prefix'] as String?,
      title: json['title'] as String?,
      titleDisplay: json['titleDisplay'] as String?,
      description: json['description'] as String?,
      descriptionDisplay: json['descriptionDisplay'] as String?,
      repeats: json['repeats'] as bool?,
      minRepeat: (json['minRepeat'] as num?)?.toInt(),
      maxRepeat: (json['maxRepeat'] as num?)?.toInt(),
      elements: (json['elements'] as List<dynamic>?)
          ?.map((e) => ElementElementClass.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PageElementImplToJson(_$PageElementImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'prefix': instance.prefix,
      'title': instance.title,
      'titleDisplay': instance.titleDisplay,
      'description': instance.description,
      'descriptionDisplay': instance.descriptionDisplay,
      'repeats': instance.repeats,
      'minRepeat': instance.minRepeat,
      'maxRepeat': instance.maxRepeat,
      'elements': instance.elements?.map((e) => e.toJson()).toList(),
    };

_$ElementElementClassImpl _$$ElementElementClassImplFromJson(
        Map<String, dynamic> json) =>
    _$ElementElementClassImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      prefix: json['prefix'] as String?,
      title: json['title'] as String?,
      titleDisplay: json['titleDisplay'] as String?,
      description: json['description'] as String?,
      descriptionDisplay: json['descriptionDisplay'] as String?,
      repeats: json['repeats'] as bool?,
      minRepeat: (json['minRepeat'] as num?)?.toInt(),
      maxRepeat: (json['maxRepeat'] as num?)?.toInt(),
      isRequired: json['isRequired'] as bool?,
      requiredErrorText: json['requiredErrorText'] as String?,
      readOnly: json['readOnly'] as bool?,
      inputType: json['inputType'] as String?,
      validators: (json['validators'] as List<dynamic>?)
          ?.map((e) => Validator.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ElementElementClassImplToJson(
        _$ElementElementClassImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'prefix': instance.prefix,
      'title': instance.title,
      'titleDisplay': instance.titleDisplay,
      'description': instance.description,
      'descriptionDisplay': instance.descriptionDisplay,
      'repeats': instance.repeats,
      'minRepeat': instance.minRepeat,
      'maxRepeat': instance.maxRepeat,
      'isRequired': instance.isRequired,
      'requiredErrorText': instance.requiredErrorText,
      'readOnly': instance.readOnly,
      'inputType': instance.inputType,
      'validators': instance.validators?.map((e) => e.toJson()).toList(),
    };

_$ValidatorImpl _$$ValidatorImplFromJson(Map<String, dynamic> json) =>
    _$ValidatorImpl(
      type: json['type'] as String?,
      regex: json['regex'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$ValidatorImplToJson(_$ValidatorImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'regex': instance.regex,
      'text': instance.text,
    };
