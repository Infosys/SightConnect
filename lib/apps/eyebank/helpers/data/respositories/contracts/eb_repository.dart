import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_submit_form_data_request_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_timeline_config_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/submit_form_data_response_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';

import '../../models/eb_timeline_model.dart';

abstract class EyeBankRepository {
  Future<Either<EBFailure, List<EncounterBriefModel>>> getAllEncounters(
    GetAllEncountersParams params,
  );
  Future<Either<EBFailure, List<EncounterBriefModel>>> searchEncounter(
    SearchEncounterParams params,
  );

  Future<Either<EBFailure, List<EBTimelineModel>>> fetchTimelineByID(
    String encounterID,
  );

  Future<Either<EBFailure, EbTimelineConfigModel>> fetchTimelineStages(
      String timelineName, String timelineVersion);
  Future<Either<EBFailure, SubmitFormDataResponseModel>> saveIntimationForm(
    String stageName,
    String stageVersion,
    EBSubmitFormDataRequestModel requestData,
  );
}

class GetAllEncountersParams {
  final EBStageName encounterStage;
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
