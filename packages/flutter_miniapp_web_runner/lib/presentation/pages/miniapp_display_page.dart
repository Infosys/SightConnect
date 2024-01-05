import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp_injection_model.dart';
import 'package:flutter_miniapp_web_runner/presentation/server/user_script.dart';

import 'package:logger/logger.dart';
import '../../domain/model/miniapp.dart';

import 'dart:async';

class MiniAppDisplayPage extends StatefulWidget {
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
  State<MiniAppDisplayPage> createState() => _MiniAppDisplayPageState();
}

class _MiniAppDisplayPageState extends State<MiniAppDisplayPage> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewSettings settings = InAppWebViewSettings(
      isInspectable: kDebugMode,
      mediaPlaybackRequiresUserGesture: false,
      allowsInlineMediaPlayback: true,
      iframeAllow: "camera; microphone",
      iframeAllowFullscreen: true);

  PullToRefreshController? pullToRefreshController;
  String url = "";
  double progress = 0;
  Logger logger = Logger();
  final urlController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (kDebugMode) {
      logger.f("TOKEN : ${widget.token}");
    }

    pullToRefreshController = kIsWeb
        ? null
        : PullToRefreshController(
            settings: PullToRefreshSettings(
              color: Colors.blue,
            ),
            onRefresh: () async {
              if (defaultTargetPlatform == TargetPlatform.android) {
                webViewController?.reload();
              } else if (defaultTargetPlatform == TargetPlatform.iOS) {
                webViewController?.loadUrl(
                  urlRequest: URLRequest(
                    url: await webViewController?.getUrl(),
                  ),
                );
              }
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.miniapp.displayName ?? "Service"),
          leading: IconButton(
            onPressed: () {
              widget.onBack?.call();
            },
            icon: const Icon(CupertinoIcons.back),
          ),
          actions: [
            IconButton(
              onPressed: () {
                webViewController?.reload();
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: SafeArea(
          child: Stack(
            children: [
              InAppWebView(
                key: webViewKey,
                initialUrlRequest: URLRequest(
                  url: WebUri(widget.miniapp.sourceurl),
                ),
                initialSettings: settings,
                pullToRefreshController: pullToRefreshController,
                onWebViewCreated: (controller) {
                  webViewController = controller;
                  controller.addJavaScriptHandler(
                    handlerName: 'getPatientRegisterMiniAppModel',
                    callback: (args) {
                      return widget.injectionModel?.toJson();
                    },
                  );
                },
                onLoadStart: (controller, url) {
                  setState(() {
                    this.url = url.toString();
                    urlController.text = this.url;
                  });
                },
                onPermissionRequest: (controller, request) async {
                  return PermissionResponse(
                    resources: request.resources,
                    action: PermissionResponseAction.GRANT,
                  );
                },
                onLoadStop: (controller, url) async {
                  pullToRefreshController?.endRefreshing();
                  setState(() {
                    this.url = url.toString();
                    urlController.text = this.url;
                  });
                },
                onReceivedError: (controller, request, error) {
                  pullToRefreshController?.endRefreshing();
                },
                onProgressChanged: (controller, progress) {
                  if (progress == 100) {
                    pullToRefreshController?.endRefreshing();
                  }
                  setState(() {
                    this.progress = progress / 100;
                    urlController.text = url;
                  });
                },
                onUpdateVisitedHistory: (controller, url, androidIsReload) {
                  setState(() {
                    this.url = url.toString();
                    urlController.text = this.url;
                  });
                },
                onConsoleMessage: (controller, consoleMessage) {
                  logger.d("Console: ${consoleMessage.message}");
                },
                shouldInterceptRequest: (controller, request) async {
                  logger.d("androidShouldInterceptRequest: ${request.url}");
                  final hash = request.url.fragment.trim();
                  final host = request.url.host.trim();
                  logger.d({
                    "header": request.headers,
                    "hash": hash,
                    "host": host,
                    "fragment": request.url.fragment,
                    "path": request.url.path,
                    "query": request.url.query,
                    "scheme": request.url.scheme,
                    "userInfo": request.url.userInfo,
                  });

                  if (widget.token.isNotEmpty &&
                      host == "eyecare4all-dev.infosysapps.com") {
                    request.headers!["Authorization"] =
                        "Bearer ${widget.token}";
                  }

                  if (hash == "failure") {
                    // Navigator.of(context).pop(true);
                    Future.value(WebResourceResponse(data: Uint8List(0)));
                  } else if (hash == "success") {
                    Navigator.of(context).pop(true);
                    Future.value(WebResourceResponse(data: Uint8List(0)));
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
                initialUserScripts: UnmodifiableListView<UserScript>(
                  [
                    UserScript(
                      source: SuperappUserScript.userScript,
                      injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
                    )
                  ],
                ),
              ),
              progress < 1.0
                  ? LinearProgressIndicator(value: progress)
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}




// import 'dart:collection';

// import 'dart:io';
// import 'dart:math';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_archive/flutter_archive.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:flutter_miniapp_web_runner/domain/model/miniapp_injection_model.dart';
// import 'package:flutter_miniapp_web_runner/presentation/server/miniapp_server.dart';
// import 'package:flutter_miniapp_web_runner/presentation/server/user_script.dart';
// import 'package:flutter_miniapp_web_runner/presentation/widgets/web_view_app_bar.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:logger/logger.dart';
// import 'package:path_provider/path_provider.dart';
// import '../../domain/model/miniapp.dart';

// class MiniAppDisplayPage extends StatefulHookConsumerWidget {
//   const MiniAppDisplayPage({
//     required this.miniapp,
//     this.isPermissionRequired = true,
//     this.token = "",
//     this.onBack,
//     this.injectionModel,
//     super.key,
//   });
//   final MiniApp miniapp;
//   final bool isPermissionRequired;
//   final String token;
//   final VoidCallback? onBack;
//   final MiniAppInjectionModel? injectionModel;

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() =>
//       _MiniAppDisplayPageState();
// }

// class _MiniAppDisplayPageState extends ConsumerState<MiniAppDisplayPage>
//     with WidgetsBindingObserver {
//   late InAppWebViewController webViewController;
//   late Future<void> _loadMiniAppFuture = Future.value(null);
//   Logger logger = Logger();
//   int port = 59542;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) async {
//         _loadMiniAppFuture = _startServerAndLoadMiniApp();
//         logger.f("TOKEN : ${widget.token}");
//       },
//     );
//   }

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     if (!kIsWeb) {
//       if (defaultTargetPlatform == TargetPlatform.android) {
//         if (state == AppLifecycleState.paused) {
//           webViewController.pauseTimers();
//         } else {
//           webViewController.resumeTimers();
//         }
//       }
//     }
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<void>(
//       future: _loadMiniAppFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Scaffold(
//             appBar: WebViewAppBar(
//               onBack: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             body: const Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         } else if (snapshot.hasError) {
//           return Scaffold(
//             appBar: WebViewAppBar(
//               onBack: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             body: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text('Error: ${snapshot.error}'),
//                   ElevatedButton(
//                     child: const Text('Retry'),
//                     onPressed: () {
//                       setState(() {
//                         _loadMiniAppFuture = _loadMiniApp();
//                       });
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           );
//         } else {
//           return _buildWebView();
//         }
//       },
//     );
//   }

//   Widget _buildWebView() {
//     return Scaffold(
//       appBar: WebViewAppBar(
//         title: widget.miniapp.displayName,
//         onBack: () async {
//           widget.onBack?.call();
//         },
//       ),
//       body: InAppWebView(
//         initialUrlRequest: URLRequest(
//           url: Uri.parse(
//               "https://eyecare4all-dev.infosysapps.com/patient-registration/"),
//         ),
//         onLoadError: (controller, url, code, message) async {
//           logger.e("Error: $message");
//         },
//         onLoadHttpError: (controller, url, code, message) {
//           logger.e("Error: $message");
//         },
//         onConsoleMessage: (controller, consoleMessage) {
//           logger.d("Console: ${consoleMessage.message}");
//         },
//         androidShouldInterceptRequest: (controller, request) async {
//           logger.d("Request: ${request.url}");
//           final hash = request.url.fragment.trim();
//           final host = request.url.host.trim();
//           if (widget.token.isNotEmpty) {
//             if (host == "eyecare4all-dev.infosysapps.com") {
//               request.headers!["Authorization"] = "Bearer ${widget.token}";
//             }
//             if (hash == "failure") {
//               Navigator.of(context).pop(true);
//               Future.value(WebResourceResponse(data: Uint8List(0)));
//             } else if (hash == "success") {
//               Navigator.of(context).pop(false);
//               Future.value(WebResourceResponse(data: Uint8List(0)));
//             }
//           }

//           return null;
//         },
//         shouldOverrideUrlLoading: (controller, navigationAction) async {
//           final hash = navigationAction.request.url?.fragment.trim();
//           if (hash == "failure" || hash == "success") {
//             return NavigationActionPolicy.CANCEL;
//           } else {
//             return NavigationActionPolicy.ALLOW;
//           }
//         },
//         initialOptions: InAppWebViewGroupOptions(
//           crossPlatform: InAppWebViewOptions(
//             mediaPlaybackRequiresUserGesture: false,
//           ),
//           ios: IOSInAppWebViewOptions(
//             useOnNavigationResponse: true,
//             allowsInlineMediaPlayback: true,
//           ),
//           android: AndroidInAppWebViewOptions(
//             useHybridComposition: true,
//             useShouldInterceptRequest: true,
//           ),
//         ),
//         androidOnPermissionRequest: (controller, origin, resources) async {
//           return PermissionRequestResponse(
//             resources: resources,
//             action: PermissionRequestResponseAction.GRANT,
//           );
//         },
//         initialUserScripts: UnmodifiableListView<UserScript>(
//           [
//             UserScript(
//               source: SuperappUserScript.userScript,
//               injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
//             )
//           ],
//         ),
//         onWebViewCreated: (controller) {
//           webViewController = controller;

//           controller.addJavaScriptHandler(
//             handlerName: 'getPatientRegisterMiniAppModel',
//             callback: (args) {
//               return widget.injectionModel?.toJson();
//             },
//           );
//         },
//       ),
//     );
//   }

//   Future<void> _startServerAndLoadMiniApp() async {
//     final scaffoldMessenger = ScaffoldMessenger.of(context);

//     try {
//       var id = widget.miniapp.id;
//       var version = widget.miniapp.version;
//       var path = widget.miniapp.sourceurl;
//       final miniAppPath = await getMiniAppPath(path, version, id);

//       final miniAppServer = ref.read(localServerProvider);

//       return miniAppServer
//           .startServer(miniAppPath, port)
//           .then((_) => _loadMiniApp());
//     } catch (e) {
//       scaffoldMessenger.showSnackBar(
//         const SnackBar(
//           content: Text("The miniapp is not available at the moment"),
//         ),
//       );
//     }
//   }

//   Future<void> _loadMiniApp() async {
//     final scaffoldMessenger = ScaffoldMessenger.of(context);

//     try {
//       var id = widget.miniapp.id;
//       var version = widget.miniapp.version;
//       var path = widget.miniapp.sourceurl;
//       final miniAppPath = await getMiniAppPath(path, version, id);

//       final miniAppServer = ref.read(localServerProvider);

//       await miniAppServer.startServer(miniAppPath, port);
//     } catch (e) {
//       scaffoldMessenger.showSnackBar(
//         const SnackBar(
//           content: Text("The miniapp is not available at the moment"),
//         ),
//       );
//     }
//   }

//   int getRandomPort() {
//     return Random().nextInt(60000) + 1024;
//   }

//   Future<String> getMiniAppPath(
//     String zipFilePath,
//     String version,
//     String id,
//   ) async {
//     final tempDir = await getTemporaryDirectory();
//     final cachedDir = Directory('${tempDir.path}/$id/$version');

//     if (cachedDir.existsSync()) {
//       return cachedDir.path;
//     } else {
//       final zipPath =
//           await _storeFileToLocalFromAsset(zipFilePath, version, id);
//       return _extractFile(zipPath, version, id);
//     }
//   }

//   Future<String> _extractFile(
//     String zipFilePath,
//     String version,
//     String id,
//   ) async {
//     final zipFile = File(zipFilePath);
//     final tempDir = await getTemporaryDirectory();
//     final destinationDir = Directory('${tempDir.path}/$id/$version');

//     try {
//       ZipFile.extractToDirectory(
//         zipFile: zipFile,
//         destinationDir: destinationDir,
//       );
//       return '${tempDir.path}/$id/$version';
//     } catch (e) {
//       logger.d("Error during extraction: ${e.toString()}");
//       throw Exception("Error during extraction: ${e.toString()}");
//     }
//   }

//   Future<String> _storeFileToLocalFromAsset(
//     String assetZipFilePath,
//     String version,
//     String id,
//   ) async {
//     try {
//       final data = await rootBundle.load(assetZipFilePath);
//       final bytes = data.buffer.asUint8List(
//         data.offsetInBytes,
//         data.lengthInBytes,
//       );
//       final tempDir = await getTemporaryDirectory();
//       final zipFile = File('${tempDir.path}/$id/$version.zip');
//       await zipFile.create(recursive: true);
//       await zipFile.writeAsBytes(bytes);
//       return zipFile.path;
//     } catch (e) {
//       logger.d("Error during store file: ${e.toString()}");
//       throw Exception("Error during store file: ${e.toString()}");
//     }
//   }
// }
