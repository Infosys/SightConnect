import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/data/models/vg_profile_model.dart';

abstract class VgAuthenticationRepository {
  Future<Either<Failure, List<VgProfileModel>>> getVgProfile(String mobile);
}
