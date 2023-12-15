import 'package:dartz/dartz_streaming.dart';
import 'package:equatable/equatable.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';

class TriageReportAndAssementPage extends Equatable {
  final String name;
  final int triageResultID;
  final RequestPriority priority;
  final String reportTag;
  final String triageResultType;
  final Source triageResultSource;
  final int assessmentID;
  final DateTime triageResultStartDate;
  final String triageResultDescription;
  final String doctorName;
  final String doctorId;
  final String doctorTitle;
  final String patientId;
  final DateTime appointementDateTime;
  final List<QuestionResponseBreifModel> questionResponseBreifModel;
  final List<ObservationBreifModel> visualAcuityBreifModel;
  final List<ImageBreifModel> imageBreifModel;

  const TriageReportAndAssementPage({
    required this.name,
    required this.triageResultID,
    required this.priority,
    required this.reportTag,
    required this.triageResultType,
    required this.triageResultSource,
    required this.assessmentID,
    required this.triageResultStartDate,
    required this.triageResultDescription,
    required this.doctorName,
    required this.doctorId,
    required this.doctorTitle,
    required this.patientId,
    required this.appointementDateTime,
    required this.questionResponseBreifModel,
    required this.visualAcuityBreifModel,
    required this.imageBreifModel,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        triageResultID,
        priority,
        reportTag,
        triageResultType,
        triageResultSource,
        assessmentID,
        triageResultStartDate,
        triageResultDescription,
        questionResponseBreifModel,
        visualAcuityBreifModel,
        imageBreifModel,
      ];
}

class QuestionResponseBreifModel {
  final String question;
  final int questionId;
  final String response;
  final int responseId;
  const QuestionResponseBreifModel({
    required this.question,
    required this.questionId,
    required this.response,
    required this.responseId,
  });
}

class ObservationBreifModel {
  final int observationValue;
  final int observationId;
  final int observationValueIdentifier;
  final String bodySite;
  const ObservationBreifModel({
    required this.observationValue,
    required this.observationId,
    required this.observationValueIdentifier,
    required this.bodySite,
  });
}

class ImageBreifModel {
  final String imageUrl;
  final int imageId;
  final int imageIdentifier;
  final String bodySite;
  const ImageBreifModel({
    required this.imageUrl,
    required this.imageId,
    required this.imageIdentifier,
    required this.bodySite,
  });
}
