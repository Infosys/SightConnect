import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_profile/data/models/eb_profile_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'contracts/eb_profile_repository.dart';

var ebProfileRepositoryProvider =
    Provider((ref) => EBProfileRepositoryImpl(ref.watch(dioProvider)));

class EBProfileRepositoryImpl implements EBProfileRepository {
  final Dio _dio;

  EBProfileRepositoryImpl(this._dio);

  @override
  Future<Either<EBFailure, EBProfileModel>> getEBProfile(String mobile) {
   return EyeBankErrorHandler.handle(() async {
      logger.d(_dio.options.headers.toString());
      if (mobile.startsWith("+91")) {
        mobile = mobile.substring(3);
      }
      final endpoint =
          "/services/orchestration/api/v2/practitioners/filter?officialMobile=$mobile";
      final response = await _dio.get<List<dynamic>>(endpoint);
      if (response.statusCode == 200) {
        logger.d("EB Profile Response: ${response.data}");
        final data =
            response.data?.map((e) => EBProfileModel.fromJson(e)).toList();
        final ebProfileModel = data![0];
        return ebProfileModel;
      } else {
        throw Exception(
            response.statusMessage ?? 'Error in fetchTimelineStages');
      }
    });
  }
}
