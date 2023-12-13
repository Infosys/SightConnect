import 'package:flutter_miniapp_web_runner/data/datasource/module.dart';
import 'package:flutter_miniapp_web_runner/data/repositories/miniapp_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var miniAppRepositoryProvider = Provider(
  (ref) => MiniAppRepositoryImpl(
    ref.watch(miniAppRemoteSourceProvider),
    ref.read(miniAppLocalSourceProvider),
  ),
);
