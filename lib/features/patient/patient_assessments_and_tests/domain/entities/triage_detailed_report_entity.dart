import 'package:equatable/equatable.dart';

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
  final String priority;
  final String reportTag;
  final String patientName;
  final String patientImage;
  final String triageResultType;
  final String triageResultSource;
  final String assessmentID;
  final String triageResultStartDate;
  final String triageResultDescription;
  final bool isUpdateEnabled;

  const TriageResultBriefCardEntiry({
    required this.triageResultID,
    required this.priority,
    required this.reportTag,
    required this.patientName,
    required this.patientImage,
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
        patientName,
        patientImage,
        triageResultType,
        triageResultSource,
        assessmentID,
        triageResultStartDate,
        triageResultDescription,
        isUpdateEnabled,
      ];
}
