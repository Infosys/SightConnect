import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/eb_form_intimation_response_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:eye_care_for_all/services/failure.dart';

abstract class CaseRegisterRepository {
  Future<Either<EBFailure, EBFormIntimationResponseModel>> getAIForm({
    required String timelineName,
    String? timelineVersion,
  });

  ///---------------------------------------------------------

  Future<Either<EBFailure, dynamic>> postA1Form(dynamic queryData);
  Future<Either<Failure, dynamic>> getScreeningFilterData();
  Future<Either<Failure, EncounterBriefModel>> searchTableData(
      String donorMobile, String caseId);
}
