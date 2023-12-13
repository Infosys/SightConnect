import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_miniapp_web_runner/core/global_provider.dart';
import 'package:flutter_miniapp_web_runner/flutter_miniapp_web_runner.dart';
import 'package:flutter_miniapp_web_runner/presentation/server/miniapp_server.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

var miniAppDisplayProvider = ChangeNotifierProvider<MiniAppDisplayProvider>(
  (ref) {
    return MiniAppDisplayProvider(
      ref.read(loggerProvider),
      ref.watch(localServerProvider),
      ref.watch(miniAppRepositoryProvider),
    );
  },
);

class MiniAppDisplayProvider extends ChangeNotifier {
  bool _isMiniAppLoaded = false;
  int _port = 8081;
  double _progress = 0.0;
  MiniApp? _miniApp;
  final MiniAppServer? _miniAppServer;
  final MiniAppRepository _miniAppRepository;
  final Logger _logger;
  MiniAppDisplayProvider(
    this._logger,
    this._miniAppServer,
    this._miniAppRepository,
  );
  bool get isMiniAppLoaded => _isMiniAppLoaded;
  MiniApp? get miniApp => _miniApp;
  int get port => _port;
  double get progress => _progress * 100;

  Future<void> startMiniApp(MiniApp? miniapp) async {
    if (miniapp == null) {
      return;
    }
    _miniApp = miniapp;
    notifyListeners();
    await loadMiniApp();
  }

  Future<void> loadMiniApp() async {
    _isMiniAppLoaded = false;
    notifyListeners();
    _delay(20.0);
    final response = await _miniAppRepository.downloadMiniApp(
      miniAppId: _miniApp!.id.toString(),
    );

    response.fold(
      (error) {
        _logger.e(error);
      },
      (path) {
        _logger.d({
          'message': 'MiniApp loaded',
          'path': path,
        });
        _delay(80.0);
        _miniAppServer!
            .startServer(path, _randomValidPort())
            .then((value) => _port = value);
      },
    );

    _isMiniAppLoaded = true;
    notifyListeners();
  }

  Future<void> closeMiniApp() async {
    await _miniAppServer!.closeServer(_port);
    notifyListeners();
  }

  int _randomValidPort() {
    final random = Random();
    const min = 1024;
    const max = 65535;
    return min + random.nextInt(max - min);
  }

  Future<void> _delay(double percentage) async {
    while (_progress < percentage) {
      _progress += 0.1;
      notifyListeners();
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}
