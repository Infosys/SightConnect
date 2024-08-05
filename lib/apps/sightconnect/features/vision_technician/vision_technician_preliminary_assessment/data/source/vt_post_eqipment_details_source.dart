import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../main.dart';
import '../model/post_equipment_observation_dto.dart';

abstract class PostEquipmentDetailsSource {
  Future<Either<Failure, PostEquipmentObservationDto>> postEquipmentDetails(
      PostEquipmentObservationDto request);
}

var postEquipmentDetailsProvider = Provider((ref) {
  return PostEquipmentDetailsSourceImpl(ref.read(dioProvider));
});

class PostEquipmentDetailsSourceImpl implements PostEquipmentDetailsSource {
  final Dio _dio;

  PostEquipmentDetailsSourceImpl(this._dio);
  @override
  Future<Either<Failure, PostEquipmentObservationDto>> postEquipmentDetails(
      PostEquipmentObservationDto request) async {
    logger.d("equipment data before posting : ${request.toJson()}");
    var endpoint = '/services/triage/api/observations/v2/observations';

    try {
      final data = jsonEncode(request.toJson());
      final response = await _dio.post(endpoint, data: data);
      final device = PostEquipmentObservationDto.fromJson(response.data);
      logger.d("equipment data after posting : ${device.toJson()}");
      return Right(device);
    } on DioException catch (e) {
      return Left(ServerFailure(errorMessage: e.error.toString()));
    } catch (e) {
      return Left(UnknownFailure(errorMessage: 'Unknown Error Occurred'));
    }
  }
}
