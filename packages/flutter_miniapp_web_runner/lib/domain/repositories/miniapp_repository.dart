import 'package:dartz/dartz.dart';
import 'package:flutter_miniapp_web_runner/core/exception.dart';

import '../model/miniapp.dart';

abstract class MiniAppRepository {
  Future<Either<Failure, MiniApps>> getMiniApps();

  Future<Either<Failure, String>> downloadMiniApp({
    required String miniAppId,
  });
  Future<Either<Failure, Map<String, dynamic>>>
      getDownloadLinkAndVersionNumber({
    required String miniAppId,
  });
}
