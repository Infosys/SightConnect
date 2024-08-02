import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';

abstract class ScreeningRepository {
  Future<Either<Failure, dynamic>> getA2toA5Form(dynamic queryData);
  Future<Either<Failure, dynamic>> postA2toA5Data(dynamic queryData);
  Future<Either<Failure, dynamic>> getPersistedResponse(dynamic queryData);
  Future<Either<Failure, dynamic>> postCloseCase(dynamic queryData);
}
