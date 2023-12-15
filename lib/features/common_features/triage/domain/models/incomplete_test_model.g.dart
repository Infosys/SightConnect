// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incomplete_test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IncompleteTestModel _$$_IncompleteTestModelFromJson(
        Map<String, dynamic> json) =>
    _$_IncompleteTestModel(
      id: json['id'] as int?,
      testName: $enumDecodeNullable(_$TestNameEnumMap, json['testName']),
    );

Map<String, dynamic> _$$_IncompleteTestModelToJson(
        _$_IncompleteTestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'testName': _$TestNameEnumMap[instance.testName],
    };

const _$TestNameEnumMap = {
  TestName.QUESTIONNAIRE: 'QUESTIONNAIRE',
  TestName.OBSERVATION: 'OBSERVATION',
  TestName.IMAGING: 'IMAGING',
};
