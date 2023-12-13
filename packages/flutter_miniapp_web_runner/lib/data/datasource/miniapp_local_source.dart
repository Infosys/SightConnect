import 'dart:io';

import 'package:logger/logger.dart';

abstract class MiniAppLocalSource {
  Future<String> saveMiniApp(
    String miniAppId,
    String version,
    String miniAppPath,
  );
  Future<String> getMiniAppPath(String miniAppId, String version);
  Future<String> getMiniAppVersion(String miniAppId);
}

class MiniAppLocalSourceImpl extends MiniAppLocalSource {
  final Directory? _directory;
  final Logger _logger;
  MiniAppLocalSourceImpl(this._directory, this._logger);
  @override
  Future<String> getMiniAppPath(String miniAppId, String version) {
    // TODO: implement getMiniAppPath
    throw UnimplementedError();
  }

  @override
  Future<String> getMiniAppVersion(String miniAppId) {
    // TODO: implement getMiniAppVersion
    throw UnimplementedError();
  }

  @override
  Future<String> saveMiniApp(
      String miniAppId, String version, String miniAppPath) {
    // TODO: implement saveMiniApp
    throw UnimplementedError();
  }
}
