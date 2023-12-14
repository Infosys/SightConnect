import 'dart:io';

import 'package:flutter_archive/flutter_archive.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

abstract class MiniAppLocalSource {
  Future<String> saveMiniApp(String path);
}

class MiniAppLocalSourceImpl extends MiniAppLocalSource {
  final Logger _logger;
  MiniAppLocalSourceImpl(this._logger);

  @override
  Future<String> saveMiniApp(String path) async {
    final directory = await getTemporaryDirectory();
    final zipFile = File(path);
    final miniAppId = zipFile.parent.parent.path.split('/').last;
    final version = zipFile.parent.path.split('/').last;
    final miniAppPath = '${directory.path}/$miniAppId/$version';
    try {
      ZipFile.extractToDirectory(
        zipFile: zipFile,
        destinationDir: Directory(miniAppPath),
      );
    } catch (e) {
      _logger.e(e);
      return Future.error(e);
    }
    return Future.value(miniAppPath);
  }
}
