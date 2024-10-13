/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/referral/data/models/referral_response_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/referral/data/repository/referral_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final referralRepositoryImplProvider = Provider((ref) {
  final dio = ref.read(dioProvider);
  return ReferralRepositoryImpl(dio);
});

class ReferralRepositoryImpl implements ReferralRepository {
  Dio dio;

  ReferralRepositoryImpl(this.dio);

  @override
  Future<ReferralCodeModel> getReferral() async {
    try {
      const String url =
          "/services/orchestration/api/v2/referrals/referral-code";
      final response = await dio.get(url);
      return ReferralCodeModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e(e);
      throw ServerFailure(errorMessage: "Failed to generate the code");
    }
  }

  @override
  Future<ReferralRequestModel> submitReferral(String code) async {
    try {
      const String url = "/services/orchestration/api/v2/referrals";
      final response = await dio.post(
        url,
        queryParameters: {
          "referral-code": code,
        },
      );
      return ReferralRequestModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e(e);
      throw ServerFailure(
          errorMessage:
              "The referral code you entered is invalid. Please try again.");
    }
  }

  @override
  Future<ReferralRequestModel?> getMyReferrer() async {
    try {
      const String url = "/services/orchestration/api/v2/referrals/my-referrer";
      final response = await dio.get(url);
      logger.d({
        "getMyReferrer": response.data,
      });
      if (response.data != null && response.data.isEmpty) {
        return null;
      }
      return ReferralRequestModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e(e);
      throw ServerFailure(errorMessage: "Failed to get the referrer");
    }
  }

  @override
  Future<MyReferralModel?> getMyReferral({bool statistics = false}) async {
    try {
      const String url =
          "/services/orchestration/api/v2/referrals/my-referrals";
      final response = await dio.get<Map<String, dynamic>>(
        url,
        queryParameters: {
          "statistics": statistics,
        },
      );
      logger.d({
        "getMyReferral": response.data,
      });
      if (response.data == null || response.data!.isEmpty) {
        return null;
      }

      return MyReferralModel.fromJson(response.data!);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e(e);
      throw ServerFailure(errorMessage: "Failed to get the referrer");
    }
  }
}
