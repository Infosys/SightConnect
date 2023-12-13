import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../model/miniapp.dart';

abstract class MiniAppRepository {
  Future<Either<String, MiniApps>> getMiniApps();
  Future<Either<String, Response>> getDownloadLinkAndVersionNumber({
    required String miniAppId,
  });
  Future<Either<String, String>> downloadMiniApp({
    required String miniAppId,
    required String version,
    required String downloadLink,
  });
}
