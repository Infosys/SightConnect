import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_miniapp_web_runner/data/datasource/miniapp_local_source.dart';
import 'package:flutter_miniapp_web_runner/domain/repositories/miniapp_repository.dart';

import '../../domain/model/miniapp.dart';
import '../datasource/miniapp_remote_source.dart';

class MiniAppRepositoryImpl implements MiniAppRepository {
  final MiniAppRemoteSource _remoteMiniappService;
  final MiniAppLocalSource _localMiniappService;

  MiniAppRepositoryImpl(
    this._remoteMiniappService,
    this._localMiniappService,
  );

  @override
  Future<Either<String, String>> downloadMiniApp({
    required String miniAppId,
    required String version,
    required String downloadLink,
  }) {
    // TODO: implement downloadMiniApp
    throw UnimplementedError();
  }

  @override
  Future<Either<String, Response>> getDownloadLinkAndVersionNumber({
    required String miniAppId,
  }) {
    // TODO: implement getDownloadLinkAndVersionNumber
    throw UnimplementedError();
  }

  @override
  Future<Either<String, MiniApps>> getMiniApps() async {
    // TODO: implement getMiniApps
    throw UnimplementedError();
  }
}
