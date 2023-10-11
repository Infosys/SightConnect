import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/models/failure.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../contracts/triage_repository.dart';
import '../models/triage.dart';

var triageRepositoryProvider = Provider<TriageRepository>(
  (ref) => TriageRepositoryImpl(ref.read(dioProvider)),
);

class TriageRepositoryImpl implements TriageRepository {
  Dio dio;
  TriageRepositoryImpl(this.dio);

  @override
  Future<Either<Failure, Triage>> getTriage() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Triage>> saveTriage({required Triage triage}) {
    // TODO: implement saveTriage
    throw UnimplementedError();
  }
}
