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
}

class TriageReportBriefEntity {
   int   triageResultID;
   RequestPriority  ? priority;
   String ? reportTag;
   String ? triageResultType;
   Source ? triageResultSource;
   int ? assessmentID;
   DateTime ? triageResultStartDate;
   String ? triageResultDescription;
   bool ? isUpdateEnabled;
   
   String ?  questionResultDescription;
     String ? observationResultDescription;
     String ? mediaResultDescription;

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
