import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:flutter_miniapp_web_runner/core/global_provider.dart';
import 'package:flutter_miniapp_web_runner/flutter_miniapp_web_runner.dart';
import 'package:flutter_miniapp_web_runner/presentation/server/miniapp_server.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

var miniAppDisplayProvider = ChangeNotifierProvider<MiniAppDisplayProvider>(
  (ref) {
    return MiniAppDisplayProvider();
  },
);

class MiniAppDisplayProvider extends ChangeNotifier {}
