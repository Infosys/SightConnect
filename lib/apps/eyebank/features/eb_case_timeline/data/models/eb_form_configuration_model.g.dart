// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eb_form_configuration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EBFormConfigurationModelImpl _$$EBFormConfigurationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EBFormConfigurationModelImpl(
      name: json['name'] as String?,
      version: json['version'] as String?,
      logoPosition: json['logoPosition'] as String?,
      formLayoutType: json['formLayoutType'] as String?,
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => Page.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EBFormConfigurationModelImplToJson(
        _$EBFormConfigurationModelImpl instance) =>
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
