// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_detailed_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TriageDetailedReportModelImpl _$$TriageDetailedReportModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TriageDetailedReportModelImpl(
      encounterId: (json['encounterId'] as num?)?.toInt(),
      organizationCode: (json['organizationCode'] as num?)?.toInt(),
      tenantCode: (json['tenantCode'] as num?)?.toInt(),
      serviceType:
          $enumDecodeNullable(_$ServiceTypeEnumMap, json['serviceType']),
      encounterStatus: $enumDecodeNullable(
          _$EncounterStatusEnumMap, json['encounterStatus']),
      remarks: json['remarks'] as String?,
      encounterPeriod: json['encounterPeriod'] == null
          ? null
          : EncounterPeriod.fromJson(
              json['encounterPeriod'] as Map<String, dynamic>),
      diagnosticReportId: (json['diagnosticReportId'] as num?)?.toInt(),
      assessmentCode: (json['assessmentCode'] as num?)?.toInt(),
      assessmentVersion: json['assessmentVersion'] as String?,
      issued: const TimestampConverter().fromJson(json['issued'] as String?),
      userStartDate:
          const TimestampConverter().fromJson(json['userStartDate'] as String?),
      source: $enumDecodeNullable(_$SourceEnumMap, json['source']),
      status:
          $enumDecodeNullable(_$DiagnosticReportStatusEnumMap, json['status']),
      sourceVersion: json['sourceVersion'] as String?,
      performerId: (json['performerId'] as num?)?.toInt(),
      subject: (json['subject'] as num?)?.toInt(),
      performerRole:
          $enumDecodeNullable(_$PerformerRoleEnumMap, json['performerRole']),
      incompleteTests: (json['incompleteTests'] as List<dynamic>?)
          ?.map((e) => IncompleteTestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      responses: (json['responses'] as List<dynamic>?)
          ?.map((e) => Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      observations: (json['observations'] as List<dynamic>?)
          ?.map((e) => Observation.fromJson(e as Map<String, dynamic>))
          .toList(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      updateEndTime:
          const TimestampConverter().fromJson(json['updateEndTime'] as String?),
      diagnosticReportDescription:
          json['diagnosticReportDescription'] as String?,
      questionResultDescription: json['questionResultDescription'] as String?,
      observationResultDescription:
          json['observationResultDescription'] as String?,
      mediaResultDescription: json['mediaResultDescription'] as String?,
      cumulativeSeverity:
          $enumDecodeNullable(_$SeverityEnumMap, json['cumulativeSeverity']),
      observationSeverity:
          $enumDecodeNullable(_$SeverityEnumMap, json['observationSeverity']),
      mediaSeverity:
          $enumDecodeNullable(_$SeverityEnumMap, json['mediaSeverity']),
      questionResponseSeverity: $enumDecodeNullable(
          _$SeverityEnumMap, json['questionResponseSeverity']),
      carePlans: (json['carePlans'] as List<dynamic>?)
          ?.map((e) => CarePlan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TriageDetailedReportModelImplToJson(
        _$TriageDetailedReportModelImpl instance) =>
    <String, dynamic>{
      'encounterId': instance.encounterId,
      'organizationCode': instance.organizationCode,
      'tenantCode': instance.tenantCode,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType],
      'encounterStatus': _$EncounterStatusEnumMap[instance.encounterStatus],
      'remarks': instance.remarks,
      'encounterPeriod': instance.encounterPeriod?.toJson(),
      'diagnosticReportId': instance.diagnosticReportId,
      'assessmentCode': instance.assessmentCode,
      'assessmentVersion': instance.assessmentVersion,
      'issued': const TimestampConverter().toJson(instance.issued),
      'userStartDate':
          const TimestampConverter().toJson(instance.userStartDate),
      'source': _$SourceEnumMap[instance.source],
      'status': _$DiagnosticReportStatusEnumMap[instance.status],
      'sourceVersion': instance.sourceVersion,
      'performerId': instance.performerId,
      'subject': instance.subject,
      'performerRole': _$PerformerRoleEnumMap[instance.performerRole],
      'incompleteTests':
          instance.incompleteTests?.map((e) => e.toJson()).toList(),
      'responses': instance.responses?.map((e) => e.toJson()).toList(),
      'observations': instance.observations?.map((e) => e.toJson()).toList(),
      'media': instance.media?.map((e) => e.toJson()).toList(),
      'updateEndTime':
          const TimestampConverter().toJson(instance.updateEndTime),
      'diagnosticReportDescription': instance.diagnosticReportDescription,
      'questionResultDescription': instance.questionResultDescription,
      'observationResultDescription': instance.observationResultDescription,
      'mediaResultDescription': instance.mediaResultDescription,
      'cumulativeSeverity': _$SeverityEnumMap[instance.cumulativeSeverity],
      'observationSeverity': _$SeverityEnumMap[instance.observationSeverity],
      'mediaSeverity': _$SeverityEnumMap[instance.mediaSeverity],
      'questionResponseSeverity':
          _$SeverityEnumMap[instance.questionResponseSeverity],
      'carePlans': instance.carePlans?.map((e) => e.toJson()).toList(),
    };

const _$ServiceTypeEnumMap = {
  ServiceType.OPTOMETRY: 'OPTOMETRY',
};

const _$EncounterStatusEnumMap = {
  EncounterStatus.IN_PROGRESS: 'IN_PROGRESS',
  EncounterStatus.COMPLETED: 'COMPLETED',
  EncounterStatus.CANCELLED: 'CANCELLED',
};

const _$SourceEnumMap = {
  Source.PATIENT_APP: 'PATIENT_APP',
  Source.VT_APP: 'VT_APP',
  Source.VG_APP: 'VG_APP',
  Source.IVR: 'IVR',
  Source.IN_PERSON: 'IN_PERSON',
  Source.OTHERS: 'OTHERS',
};

const _$DiagnosticReportStatusEnumMap = {
  DiagnosticReportStatus.REGISTERED: 'REGISTERED',
  DiagnosticReportStatus.PARTIAL: 'PARTIAL',
  DiagnosticReportStatus.PRELIMINARY: 'PRELIMINARY',
  DiagnosticReportStatus.FINAL: 'FINAL',
  DiagnosticReportStatus.AMENDED: 'AMENDED',
  DiagnosticReportStatus.CORRECTED: 'CORRECTED',
  DiagnosticReportStatus.APPENDED: 'APPENDED',
  DiagnosticReportStatus.CANCELLED: 'CANCELLED',
  DiagnosticReportStatus.ENTERED_IN_ERROR: 'ENTERED_IN_ERROR',
  DiagnosticReportStatus.UNKNOWN: 'UNKNOWN',
};

const _$PerformerRoleEnumMap = {
  PerformerRole.MEDICAL_DOCTOR: 'MEDICAL_DOCTOR',
  PerformerRole.MEDICAL_PRACTITIONER: 'MEDICAL_PRACTITIONER',
  PerformerRole.VISION_TECHNICIAN: 'VISION_TECHNICIAN',
  PerformerRole.VISION_GUARDIAN: 'VISION_GUARDIAN',
  PerformerRole.NURSE: 'NURSE',
  PerformerRole.SYSTEM: 'SYSTEM',
  PerformerRole.PATIENT: 'PATIENT',
  PerformerRole.VOLUNTEER: 'VOLUNTEER',
};

const _$SeverityEnumMap = {
  Severity.ABNORMAL: 'ABNORMAL',
  Severity.HIGH: 'HIGH',
  Severity.LOW: 'LOW',
};

_$EncounterPeriodImpl _$$EncounterPeriodImplFromJson(
        Map<String, dynamic> json) =>
    _$EncounterPeriodImpl(
      id: (json['id'] as num).toInt(),
      start: const TimestampConverter().fromJson(json['start'] as String?),
      end: const TimestampConverter().fromJson(json['end'] as String?),
    );

Map<String, dynamic> _$$EncounterPeriodImplToJson(
        _$EncounterPeriodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': const TimestampConverter().toJson(instance.start),
      'end': const TimestampConverter().toJson(instance.end),
    };

_$IncompleteTestModelImpl _$$IncompleteTestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IncompleteTestModelImpl(
      id: (json['id'] as num).toInt(),
      testName: $enumDecode(_$TestTypeEnumMap, json['testName']),
    );

Map<String, dynamic> _$$IncompleteTestModelImplToJson(
        _$IncompleteTestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'testName': _$TestTypeEnumMap[instance.testName]!,
    };

const _$TestTypeEnumMap = {
  TestType.QUESTIONNAIRE: 'QUESTIONNAIRE',
  TestType.OBSERVATION: 'OBSERVATION',
  TestType.IMAGE: 'IMAGE',
};

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      id: (json['id'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      answerCode: (json['answerCode'] as num?)?.toInt(),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'answerCode': instance.answerCode,
      'value': instance.value,
    };

_$ResponseImpl _$$ResponseImplFromJson(Map<String, dynamic> json) =>
    _$ResponseImpl(
      id: (json['id'] as num).toInt(),
      linkId: (json['linkId'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseImplToJson(_$ResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'linkId': instance.linkId,
      'score': instance.score,
      'answers': instance.answers?.map((e) => e.toJson()).toList(),
    };

_$ObservationImpl _$$ObservationImplFromJson(Map<String, dynamic> json) =>
    _$ObservationImpl(
      id: (json['id'] as num).toInt(),
      identifier: (json['identifier'] as num?)?.toInt(),
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ObservationImplToJson(_$ObservationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'value': instance.value,
      'score': instance.score,
    };

_$MediaImpl _$$MediaImplFromJson(Map<String, dynamic> json) => _$MediaImpl(
      id: (json['id'] as num).toInt(),
      identifier: (json['identifier'] as num?)?.toInt(),
      baseUrl: json['baseUrl'] as String?,
      endpoint: json['endpoint'] as String?,
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
      score: (json['score'] as num?)?.toDouble(),
      fileId: json['fileId'] as String?,
    );

Map<String, dynamic> _$$MediaImplToJson(_$MediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'baseUrl': instance.baseUrl,
      'endpoint': instance.endpoint,
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'score': instance.score,
      'fileId': instance.fileId,
    };

const _$BodySiteEnumMap = {
  BodySite.LEFT_EYE: 'LEFT_EYE',
  BodySite.RIGHT_EYE: 'RIGHT_EYE',
  BodySite.BOTH_EYES: 'BOTH_EYES',
};

_$CarePlanImpl _$$CarePlanImplFromJson(Map<String, dynamic> json) =>
    _$CarePlanImpl(
      carePlanId: (json['carePlanId'] as num).toInt(),
      carePlanStatus:
          $enumDecodeNullable(_$RequestStatusEnumMap, json['carePlanStatus']),
      category:
          $enumDecodeNullable(_$CarePlanCategoryEnumMap, json['category']),
      title: json['title'] as String?,
      description: json['description'] as String?,
      subject: (json['subject'] as num?)?.toInt(),
      created: const TimestampConverter().fromJson(json['created'] as String?),
      note: json['note'] as String?,
      period: json['period'] == null
          ? null
          : EncounterPeriod.fromJson(json['period'] as Map<String, dynamic>),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
          .toList(),
      activities: (json['activities'] as List<dynamic>?)
          ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
      goals: (json['goals'] as List<dynamic>?)
          ?.map((e) => Goal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CarePlanImplToJson(_$CarePlanImpl instance) =>
    <String, dynamic>{
      'carePlanId': instance.carePlanId,
      'carePlanStatus': _$RequestStatusEnumMap[instance.carePlanStatus],
      'category': _$CarePlanCategoryEnumMap[instance.category],
      'title': instance.title,
      'description': instance.description,
      'subject': instance.subject,
      'created': const TimestampConverter().toJson(instance.created),
      'note': instance.note,
      'period': instance.period?.toJson(),
      'conditions': instance.conditions?.map((e) => e.toJson()).toList(),
      'activities': instance.activities?.map((e) => e.toJson()).toList(),
      'goals': instance.goals?.map((e) => e.toJson()).toList(),
    };

const _$RequestStatusEnumMap = {
  RequestStatus.DRAFT: 'DRAFT',
  RequestStatus.ACTIVE: 'ACTIVE',
  RequestStatus.ON_HOLD: 'ON_HOLD',
  RequestStatus.REVOKED: 'REVOKED',
  RequestStatus.COMPLETED: 'COMPLETED',
  RequestStatus.ENTERED_IN_ERROR: 'ENTERED_IN_ERROR',
  RequestStatus.UNKNOWN: 'UNKNOWN',
};

const _$CarePlanCategoryEnumMap = {
  CarePlanCategory.OPHTHALMOLOGY: 'OPHTHALMOLOGY',
};

_$ConditionImpl _$$ConditionImplFromJson(Map<String, dynamic> json) =>
    _$ConditionImpl(
      id: (json['id'] as num?)?.toInt(),
      recordedDate:
          const TimestampConverter().fromJson(json['recordedDate'] as String?),
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
      code: json['code'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$ConditionImplToJson(_$ConditionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordedDate': const TimestampConverter().toJson(instance.recordedDate),
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'code': instance.code,
      'note': instance.note,
    };

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      id: (json['id'] as num?)?.toInt(),
      progress: json['progress'] as String?,
      plannedActivityReference: json['plannedActivityReference'] == null
          ? null
          : PlannedActivityReference.fromJson(
              json['plannedActivityReference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'progress': instance.progress,
      'plannedActivityReference': instance.plannedActivityReference?.toJson(),
    };

_$PlannedActivityReferenceImpl _$$PlannedActivityReferenceImplFromJson(
        Map<String, dynamic> json) =>
    _$PlannedActivityReferenceImpl(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      serviceRequest: json['serviceRequest'] == null
          ? null
          : ServiceRequest.fromJson(
              json['serviceRequest'] as Map<String, dynamic>),
      communication: json['communication'] == null
          ? null
          : Communication.fromJson(
              json['communication'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlannedActivityReferenceImplToJson(
        _$PlannedActivityReferenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'serviceRequest': instance.serviceRequest?.toJson(),
      'communication': instance.communication?.toJson(),
    };

_$ServiceRequestImpl _$$ServiceRequestImplFromJson(Map<String, dynamic> json) =>
    _$ServiceRequestImpl(
      id: (json['id'] as num?)?.toInt(),
      identifier: (json['identifier'] as num?)?.toInt(),
      note: json['note'] as String?,
      patientInstruction: json['patientInstruction'] as String?,
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
      priority: $enumDecodeNullable(_$RequestPriorityEnumMap, json['priority']),
    );

Map<String, dynamic> _$$ServiceRequestImplToJson(
        _$ServiceRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifier': instance.identifier,
      'note': instance.note,
      'patientInstruction': instance.patientInstruction,
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'priority': _$RequestPriorityEnumMap[instance.priority],
    };

const _$RequestPriorityEnumMap = {
  RequestPriority.ROUTINE: 'ROUTINE',
  RequestPriority.URGENT: 'URGENT',
  RequestPriority.ASAP: 'ASAP',
  RequestPriority.STAT: 'STAT',
  RequestPriority.PENDING: 'PENDING',
};

_$CommunicationImpl _$$CommunicationImplFromJson(Map<String, dynamic> json) =>
    _$CommunicationImpl(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'],
      statusReason: json['statusReason'],
      category: json['category'],
      priority: json['priority'],
      doNotPerform: json['doNotPerform'],
      medium: json['medium'],
      subject: json['subject'],
      about: json['about'],
      authoredOn: json['authoredOn'],
      reason: json['reason'],
      note: json['note'],
    );

Map<String, dynamic> _$$CommunicationImplToJson(_$CommunicationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'statusReason': instance.statusReason,
      'category': instance.category,
      'priority': instance.priority,
      'doNotPerform': instance.doNotPerform,
      'medium': instance.medium,
      'subject': instance.subject,
      'about': instance.about,
      'authoredOn': instance.authoredOn,
      'reason': instance.reason,
      'note': instance.note,
    };

_$GoalImpl _$$GoalImplFromJson(Map<String, dynamic> json) => _$GoalImpl(
      id: (json['id'] as num?)?.toInt(),
      statusDate:
          const TimestampConverter().fromJson(json['statusDate'] as String?),
      statusReason: json['statusReason'] as String?,
      achievementStatus: $enumDecodeNullable(
          _$GoalAchievementEnumMap, json['achievementStatus']),
      lifecycleStatus: $enumDecodeNullable(
          _$GoalLifecycleStatusEnumMap, json['lifecycleStatus']),
      category: $enumDecodeNullable(_$GoalCategoryEnumMap, json['category']),
      outcomes: (json['outcomes'] as List<dynamic>?)
          ?.map((e) => GoalOutcomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      startDate:
          const TimestampConverter().fromJson(json['startDate'] as String?),
      dueDate: const TimestampConverter().fromJson(json['dueDate'] as String?),
      targets: (json['targets'] as List<dynamic>?)
          ?.map((e) => Target.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GoalImplToJson(_$GoalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'statusDate': const TimestampConverter().toJson(instance.statusDate),
      'statusReason': instance.statusReason,
      'achievementStatus': _$GoalAchievementEnumMap[instance.achievementStatus],
      'lifecycleStatus': _$GoalLifecycleStatusEnumMap[instance.lifecycleStatus],
      'category': _$GoalCategoryEnumMap[instance.category],
      'outcomes': instance.outcomes?.map((e) => e.toJson()).toList(),
      'startDate': const TimestampConverter().toJson(instance.startDate),
      'dueDate': const TimestampConverter().toJson(instance.dueDate),
      'targets': instance.targets?.map((e) => e.toJson()).toList(),
    };

const _$GoalAchievementEnumMap = {
  GoalAchievement.IN_PROGRESS: 'IN_PROGRESS',
  GoalAchievement.IMPROVING: 'IMPROVING',
  GoalAchievement.WORSENING: 'WORSENING',
  GoalAchievement.NO_CHANGE: 'NO_CHANGE',
  GoalAchievement.ACHIEVED: 'ACHIEVED',
  GoalAchievement.SUSTAINING: 'SUSTAINING',
  GoalAchievement.NOT_ACHIEVED: 'NOT_ACHIEVED',
  GoalAchievement.NO_PROGRESS: 'NO_PROGRESS',
  GoalAchievement.NOT_ATTAINABLE: 'NOT_ATTAINABLE',
};

const _$GoalLifecycleStatusEnumMap = {
  GoalLifecycleStatus.PROPOSED: 'PROPOSED',
  GoalLifecycleStatus.PLANNED: 'PLANNED',
  GoalLifecycleStatus.ACCEPTED: 'ACCEPTED',
  GoalLifecycleStatus.ACTIVE: 'ACTIVE',
  GoalLifecycleStatus.ON_HOLD: 'ON_HOLD',
  GoalLifecycleStatus.COMPLETED: 'COMPLETED',
  GoalLifecycleStatus.CANCELLED: 'CANCELLED',
  GoalLifecycleStatus.ENTERED_IN_ERROR: 'ENTERED_IN_ERROR',
  GoalLifecycleStatus.REJECTED: 'REJECTED',
};

const _$GoalCategoryEnumMap = {
  GoalCategory.TREATMENT: 'TREATMENT',
};

_$GoalOutcomeModelImpl _$$GoalOutcomeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GoalOutcomeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      goalOutcome:
          $enumDecodeNullable(_$GoalOutcomeEnumMap, json['goalOutcome']),
    );

Map<String, dynamic> _$$GoalOutcomeModelImplToJson(
        _$GoalOutcomeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'goalOutcome': _$GoalOutcomeEnumMap[instance.goalOutcome],
    };

const _$GoalOutcomeEnumMap = {
  GoalOutcome.GLASSES_PRESCRIBED: 'GLASSES_PRESCRIBED',
  GoalOutcome.OP_CONSULTATION: 'OP_CONSULTATION',
  GoalOutcome.MEDICINE_PRESCRIBED: 'MEDICINE_PRESCRIBED',
  GoalOutcome.UNDER_OBSERVATION: 'UNDER_OBSERVATION',
  GoalOutcome.ADMITTED: 'ADMITTED',
  GoalOutcome.SURGERY_RECOMMENDED: 'SURGERY_RECOMMENDED',
  GoalOutcome.REFERRED_TO_SPECIALIST: 'REFERRED_TO_SPECIALIST',
  GoalOutcome.PATIENT_DID_NOT_VISIT: 'PATIENT_DID_NOT_VISIT',
  GoalOutcome.PATIENT_VISITED_OTHER_CLINIC: 'PATIENT_VISITED_OTHER_CLINIC',
  GoalOutcome.PATIENT_NOT_INTERESTED_IN_TREATMENT:
      'PATIENT_NOT_INTERESTED_IN_TREATMENT',
  GoalOutcome.TREATMENT_PLAN_PRESCRIBED: 'TREATMENT_PLAN_PRESCRIBED',
  GoalOutcome.VISION_THERAPY_RECOMMENDED: 'VISION_THERAPY_RECOMMENDED',
  GoalOutcome.REFERRAL_FOR_DIAGNOSTIC_TESTING:
      'REFERRAL_FOR_DIAGNOSTIC_TESTING',
  GoalOutcome.LOW_VISION_REHABILITATION: 'LOW_VISION_REHABILITATION',
  GoalOutcome.EDUCATION_AND_COUNSELING: 'EDUCATION_AND_COUNSELING',
};

_$TargetImpl _$$TargetImplFromJson(Map<String, dynamic> json) => _$TargetImpl(
      id: (json['id'] as num?)?.toInt(),
      measure: $enumDecodeNullable(_$GoalMeasureEnumMap, json['measure']),
      detailString: json['detailString'] as String?,
      detailQuantity: (json['detailQuantity'] as num?)?.toInt(),
      detailRange: json['detailRange'] as String?,
      detailCodeableConcept: $enumDecodeNullable(
          _$GoalParameterEnumMap, json['detailCodeableConcept']),
      dueDate: const TimestampConverter().fromJson(json['dueDate'] as String?),
    );

Map<String, dynamic> _$$TargetImplToJson(_$TargetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'measure': _$GoalMeasureEnumMap[instance.measure],
      'detailString': instance.detailString,
      'detailQuantity': instance.detailQuantity,
      'detailRange': instance.detailRange,
      'detailCodeableConcept':
          _$GoalParameterEnumMap[instance.detailCodeableConcept],
      'dueDate': const TimestampConverter().toJson(instance.dueDate),
    };

const _$GoalMeasureEnumMap = {
  GoalMeasure.VISION_POWER: 'VISION_POWER',
};

const _$GoalParameterEnumMap = {
  GoalParameter.VISION_CORRECTION: 'VISION_CORRECTION',
};
