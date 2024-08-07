import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/models/search_case_model.dart';
import 'package:eye_care_for_all/services/failure.dart';

abstract class CaseRegisterRepository {
  Future<Either<Failure, dynamic>> getA1Form(dynamic queryData);
  Future<Either<Failure, dynamic>> postA1Form(dynamic queryData);
  Future<Either<Failure, dynamic>> getScreeningFilterData();
  Future<Either<Failure, SearchCaseModel>> searchTableData(
      String donorMobile, String caseId);
}
