import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/models/reject_encounter_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/models/submit_form_data_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/models/submit_form_data_response_model.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';

import '../../models/form_data_model.dart';
import '../../models/timeline_model.dart';

abstract class EyeBankRepository {
  Future<Either<EBFailure, List<EncounterBriefModel>>> getAllEncounters(
      GetAllEncountersParams params);
  Future<Either<EBFailure, List<EncounterBriefModel>>> searchEncounter(
      SearchEncounterParams params);
  Future<Either<EBFailure, FormDataModel>> fetchFormByIDAndStage(
    String encounterID,
    AssessmentName stage,
  );
  Future<Either<EBFailure, TimelineModel>> fetchTimelineByID(
      String encounterID);
  Future<Either<EBFailure, SubmitFormDataResponseModel>> saveOrDraftForm(
      String encounterID,
      AssessmentName stage,
      SubmitFormDataRequestModel requestData);
  Future<Either<EBFailure, dynamic>> rejectEncounter(
      RejectEncounterRequestModel requestData);
  Future<Either<EBFailure, dynamic>> fetchFormByStage(AssessmentName stage);
}

class GetAllEncountersParams {
  final AssessmentName encounterStage;
  final String startDate;
  final String endDate;
  final int page;
  final int size;

  GetAllEncountersParams({
    required this.encounterStage,
    required this.startDate,
    required this.endDate,
    required this.page,
    required this.size,
  });
}

class SearchEncounterParams {
  final String mobile;
  final String identifier;
  final IdentifierType identifierType;

  SearchEncounterParams({
    required this.mobile,
    required this.identifier,
    required this.identifierType,
  });
}

enum AssessmentName {
  INTIMATION,
  PRELIMINARY,
}

enum IdentifierType {
  ENCOUNTER,
  SERVICE_REQUEST,
  BDP,
}

enum EncounterStatus {
  COMPLETED,
  PENDING,
  REJECTED,
  ACTIVE,
}

enum Reason { UNSUITABLE }
