/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/volunteer_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/repositories/volunteer_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var checkVolunteerProvider = FutureProvider.autoDispose((ref) {
  Dio dio = ref.read(dioProvider);
  Future<VolunteerPostModel> checkVolunteer(String id) async {
    final endPoint = "/services/orchestration/api/v2/volunteers/users/$id";
    try {
      var response = await dio.get(endPoint);
      logger.d("check volunteer response : ${response.toString()}");
      return VolunteerPostModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      e.response!.statusCode == 404 ? throw "404" : throw "500";
    } catch (e) {
      rethrow;
    }
  }

  return checkVolunteer(PersistentAuthStateService.authState.userId!);
});

var volunteerRepositoryProvider = Provider<VolunteerRepository>((ref) {
  return VolunteerRepositoryImpl(
    ref.watch(dioProvider),
  );
});

class VolunteerRepositoryImpl implements VolunteerRepository {
  final Dio _dio;
  VolunteerRepositoryImpl(this._dio);
  @override
  Future<void> postVolunteer(VolunteerPostModel volunteerPostModel) async {
    logger.d(" post volunteer details : $volunteerPostModel");
    const endPoint = "/services/orchestration/api/v2/volunteers";
    try {
      var response =
          await _dio.post(endPoint, data: volunteerPostModel.toJson());

      logger.d("post volunteer response : ${response.toString()}");
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> extendVolunteer(
      VolunteerPostModel volunteerPostModel, int volunteerId) async {
    logger.d(" extend volunteer details : $volunteerPostModel");
    final endPoint =
        "/services/orchestration/api/v2/volunteers/extend/${volunteerId}";
    try {
      var response =
          await _dio.put(endPoint, data: volunteerPostModel.toJson());

      logger.d("extend volunteer response : ${response.toString()}");
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
