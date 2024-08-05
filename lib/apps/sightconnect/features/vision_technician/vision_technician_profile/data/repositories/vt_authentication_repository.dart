import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/services/failure.dart';

abstract class VtAuthenticationRepository {
  Future<Either<Failure, List<VtProfileModel>>> getVtProfile(String mobile);
}
