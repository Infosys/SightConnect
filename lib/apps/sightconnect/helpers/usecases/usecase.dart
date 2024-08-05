import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/services/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
