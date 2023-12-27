import 'dart:collection';
import 'dart:developer';
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
    required this.miniapp,
    this.isPermissionRequired = false,
    this.token = "",
    this.parentPatientId,
    this.onBack,
    this.mobile,
    super.key,
  });
  final MiniApp miniapp;
  final bool isPermissionRequired;
  final String token;

  final VoidCallback? onBack;
  final String? mobile;
  final String? parentPatientId;
  final String? profileMiniAppModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MiniAppDisplayPageState();
}

class _MiniAppDisplayPageState extends ConsumerState<MiniAppDisplayPage>
    with WidgetsBindingObserver {
  late InAppWebViewController webViewController;
  Logger logger = Logger();
  bool isMiniAppLoaded = false;
  int port = 59542;
  String progressMessage = "";

  String userScript = """
var mobile;
var parentPatientId;
var miniappModel;

class Communication {
  static isFlutterInAppWebViewReady = false;
}
window.addEventListener("flutterInAppWebViewPlatformReady", function (event) {
  Communication.isFlutterInAppWebViewReady = true;
  window.flutter_inappwebview.callHandler("getMobile").then(function (result) {
    mobile = result.mobile;
  });
   window.flutter_inappwebview.callHandler("getParentPatientId").then(function (result) {
    parentPatientId = result.parentPatientId;
  });
   window.flutter_inappwebview.callHandler("getPatientRegisterMiniAppModel").then(function (result) {
    miniappModel = Json.stringify(result);
  });
});


funtion fetchMiniAppModel() {
  return miniappModel;
}

function fetchMobile() {
  return mobile;
} 
function fetchParentPatientId() {
  return parentPatientId;
}

 """;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        logger.f("TOKEN : ${widget.token}");
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
    return !isMiniAppLoaded
        ? Scaffold(
            appBar: WebViewAppBar(
              onBack: () {
                Navigator.of(context).pop();
              },
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          )
        : RefreshIndicator(
            onRefresh: () async {
              await _loadMiniApp();
            },
            child: Scaffold(
              appBar: WebViewAppBar(
                title: widget.miniapp.displayName,
                onBack: () async {
                  if (await webViewController.canGoBack()) {
                    webViewController.goBack();
                  } else {
                    widget.onBack?.call();
                  }
                },
              ),
              body: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse("http://127.0.0.1:$port/"),
                ),
                onLoadError: (controller, url, code, message) async {
                  logger.e("Error: $message");
                  setState(() {
                    progressMessage = "Something went wrong";
                  });
                },
                onLoadHttpError: (controller, url, code, message) {
                  logger.e("Error: $message");
                  setState(() {
                    progressMessage = "Something went wrong";
                  });
                },
                onConsoleMessage: (controller, consoleMessage) {
                  logger.d("Console: ${consoleMessage.message}");
                },
                androidShouldInterceptRequest: (controller, request) async {
                  logger.d("Request: ${request.url}");
                  final hash = request.url.fragment.trim();
                  final host = request.url.host.trim();
                  if (widget.token.isNotEmpty) {
                    if (host == "eyecare4all-dev.infosysapps.com") {
                      request.headers!["Authorization"] =
                          "Bearer ${widget.token}";
                    }
                    if (hash == "failure") {
                      Navigator.of(context).pop(true);
                      Future.value(WebResourceResponse(data: Uint8List(0)));
                    } else if (hash == "success") {
                      Navigator.of(context).pop(false);
                      Future.value(WebResourceResponse(data: Uint8List(0)));
                    }
                  }

                  return null;
                },
                shouldOverrideUrlLoading: (controller, navigationAction) async {
                  final hash = navigationAction.request.url?.fragment.trim();
                  if (hash == "failure" || hash == "success") {
                    return NavigationActionPolicy.CANCEL;
                  } else {
                    return NavigationActionPolicy.ALLOW;
                  }
                },
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
                initialUserScripts: UnmodifiableListView<UserScript>(
                  [
                    UserScript(
                      source: userScript,
                      injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
                    )
                  ],
                ),
                onWebViewCreated: (controller) {
                  webViewController = controller;
                  controller.addJavaScriptHandler(
                      handlerName: 'getMobile',
                      callback: (args) {
                        return {'mobile': widget.mobile};
                      });
                  controller.addJavaScriptHandler(
                      handlerName: 'getParentPatientId',
                      callback: (args) {
                        return {'parentPatientId': widget.parentPatientId};
                      });
                  controller.addJavaScriptHandler(
                      handlerName: 'getPatientRegisterMiniAppModel',
                      callback: (args) {
                        return widget.profileMiniAppModel;
                      });
                },
                onLoadStop: (controller, uri) {
                  // controller.addJavaScriptHandler(
                  //     handlerName: 'handlerFooWithArgs',
                  //     callback: (args) {
                  //       print(args);
                  //       // it will print: [1, true, [bar, 5], {foo: baz}, {bar: bar_value, baz: baz_value}]
                  //     });
                },
              ),
            ),
          );
  }

  Future<void> _loadMiniApp() async {
    setState(
      () {
        isMiniAppLoaded = false;
        progressMessage = "Loading MiniApp";
      },
    );
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    try {
      var id = widget.miniapp.id;
      var version = widget.miniapp.version;
      var path = widget.miniapp.sourceurl;
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
