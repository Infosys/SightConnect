import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/models/vision_center_model.dart';
import 'package:eye_care_for_all/core/repositories/vision_center_repository.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionCenterRepositoryProvider = Provider<VisionCenterRepository>((ref) {
  return VisionCenterRepositoryImpl(ref.read(dioProvider));
});

class VisionCenterRepositoryImpl extends VisionCenterRepository {
  final Dio dio;
  VisionCenterRepositoryImpl(this.dio);
  @override
  Future<Either<Failure, VisionCenterModel>> getVisionCenters() {
    // TODO: implement getVisionCenters
    throw UnimplementedError();
  }
}
