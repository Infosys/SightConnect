import 'package:dartz/dartz.dart';
import 'package:flutter_miniapp_web_runner/core/exception.dart';
import 'package:flutter_miniapp_web_runner/data/datasource/miniapp_local_source.dart';
import 'package:flutter_miniapp_web_runner/domain/repositories/miniapp_repository.dart';

class MiniAppRepositoryImpl implements MiniAppRepository {
  final MiniAppLocalSource _localMiniappService;

  MiniAppRepositoryImpl(
    this._localMiniappService,
  );

  @override
  Future<Either<Failure, String>> saveMiniApp(String path) {
    // TODO: implement saveMiniApp
    throw UnimplementedError();
  }
}
