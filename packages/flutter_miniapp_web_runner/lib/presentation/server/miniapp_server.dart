import 'package:flutter_miniapp_web_runner/core/global_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart' as sh;
import 'package:shelf_static/shelf_static.dart';

var localServerProvider = Provider<MiniAppServer>(
  (ref) => MiniAppServer(ref.read(loggerProvider)),
);

class MiniAppServer {
  final Logger _logger;
  MiniAppServer(this._logger);

  Future<int> startServer(String path, int port) async {
    var pipeline = const shelf.Pipeline();
    final handler = pipeline
        .addHandler(createStaticHandler(path, defaultDocument: 'index.html'));

    return await sh
        .serve(handler, '0.0.0.0', port, shared: true)
        .then((server) {
      _logger.d('Serving at http://${server.address.host}:${server.port}');
      return server.port;
    });
  }

  Future<int> closeServer(int port) async {
    return 0;
  }
}
