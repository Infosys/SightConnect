import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';

abstract class CaseRegisterRepository {
  Future<Either<EBFailure, EncounterBriefModel>> getAllEncounters(
    GetAllEncountersParams params,
  );
  Future<Either<EBFailure, EncounterBriefModel>> searchEncounter(
    SearchEncounterParams params,
  );
}

class GetAllEncountersParams {
  final String? encounterStage;
  final String? startDate;
  final String? endDate;
  final int? page;
  final int? size;

  GetAllEncountersParams({
    this.encounterStage,
    this.startDate,
    this.endDate,
    this.page,
    this.size,
  });
}

class SearchEncounterParams {
  final String? mobile;
  final String? identifier;
  final String? identifierType;
  final int? page;
  final int? size;

  SearchEncounterParams({
    this.mobile,
    this.identifier,
    this.identifierType,
    this.page,
    this.size,
  });
}
