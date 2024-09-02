// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organ_tissue_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrganTissueRequestModelImpl _$$OrganTissueRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrganTissueRequestModelImpl(
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalElements: (json['totalElements'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      numberOfElements: (json['numberOfElements'] as num?)?.toInt(),
      empty: json['empty'] as bool?,
      first: json['first'] as bool?,
      last: json['last'] as bool?,
    );

Map<String, dynamic> _$$OrganTissueRequestModelImplToJson(
        _$OrganTissueRequestModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content?.map((e) => e.toJson()).toList(),
      'totalElements': instance.totalElements,
      'totalPages': instance.totalPages,
      'size': instance.size,
      'number': instance.number,
      'numberOfElements': instance.numberOfElements,
      'empty': instance.empty,
      'first': instance.first,
      'last': instance.last,
    };

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(
      encounterId: json['encounterId'] as String?,
      tissueTypeRequested: json['tissueTypeRequested'] as String?,
      requestedBy: json['requestedBy'] as String?,
      requestedDate: json['requestedDate'] as String?,
      procedures: (json['procedures'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'tissueTypeRequested': instance.tissueTypeRequested,
      'requestedBy': instance.requestedBy,
      'requestedDate': instance.requestedDate,
      'procedures': instance.procedures,
    };
