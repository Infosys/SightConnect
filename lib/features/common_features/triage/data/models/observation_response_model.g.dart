// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ObservationResponseModel _$$_ObservationResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      valueType: $enumDecodeNullable(_$ValueTypeEnumMap, json['valueType']),
      hiThreshold: json['hiThreshold'] as String?,
      loThreshold: json['loThreshold'] as String?,
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
      configs: json['configs'] as String?,
      weightage: (json['weightage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ObservationResponseModelToJson(
        _$_ObservationResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'valueType': _$ValueTypeEnumMap[instance.valueType],
      'hiThreshold': instance.hiThreshold,
      'loThreshold': instance.loThreshold,
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
      'configs': instance.configs,
      'weightage': instance.weightage,
    };

const _$ValueTypeEnumMap = {
  ValueType.STRING: 'STRING',
  ValueType.INTEGER: 'INTEGER',
  ValueType.FLOAT: 'FLOAT',
  ValueType.BOOLEAN: 'BOOLEAN',
};
