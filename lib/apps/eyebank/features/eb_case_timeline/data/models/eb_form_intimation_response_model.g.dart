// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_form_intimation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBFormIntimationResponseModelImpl
    _$$EBFormIntimationResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$EBFormIntimationResponseModelImpl(
          timelineName: json['timelineName'] as String?,
          timelineVersion: json['timelineVersion'] as String?,
          stage: json['stage'] == null
              ? null
              : Stage.fromJson(json['stage'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$EBFormIntimationResponseModelImplToJson(
        _$EBFormIntimationResponseModelImpl instance) =>
    <String, dynamic>{
      'timelineName': instance.timelineName,
      'timelineVersion': instance.timelineVersion,
      'stage': instance.stage?.toJson(),
    };

_$StageImpl _$$StageImplFromJson(Map<String, dynamic> json) => _$StageImpl(
      name: json['name'] as String?,
      version: json['version'] as String?,
      logoPosition: json['logoPosition'] as String?,
      formLayoutType: json['formLayoutType'] as String?,
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => Page.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StageImplToJson(_$StageImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'logoPosition': instance.logoPosition,
      'formLayoutType': instance.formLayoutType,
      'pages': instance.pages?.map((e) => e.toJson()).toList(),
    };

_$PageImpl _$$PageImplFromJson(Map<String, dynamic> json) => _$PageImpl(
      title: json['title'] as String?,
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      elements: (json['elements'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PageImplToJson(_$PageImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'pageNumber': instance.pageNumber,
      'elements': instance.elements?.map((e) => e.toJson()).toList(),
    };

_$ElementImpl _$$ElementImplFromJson(Map<String, dynamic> json) =>
    _$ElementImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      prefix: json['prefix'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      repeats: json['repeats'] as bool?,
      minRepeat: (json['minRepeat'] as num?)?.toInt(),
      maxRepeat: (json['maxRepeat'] as num?)?.toInt(),
      elements: (json['elements'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ElementImplToJson(_$ElementImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'prefix': instance.prefix,
      'title': instance.title,
      'description': instance.description,
      'repeats': instance.repeats,
      'minRepeat': instance.minRepeat,
      'maxRepeat': instance.maxRepeat,
      'elements': instance.elements?.map((e) => e.toJson()).toList(),
    };
