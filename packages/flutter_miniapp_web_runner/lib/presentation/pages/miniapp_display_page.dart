import 'dart:collection';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp_injection_model.dart';
import 'package:flutter_miniapp_web_runner/presentation/server/miniapp_server.dart';
import 'package:flutter_miniapp_web_runner/presentation/widgets/web_view_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../domain/model/miniapp.dart';

class MiniAppDisplayPage extends StatefulHookConsumerWidget {
  const MiniAppDisplayPage({
    required this.miniapp,
    this.isPermissionRequired = true,
    this.token = "",
    this.onBack,
    this.injectionModel,
    super.key,
  });
  final MiniApp miniapp;
  final bool isPermissionRequired;
  final String token;
  final VoidCallback? onBack;
  final MiniAppInjectionModel? injectionModel;

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

var miniappModel;
class Communication {
  static isFlutterInAppWebViewReady = false;
}
window.addEventListener("flutterInAppWebViewPlatformReady", function (event) {
  Communication.isFlutterInAppWebViewReady = true;
  console.log("isFlutterInAppWebViewReady: " + Communication.isFlutterInAppWebViewReady);
 window.flutter_inappwebview.callHandler("getPatientRegisterMiniAppModel").then(function (result) {
 console.log(JSON.stringify(result));
 miniappModel = JSON.stringify(result);
  
  });
});

function fetchInjectionData() {
  return miniappModel;
}
 """;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        logger.f("TOKEN : ${widget.token}");
        final navigator = Navigator.of(context);

        if (widget.isPermissionRequired) {
          final cameraStatus = await Permission.camera.request();
          final microphoneStatus = await Permission.microphone.request();
          if (cameraStatus.isDenied || microphoneStatus.isDenied) {
            navigator.pop();
            return;
          }
        }

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
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
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
                // initialUrlRequest: URLRequest(
                //   url: Uri.parse(
                //       "https://eyecare4all-dev.infosysapps.com/patient-registration/"),
                // ),
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
                  crossPlatform: InAppWebViewOptions(
                    mediaPlaybackRequiresUserGesture: false,
                  ),
                  ios: IOSInAppWebViewOptions(
                    useOnNavigationResponse: true,
                    allowsInlineMediaPlayback: true,
                  ),
                  android: AndroidInAppWebViewOptions(
                    useHybridComposition: true,
                    useShouldInterceptRequest: true,
                  ),
                ),
                androidOnPermissionRequest:
                    (controller, origin, resources) async {
                  return PermissionRequestResponse(
                    resources: resources,
                    action: PermissionRequestResponseAction.GRANT,
                  );
                },
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
                      handlerName: 'getPatientRegisterMiniAppModel',
                      callback: (args) {
                        return widget.injectionModel?.toJson();
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
