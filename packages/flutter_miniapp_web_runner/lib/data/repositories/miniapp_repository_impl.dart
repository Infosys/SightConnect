import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_miniapp_web_runner/core/exception.dart';
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
  Future<Either<Failure, String>> downloadMiniApp({
    required String miniAppId,
  }) async {
    try {
      final zipPath =
          await _remoteMiniappService.downloadMiniApp(miniAppId: miniAppId);
      log("zipPath: $zipPath");
      final path = await _localMiniappService.extractMiniappFromPath(zipPath);
      log("path: $path");
      return Right(path);
    } catch (e) {
      log({
        "message": "Failed to download miniapp",
      }.toString());
      return Left(ServerException(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MiniApps>> getMiniApps() async {
    try {
      final miniApps = await _remoteMiniappService.getMiniApps();
      return Right(miniApps);
    } catch (e) {
      log({
        "message": "Failed to get miniapps",
      }.toString());
      return Left(ServerException(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>>
      getDownloadLinkAndVersionNumber({
    required String miniAppId,
  }) async {
    try {
      final response = await _remoteMiniappService
          .getDownloadLinkAndVersionNumber(miniAppId: miniAppId);
      return Right(response);
    } catch (e) {
      log({
        "message": "Failed to get download link and version number",
      }.toString());
      return Left(ServerException(e.toString()));
    }
  }
}
