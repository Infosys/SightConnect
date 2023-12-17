import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/models/vision_center_model.dart';
import 'package:eye_care_for_all/core/services/failure.dart';

abstract class VisionCenterRepository {
  Future<Either<Failure, VisionCenterModel>> getVisionCenters();
}
