import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_miniapp_web_runner/presentation/server/miniapp_server.dart';
import 'package:flutter_miniapp_web_runner/presentation/widgets/web_view_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import '../../domain/model/miniapp.dart';

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

class _MiniAppDisplayPageState extends ConsumerState<MiniAppDisplayPage>
    with WidgetsBindingObserver {
  late InAppWebViewController webViewController;
  Logger logger = Logger();
  bool? isMiniAppLoaded = false;
  int port = 8081;
  String progressMessage = "";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await _loadMiniApp();
      },
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!kIsWeb) {
      if (defaultTargetPlatform == TargetPlatform.android) {
        if (state == AppLifecycleState.paused) {
          webViewController.pauseTimers();
        } else {
          webViewController.resumeTimers();
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.miniapp == null || isMiniAppLoaded == false) {
      return Scaffold(
        appBar: WebViewAppBar(
          onBack: () {
            Navigator.of(context).pop();
          },
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return RefreshIndicator(
        onRefresh: () async {
          await _loadMiniApp();
        },
        child: PopScope(
          onPopInvoked: (value) async {},
          child: Scaffold(
            appBar: WebViewAppBar(
              title: widget.miniapp!.displayName,
              onBack: () {
                Navigator.of(context).pop();
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
                webViewController = controller;
              },
            ),
          ),
        ),
      );
    }
  }

  Future<void> _loadMiniApp() async {
    setState(() {
      isMiniAppLoaded = false;
      progressMessage = "Loading MiniApp";
    });
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    if (widget.miniapp == null) {
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text("MiniApp not available"),
        ),
      );
      return;
    }

    try {
      var id = widget.miniapp!.id;
      var version = widget.miniapp!.version;
      var path = widget.miniapp!.sourceurl;
      final zipPath = await _storeFileToLocalFromAsset(path, version, id);
      setState(() {
        progressMessage = "Extracting MiniApp";
      });
      final extractedPath = await _extractFile(zipPath, version, id);
      setState(() {
        progressMessage = "Starting MiniApp";
      });
      final miniAppServer = ref.read(localServerProvider);
      await miniAppServer.startServer(extractedPath, port);
      setState(() {
        isMiniAppLoaded = true;
      });
    } catch (e) {
      scaffoldMessenger.showSnackBar(
        const SnackBar(
          content: Text("Something went wrong"),
        ),
      );
      setState(() {
        isMiniAppLoaded = null;
        progressMessage = "Something went wrong";
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
      logger.d("Error during extraction: ${e.toString()}");
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
      logger.d("Error during store file: ${e.toString()}");
      throw Exception("Error during store file: ${e.toString()}");
    }
  }
}
