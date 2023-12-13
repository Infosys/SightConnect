import 'package:flutter/foundation.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

var miniAppDisplayProvider = ChangeNotifierProvider<MiniAppDisplayProvider>(
  (ref) {
    return MiniAppDisplayProvider();
  },
);

class MiniAppDisplayProvider extends ChangeNotifier {
  final bool _isMiniAppLoaded = false;
  late MiniApp? _miniApp;
  MiniAppDisplayProvider();
  bool get isMiniAppLoaded => _isMiniAppLoaded;
  MiniApp? get miniApp => _miniApp;

  Future<void> startMiniApp(MiniApp? miniapp) async {
    _miniApp = miniapp;
    notifyListeners();
  }
}
