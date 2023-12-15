
import 'package:equatable/equatable.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/source.dart';

// ignore: must_be_immutable
class UpdateTriageTestModel extends Equatable{

    int ? patientId;
    int ? diagnosticReportId;
    int ? organizationCode;
    List<Performer> ?performer;
    int ? assementCode;
    String ? assessmentVersion;
    DateTime ? issued;
    Source ? source;
    String ? sourceVersion;
    List<IncompleteTestModel>? incompleteSection;
    int ? cummulativeScore;
    Map<String,int> ? score;
    List<PatchImagingSelectionModel> ?imagingSelection;
    List<PatchObservationsModel> ? observations;
    List<PatchImagingSelectionModel> ? questionResponse;

 UpdateTriageTestModel({this.patientId,this.diagnosticReportId,this.organizationCode,this.performer,this.assementCode,this.assessmentVersion,this.issued,this.source,this.sourceVersion,this.incompleteSection,this.cummulativeScore,this.score,this.imagingSelection,this.observations,this.questionResponse});



  @override
  List<Object?> get props => [patientId,diagnosticReportId,organizationCode,performer,assementCode,assessmentVersion,issued,source,sourceVersion,incompleteSection,cummulativeScore,score,imagingSelection,observations,questionResponse];}
  class PatchQuestionResponseModel{
    int ?id;
    Action ? action;
    int ? linkId;
    double ? score;
    List<PatchAnswerModel> ? answers;
  }
  class PatchAnswerModel{
    int ?id;
    Action ? action;
    String ? value;
    double ? answerCode;
    double ? score;
  }

class Performer{
  PerformerRole ?role;
  int ?identifier;
}
class IncompleteTestModel  {
 
   TestType ?testName;
  
}
class PatchObservationsModel{
  int ?id;
   int? identifier;
   Action ? action;
    String? value;
    double? score;
}
class PatchImagingSelectionModel{
  int ?id;
   int? identifier;
   Action ? action;
    String? endpoint;
    String? baseUrl;
    double? score;
}
enum Action{
  ADD,
  REMOVE,
  UPDATE
}
enum TestType {
    QUESTIONNAIRE,
    OBSERVATION,
    IMAGE
}