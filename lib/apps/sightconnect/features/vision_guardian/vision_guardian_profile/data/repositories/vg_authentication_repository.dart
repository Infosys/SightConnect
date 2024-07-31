import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_profile/data/models/vg_profile_model.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';

abstract class VgAuthenticationRepository {
  Future<Either<Failure, List<VgProfileModel>>> getVgProfile(String mobile);
}
