import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/services/failure.dart';

abstract class CaseRegisterRepository {
  Future<Either<Failure, dynamic>> getA1Form(dynamic queryData);
  Future<Either<Failure, dynamic>> postA1Form(dynamic queryData);
  Future<Either<Failure, dynamic>> getScreeningFilterData();
  Future<Either<Failure, dynamic>> searchTableData(dynamic queryData);
}
