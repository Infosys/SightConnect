import 'dart:convert';

import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/encounter_status.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/source.dart';

class TriageReportUserEntity {
  final String name;
  final String image;
  final int id;

  const TriageReportUserEntity({
    required this.name,
    required this.image,
    required this.id,
  });

  TriageReportUserEntity copyWith({
    String? name,
    String? image,
    int? id,
  }) {
    return TriageReportUserEntity(
      name: name ?? this.name,
      image: image ?? this.image,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'image': image});
    result.addAll({'id': id});

    return result;
  }

  factory TriageReportUserEntity.fromMap(Map<String, dynamic> map) {
    return TriageReportUserEntity(
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      id: map['id']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory TriageReportUserEntity.fromJson(String source) =>
      TriageReportUserEntity.fromMap(json.decode(source));

  @override
  String toString() =>
      'TriageReportUserEntity(name: $name, image: $image, id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TriageReportUserEntity &&
        other.name == name &&
        other.image == image &&
        other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ image.hashCode ^ id.hashCode;
}

class TriageReportBriefEntity {
  int triageResultID;
  Severity? overallSeverity;
  String? reportTag;
  String? triageResultType;
  Source? triageResultSource;
  int? assessmentID;
  DateTime? triageResultStartDate;
  String? triageResultDescription;
  bool? isUpdateEnabled;
  int encounterId;
  EncounterStatus? encounterStatus;
  DiagnosticReportStatus? status;
  String? questionResultDescription;
  String? observationResultDescription;
  String? mediaResultDescription;
  PerformerRole? performerRole;

  TriageReportBriefEntity({
    required this.encounterId,
    this.encounterStatus,
    this.questionResultDescription,
    this.observationResultDescription,
    this.mediaResultDescription,
    this.performerRole,
    required this.triageResultID,
    this.overallSeverity,
    this.reportTag,
    this.triageResultType,
    this.triageResultSource,
    this.assessmentID,
    this.triageResultStartDate,
    this.triageResultDescription,
    this.isUpdateEnabled,
    this.status,
  });

  @override
  String toString() {
    return 'TriageReportBriefEntity(triageResultID: $triageResultID, overallSeverity: $overallSeverity, reportTag: $reportTag, triageResultType: $triageResultType, triageResultSource: $triageResultSource, assessmentID: $assessmentID, triageResultStartDate: $triageResultStartDate, triageResultDescription: $triageResultDescription, isUpdateEnabled: $isUpdateEnabled, encounterId: $encounterId, encounterStatus: $encounterStatus, questionResultDescription: $questionResultDescription, observationResultDescription: $observationResultDescription, mediaResultDescription: $mediaResultDescription, performerRole: $performerRole, status: $status)';
  }
}
