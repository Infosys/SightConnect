import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_miniapp_web_runner/core/miniapp_endpoints.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

var loggerProvider = Provider<Logger>(
  (ref) => Logger(),
);

var pathProvider = FutureProvider<Directory>(
  (ref) async => await getTemporaryDirectory(),
);

var dioProvider = Provider<Dio>(
  (ref) => Dio(
    BaseOptions(
      baseUrl: MiniAppEndPoints.baseUrl,
    ),
  ),
);
