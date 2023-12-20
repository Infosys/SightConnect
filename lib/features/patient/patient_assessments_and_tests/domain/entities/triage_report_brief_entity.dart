import 'dart:convert';

import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
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
  RequestPriority? priority;
  String? reportTag;
  String? triageResultType;
  Source? triageResultSource;
  int? assessmentID;
  DateTime? triageResultStartDate;
  String? triageResultDescription;
  bool? isUpdateEnabled;

  String? questionResultDescription;
  String? observationResultDescription;
  String? mediaResultDescription;

  TriageReportBriefEntity({
    this.questionResultDescription,
    this.observationResultDescription,
    this.mediaResultDescription,
    required this.triageResultID,
    this.priority,
    this.reportTag,
    this.triageResultType,
    this.triageResultSource,
    this.assessmentID,
    this.triageResultStartDate,
    this.triageResultDescription,
    this.isUpdateEnabled,
  });
}
