import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/exception.dart';

abstract class MiniAppRemoteSource {
  Future<MiniApps> getMiniApps();
  Future<String> downloadMiniApp({
    required String miniAppId,
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
    final response = await _dio.get('/projects/8901/child/ACTIVE/live');
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
  }) async {
    final response =
        await getDownloadLinkAndVersionNumber(miniAppId: miniAppId);
    var downloadLink = response['manifest'] as String;
    final version = response['version'] as String;
    downloadLink = downloadLink.trim().replaceAll('"', '');
    log('downloadLink: $downloadLink');

    final tempDir = await getTemporaryDirectory();
    final savePath = '${tempDir.path}/$miniAppId/$version.zip';
    Dio dio = Dio(
      BaseOptions(
        maxRedirects: 3,
      ),
    );
    try {
      await dio.download(downloadLink, savePath,
          onReceiveProgress: (received, total) {
        if (total != -1) {
          debugPrint("${(received / total * 100).toStringAsFixed(0)}%");
        }
      });

      return savePath;
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Future<Map<String, dynamic>> getDownloadLinkAndVersionNumber({
    required String miniAppId,
  }) async {
    final response =
        await _dio.get('/8901/mini-app/$miniAppId/preview/manifest');

    if (response.statusCode != 200) {
      throw ServerException('Failed to fetch miniapps');
    }
    return {
      'manifest': (response.data['manifest'] as List<dynamic>).first.toString(),
      'version': response.data['version'].toString(),
    };
  }
}
