// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriageResponseModel _$$_TriageResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_TriageResponseModel(
      patientId: json['patientId'] as int?,
      encounterId: json['encounterId'] as int?,
      serviceType: json['serviceType'] as String?,
      organizationCode: json['organizationCode'] as int?,
      performer: (json['performer'] as List<dynamic>?)
          ?.map((e) => PerformerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      assessmentCode: json['assessmentCode'] as int?,
      assessmentVersion: json['assessmentVersion'] as String?,
      issued: const TimestampConverter().fromJson(json['issued'] as String?),
      userStartDate:
          const TimestampConverter().fromJson(json['userStartDate'] as String?),
      source: $enumDecodeNullable(_$SourceEnumMap, json['source']),
      sourceVersion: json['sourceVersion'] as String?,
      incompleteSection: (json['incompleteSection'] as List<dynamic>?)
          ?.map((e) => IncompleteTestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      cummulativeScore: (json['cummulativeScore'] as num?)?.toDouble(),
      score: (json['score'] as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(k, (e as num).toDouble()),
              ))
          .toList(),
      imagingSelection: (json['imagingSelection'] as List<dynamic>?)
          ?.map((e) =>
              PostImagingSelectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      observations: (json['observations'] as List<dynamic>?)
          ?.map(
              (e) => PostObservationsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      questionResponse: (json['questionResponse'] as List<dynamic>?)
          ?.map((e) =>
              PostQuestionResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TriageResponseModelToJson(
        _$_TriageResponseModel instance) =>
    <String, dynamic>{
      'patientId': instance.patientId,
      'encounterId': instance.encounterId,
      'serviceType': instance.serviceType,
      'organizationCode': instance.organizationCode,
      'performer': instance.performer,
      'assessmentCode': instance.assessmentCode,
      'assessmentVersion': instance.assessmentVersion,
      'issued': const TimestampConverter().toJson(instance.issued),
      'userStartDate':
          const TimestampConverter().toJson(instance.userStartDate),
      'source': _$SourceEnumMap[instance.source],
      'sourceVersion': instance.sourceVersion,
      'incompleteSection': instance.incompleteSection,
      'cummulativeScore': instance.cummulativeScore,
      'score': instance.score,
      'imagingSelection': instance.imagingSelection,
      'observations': instance.observations,
      'questionResponse': instance.questionResponse,
    };

const _$SourceEnumMap = {
  Source.PATIENT_APP: 'PATIENT_APP',
  Source.VT_APP: 'VT_APP',
  Source.VG_APP: 'VG_APP',
  Source.IVR: 'IVR',
  Source.IN_PERSION: 'IN_PERSION',
  Source.OTHERS: 'OTHERS',
};

_$_PostImagingSelectionModel _$$_PostImagingSelectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostImagingSelectionModel(
      identifier: json['identifier'] as int?,
      endpoint: json['endpoint'] as String?,
      baseUrl: json['baseUrl'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostImagingSelectionModelToJson(
        _$_PostImagingSelectionModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'endpoint': instance.endpoint,
      'baseUrl': instance.baseUrl,
      'score': instance.score,
    };

_$_PostObservationsModel _$$_PostObservationsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostObservationsModel(
      identifier: json['identifier'] as int?,
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostObservationsModelToJson(
        _$_PostObservationsModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'value': instance.value,
      'score': instance.score,
    };

_$_QuestionnaireResponseModel _$$_QuestionnaireResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      version: json['version'] as String?,
      approvalDate:
          const TimestampConverter().fromJson(json['approvalDate'] as String?),
      lastReviewDate: const TimestampConverter()
          .fromJson(json['lastReviewDate'] as String?),
      effectiveFrom:
          const TimestampConverter().fromJson(json['effectiveFrom'] as String?),
      effectiveTill:
          const TimestampConverter().fromJson(json['effectiveTill'] as String?),
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
      lastModifiedDate: const TimestampConverter()
          .fromJson(json['lastModifiedDate'] as String?),
      publisherCode: json['publisherCode'] as int?,
      publisherType: json['publisherType'] as String?,
      questionResponseDTO: (json['questionResponseDTO'] as List<dynamic>?)
          ?.map(
              (e) => QuestionResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionnaireResponseModelToJson(
        _$_QuestionnaireResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
      'approvalDate': const TimestampConverter().toJson(instance.approvalDate),
      'lastReviewDate':
          const TimestampConverter().toJson(instance.lastReviewDate),
      'effectiveFrom':
          const TimestampConverter().toJson(instance.effectiveFrom),
      'effectiveTill':
          const TimestampConverter().toJson(instance.effectiveTill),
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
      'lastModifiedDate':
          const TimestampConverter().toJson(instance.lastModifiedDate),
      'publisherCode': instance.publisherCode,
      'publisherType': instance.publisherType,
      'questionResponseDTO': instance.questionResponseDTO,
    };

_$_QuestionResponseModel _$$_QuestionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionResponseModel(
      id: json['id'] as int?,
      definition: json['definition'] as String?,
      constraint: $enumDecodeNullable(_$ConstraintEnumMap, json['constraint']),
      defaultValue: json['defaultValue'] as String?,
      enableBehaviour: $enumDecodeNullable(
          _$EnableBehaviourEnumMap, json['enableBehaviour']),
      maxLength: json['maxLength'] as int?,
      disabledDisplay: $enumDecodeNullable(
          _$DisabledDisplayEnumMap, json['disabledDisplay']),
      prefix: json['prefix'] as String?,
      weight: json['weight'] as int?,
      image: json['image'] as String?,
      actionOnResponseDTO: (json['actionOnResponseDTO'] as List<dynamic>?)
          ?.map(
              (e) => ActionOnResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      readOnly: json['readOnly'] as bool?,
      required: json['required'] as bool?,
    );

Map<String, dynamic> _$$_QuestionResponseModelToJson(
        _$_QuestionResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'definition': instance.definition,
      'constraint': _$ConstraintEnumMap[instance.constraint],
      'defaultValue': instance.defaultValue,
      'enableBehaviour': _$EnableBehaviourEnumMap[instance.enableBehaviour],
      'maxLength': instance.maxLength,
      'disabledDisplay': _$DisabledDisplayEnumMap[instance.disabledDisplay],
      'prefix': instance.prefix,
      'weight': instance.weight,
      'image': instance.image,
      'actionOnResponseDTO': instance.actionOnResponseDTO,
      'readOnly': instance.readOnly,
      'required': instance.required,
    };

const _$ConstraintEnumMap = {
  Constraint.DATE: 'DATE',
  Constraint.DATETIME: 'DATETIME',
  Constraint.TEXT: 'TEXT',
  Constraint.INTEGER: 'INTEGER',
  Constraint.DECIMAL: 'DECIMAL',
  Constraint.ASSERTIVE: 'ASSERTIVE',
  Constraint.CHOICE: 'CHOICE',
  Constraint.MULTIFACATED: 'MULTIFACATED',
};

const _$EnableBehaviourEnumMap = {
  EnableBehaviour.ALL: 'ALL',
  EnableBehaviour.ANY: 'ANY',
};

const _$DisabledDisplayEnumMap = {
  DisabledDisplay.PROTECTED: 'PROTECTED',
  DisabledDisplay.HIDDEN: 'HIDDEN',
};

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

_$_PerformerModel _$$_PerformerModelFromJson(Map<String, dynamic> json) =>
    _$_PerformerModel(
      role: $enumDecodeNullable(_$PerformerRoleEnumMap, json['role']),
      identifier: json['identifier'] as int?,
    );

Map<String, dynamic> _$$_PerformerModelToJson(_$_PerformerModel instance) =>
    <String, dynamic>{
      'role': _$PerformerRoleEnumMap[instance.role],
      'identifier': instance.identifier,
    };

const _$PerformerRoleEnumMap = {
  PerformerRole.MEDICAL_DOCTOR: 'MEDICAL_DOCTOR',
  PerformerRole.MEDICAL_PRACTITIONER: 'MEDICAL_PRACTITIONER',
  PerformerRole.VISION_TECHNICIAN: 'VISION_TECHNICIAN',
  PerformerRole.VISION_GUARDIAN: 'VISION_GUARDIAN',
  PerformerRole.NURSE: 'NURSE',
  PerformerRole.SYSTEM: 'SYSTEM',
  PerformerRole.PATIENT: 'PATIENT',
};
