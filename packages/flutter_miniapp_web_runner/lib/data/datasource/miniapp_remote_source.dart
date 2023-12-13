import 'package:dio/dio.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp.dart';

import '../../core/exception.dart';

abstract class MiniAppRemoteSource {
  Future<MiniApps> getMiniApps();

  Future<String> downloadMiniApp({
    required String miniAppId,
    required String version,
    required String downloadLink,
  });
  Future<Map<String, dynamic>> getDownloadLinkAndVersionNumber({
    required String miniAppId,
  });
}

class MiniAppRemoteSourceImpl extends MiniAppRemoteSource {
  final Dio _dio;

  MiniAppRemoteSourceImpl(this._dio);
  @override
  Future<MiniApps> getMiniApps() async {
    final response = await _dio.get('/projects/14751/child/ACTIVE/live');
    if (response.statusCode != 200) {
      throw ServerException('Failed to fetch miniapps');
    }
    final miniApps =
        (response.data as List).map((e) => MiniApp.fromJson(e)).toList();
    return MiniApps(allMiniApps: miniApps);
  }

  @override
  Future<String> downloadMiniApp({
    required String miniAppId,
    required String version,
    required String downloadLink,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getDownloadLinkAndVersionNumber({
    required String miniAppId,
  }) async {
    final response =
        await _dio.get('/14751/mini-app/$miniAppId/preview/manifest');

    if (response.statusCode != 200) {
      throw ServerException('Failed to fetch miniapps');
    }
    return response.data;
  }
}
