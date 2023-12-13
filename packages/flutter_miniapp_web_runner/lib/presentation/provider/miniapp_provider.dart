import 'package:flutter/foundation.dart';
import 'package:flutter_miniapp_web_runner/core/global_provider.dart';
import 'package:flutter_miniapp_web_runner/data/module.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/domain/repositories/miniapp_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

var miniAppProvider = ChangeNotifierProvider(
  (ref) {
    return MiniAppProvider(
      ref.watch(miniAppRepositoryProvider),
      ref.watch(loggerProvider),
    );
  },
);

class MiniAppProvider extends ChangeNotifier {
  final MiniAppRepository _miniAppRepository;
  MiniApps _miniApps = MiniApps();
  final Logger _logger;
  MiniAppProvider(this._miniAppRepository, this._logger) {
    getMiniApps();
  }

  MiniApps get miniApps => _miniApps;

  Future<void> getMiniApps() async {
    final result = await _miniAppRepository.getMiniApps();
    result.fold(
      (error) {
        _logger.e(error);
      },
      (result) {
        _miniApps = result;
        notifyListeners();
      },
    );
  }
}
