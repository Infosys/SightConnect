import 'package:equatable/equatable.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/source.dart';

class TriageResultUserEntity extends Equatable {
  final String name;
  final String image;
  final int id;

  const TriageResultUserEntity({
    required this.name,
    required this.image,
    required this.id,
  });

  @override
  List<Object?> get props => [
        name,
        image,
        id,
      ];
}

class TriageResultBriefCardEntiry extends Equatable {
  final int triageResultID;
  final RequestPriority priority;
  final String reportTag;
  final String triageResultType;
  final Source triageResultSource;
  final int assessmentID;
  final DateTime triageResultStartDate;
  final String triageResultDescription;
  final bool isUpdateEnabled;

  const TriageResultBriefCardEntiry({
    required this.triageResultID,
    required this.priority,
    required this.reportTag,
    required this.triageResultType,
    required this.triageResultSource,
    required this.assessmentID,
    required this.triageResultStartDate,
    required this.triageResultDescription,
    required this.isUpdateEnabled,
  });

  @override
  List<Object?> get props => [
        triageResultID,
        priority,
        reportTag,
        triageResultType,
        triageResultSource,
        assessmentID,
        triageResultStartDate,
        triageResultDescription,
        isUpdateEnabled,
      ];
}
