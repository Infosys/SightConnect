/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/data/models/ipledge_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../services/failure.dart';

abstract class IPledgeRepository {
  Future<Either<Failure, List<IPledgeModel>>> getIPledgeData(int patientID);
  Future<Either<Failure, void>> saveIPledgeData(IPledgeModel iPledgeModel);
}

final iPledgeRepositoryProvider =
    Provider((ref) => IPledgeRepositoryImpl(ref.watch(dioProvider)));

class IPledgeRepositoryImpl implements IPledgeRepository {
  final Dio _dio;

  IPledgeRepositoryImpl(this._dio);
  @override
  Future<Either<Failure, List<IPledgeModel>>> getIPledgeData(
      int patientID) async {
    try {
      final response = await _dio
          .get('/services/orchestration/api/patients/pledges/$patientID');
      final List<IPledgeModel> iPledgeModel =
          (response.data as List).map((e) => IPledgeModel.fromJson(e)).toList();
      return Right(iPledgeModel);
    } on DioException catch (e) {
      return Left(ServerFailure(
        errorMessage: e.message ?? 'Server Error',
      ));
    } catch (e) {
      return Left(UnknownFailure(
        errorMessage: e.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, void>> saveIPledgeData(
      IPledgeModel iPledgeModel) async {
    try {
      logger.d(iPledgeModel.toJson());
      await _dio.post('/services/orchestration/api/patients/pledges',
          data: iPledgeModel.toJson());
      return const Right(null);
    } on DioException catch (e) {
      return Left(ServerFailure(
        errorMessage: e.message ?? 'Server Error',
      ));
    } catch (e) {
      return Left(UnknownFailure(
        errorMessage: e.toString(),
      ));
    }
  }
}
