import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/ipledge/data/models/ipledge_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class IPledgeRepository {
  Future<Either<Failure, List<IPledgeModel>>> getIPledgeData();
  Future<Either<Failure, void>> saveIPledgeData(IPledgeModel iPledgeModel);
}

final iPledgeRepositoryProvider =
    Provider((ref) => IPledgeRepositoryImpl(ref.watch(dioProvider)));

class IPledgeRepositoryImpl implements IPledgeRepository {
  final Dio _dio;

  IPledgeRepositoryImpl(this._dio);
  @override
  Future<Either<Failure, List<IPledgeModel>>> getIPledgeData() async {
    try {
      const url = '/pledge';
      final response = await _dio.get(url);
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
      const url = '/pledge';
      final response = await _dio.post(
        url,
        data: iPledgeModel.toJson(),
      );
      logger.d(response.data);
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
