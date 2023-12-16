// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_on_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActionOnResponseModel _$$_ActionOnResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ActionOnResponseModel(
      id: json['id'] as int?,
      operator: $enumDecodeNullable(_$OperatorEnumMap, json['operator']),
      answer: json['answer'] as String?,
      actionType: $enumDecodeNullable(_$ActionTypeEnumMap, json['actionType']),
    );

Map<String, dynamic> _$$_ActionOnResponseModelToJson(
        _$_ActionOnResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'operator': _$OperatorEnumMap[instance.operator],
      'answer': instance.answer,
      'actionType': _$ActionTypeEnumMap[instance.actionType],
    };

const _$OperatorEnumMap = {
  Operator.EXISTS: 'EXISTS',
  Operator.EQUALS: 'EQUALS',
  Operator.NOT_EQUALS: 'NOT_EQUALS',
  Operator.GREATER_THAN: 'GREATER_THAN',
  Operator.LESS_THAN: 'LESS_THAN',
  Operator.GREATER_OR_EQUALS: 'GREATER_OR_EQUALS',
  Operator.LESS_OR_EQUALS: 'LESS_OR_EQUALS',
};

const _$ActionTypeEnumMap = {
  ActionType.EXIT_QUESTIONNAIRE: 'EXIT_QUESTIONNAIRE',
  ActionType.EXIT_ALL_QUESTIONNAIRE: 'EXIT_ALL_QUESTIONNAIRE',
  ActionType.EXIT_ASSESSMENT: 'EXIT_ASSESSMENT',
};
