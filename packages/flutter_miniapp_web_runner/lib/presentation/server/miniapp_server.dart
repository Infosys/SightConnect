import 'package:flutter_miniapp_web_runner/core/global_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

var localServerProvider = Provider<MiniAppServer>(
  (ref) => MiniAppServer(ref.read(loggerProvider)),
);

class MiniAppServer {
  final Logger _logger;
  MiniAppServer(this._logger);

  Future<int> startServer(String path, int port) async {
    var handler =
        const Pipeline().addMiddleware(logRequests()).addHandler(_echoRequest);
    var server = await shelf_io.serve(handler, 'localhost', port);
    server.autoCompress = true;
    _logger.d({
      'message': 'Serving at http://${server.address.host}:${server.port}',
      'path': path,
    });
    return server.port;
  }

  Response _echoRequest(Request request) {
    return Response.ok('Request for "${request.url}"');
  }

  Future<int> closeServer(int port) async {
    var server = await shelf_io.serve((Request request) {
      return Response.ok('Request for "${request.url}"');
    }, 'localhost', port);
    await server.close();
    return server.port;
  }
}
