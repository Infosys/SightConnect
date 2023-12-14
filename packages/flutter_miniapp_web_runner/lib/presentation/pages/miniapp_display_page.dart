import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_miniapp_web_runner/core/global_provider.dart';
import 'package:flutter_miniapp_web_runner/flutter_miniapp_web_runner.dart';
import 'package:flutter_miniapp_web_runner/presentation/provider/miniapp_display_provider.dart';
import 'package:flutter_miniapp_web_runner/presentation/server/miniapp_server.dart';
import 'package:flutter_miniapp_web_runner/presentation/widgets/web_view_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class MiniAppDisplayPage extends StatefulHookConsumerWidget {
  const MiniAppDisplayPage({
    this.miniapp,
    this.isPermissionRequired = false,
    super.key,
  });
  final MiniApp? miniapp;
  final bool isPermissionRequired;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MiniAppDisplayPageState();
}

class _MiniAppDisplayPageState extends ConsumerState<MiniAppDisplayPage> {
  late InAppWebViewController _webViewController;
  bool? isMiniAppLoaded;
  int port = 8081;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await _loadMiniApp();
      },
    );
  }

  _loadMiniApp() async {
    var scaffoldMessenger = ScaffoldMessenger.of(context);
    if (widget.miniapp == null) {
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text("MiniApp not available"),
        ),
      );
      return;
    }
    setState(() {
      isMiniAppLoaded = false;
    });

    try {
      var id = widget.miniapp!.id;
      var version = "1";
      var path = widget.miniapp!.sourceurl;
      final zipPath = await _storeFileToLocalFromAsset(path, version, id);
      log("Zip path: $zipPath");
      final extractedPath = await _extractFile(zipPath, version, id);
      log("Extracted path: $extractedPath");
      final miniAppServer = ref.read(localServerProvider);
      await miniAppServer.startServer(extractedPath, port);
      setState(() {
        isMiniAppLoaded = true;
      });
    } catch (e) {
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text("Error loading MiniApp"),
        ),
      );
      setState(() {
        isMiniAppLoaded = null;
      });
      return;
    }
  }

  Future<String> _extractFile(
    String zipFilePath,
    String version,
    String id,
  ) async {
    final zipFile = File(zipFilePath);
    final tempDir = await getTemporaryDirectory();
    final destinationDir = Directory('${tempDir.path}/$id/$version');

    try {
      ZipFile.extractToDirectory(
        zipFile: zipFile,
        destinationDir: destinationDir,
      );
      return '${tempDir.path}/$id/$version';
    } catch (e) {
      log("Error during extraction: ${e.toString()}");
      throw Exception("Error during extraction: ${e.toString()}");
    }
  }

  Future<String> _storeFileToLocalFromAsset(
    String assetZipFilePath,
    String version,
    String id,
  ) {
    try {
      return rootBundle.load(assetZipFilePath).then(
        (data) async {
          final bytes = data.buffer.asUint8List(
            data.offsetInBytes,
            data.lengthInBytes,
          );
          final tempDir = await getTemporaryDirectory();
          final zipFile = File('${tempDir.path}/$id/$version.zip');
          await zipFile.create(recursive: true);
          await zipFile.writeAsBytes(bytes);
          return zipFile.path;
        },
      );
    } catch (e) {
      log("Error during store file: ${e.toString()}");
      throw Exception("Error during store file: ${e.toString()}");
    }
  }

  Future<void> closeMiniApp() async {
    var navigator = Navigator.of(context);
    await ref.read(localServerProvider).closeServer(port);
    setState(() {});
    navigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    if (isMiniAppLoaded == null) {
      return Scaffold(
        appBar: WebViewAppBar(
          onBack: () {
            closeMiniApp();
          },
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else if (!isMiniAppLoaded!) {
      return Scaffold(
        appBar: WebViewAppBar(
          onBack: () {
            closeMiniApp();
          },
        ),
        body: Center(
          child: Text(
            "Downloading...",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      );
    } else {
      return PopScope(
        onPopInvoked: (value) {
          closeMiniApp();
        },
        child: SafeArea(
          child: Scaffold(
            appBar: WebViewAppBar(
              title: widget.miniapp!.displayName,
              onBack: () {
                closeMiniApp();
              },
            ),
            body: InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse("http://127.0.0.1:$port/"),
              ),
              initialOptions: InAppWebViewGroupOptions(
                ios: IOSInAppWebViewOptions(
                  useOnNavigationResponse: true,
                  allowsInlineMediaPlayback: true,
                ),
                android: AndroidInAppWebViewOptions(
                  useHybridComposition: true,
                  useShouldInterceptRequest: true,
                ),
              ),
              onWebViewCreated: (controller) {
                _webViewController = controller;
              },
            ),
          ),
        ),
      );
    }
  }
}
