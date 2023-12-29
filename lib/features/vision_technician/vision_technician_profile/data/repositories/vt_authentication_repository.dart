import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';

abstract class VtAuthenticationRepository {
  Future<Either<Failure, VtProfileModel>> getVtProfile();
}
