// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incomplete_test_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IncompleteTestDTO _$$_IncompleteTestDTOFromJson(Map<String, dynamic> json) =>
    _$_IncompleteTestDTO(
      id: json['id'] as int?,
      testName: $enumDecodeNullable(_$TestNameEnumMap, json['testName']),
    );

Map<String, dynamic> _$$_IncompleteTestDTOToJson(
        _$_IncompleteTestDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'testName': _$TestNameEnumMap[instance.testName],
    };

const _$TestNameEnumMap = {
  TestName.QUESTIONNAIRE: 'QUESTIONNAIRE',
  TestName.OBSERVATION: 'OBSERVATION',
  TestName.IMAGING: 'IMAGING',
};
