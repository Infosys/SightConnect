import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/consent_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/repositories/consent_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var consentRepositoryProvider = Provider<ConsentRepository>((ref) {
  return ConsentRepositoryImpl(ref.read(dioProvider));
});

class ConsentRepositoryImpl implements ConsentRepository {
  final Dio _dio;
  ConsentRepositoryImpl(this._dio);

  @override
  Future<ConsentModel> getConsent({String type = "PRIVACY_POLICY"}) async {
    final endPoint = "/services/orchestration/api/v2/consent?type=$type";
    try {
      log("current token is : ${_dio.options.headers["Authorization"]}");
      log("token from persistent : ${PersistentAuthStateService.authState.accessToken}");
      log("dio headers are : ${_dio.options.headers}");
      final response = await _dio.get(endPoint);
      return ConsentModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }

  @override
  Future<void> setConsent(ConsentModel consent) async {
    const endPoint = "/services/orchestration/api/v2/consent";
    try {
      logger.d(consent.toJson());
      final response = await _dio.post(endPoint, data: consent.toJson());
      if (response.statusCode == 200) {
        return;
      }
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e(e);
      rethrow;
    }
  }
}
