import 'package:flutter_miniapp_web_runner/core/global_provider.dart';
import 'package:flutter_miniapp_web_runner/data/datasource/miniapp_local_source.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

var miniAppLocalSourceProvider = Provider(
  (ref) => MiniAppLocalSourceImpl(
    ref.read(loggerProvider),
  ),
);
