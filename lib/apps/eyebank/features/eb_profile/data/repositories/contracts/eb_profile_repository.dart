import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_profile/data/models/eb_profile_model.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';

abstract class EBProfileRepository {
  Future<Either<EBFailure, EBProfileModel>> getEBProfile(String mobile);
}