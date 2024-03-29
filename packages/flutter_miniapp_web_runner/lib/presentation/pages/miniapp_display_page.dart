import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:flutter_miniapp_web_runner/presentation/server/user_script.dart';

import 'package:logger/logger.dart';

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
    useShouldOverrideUrlLoading: true,
    mediaPlaybackRequiresUserGesture: false,
    allowsInlineMediaPlayback: true,
    iframeAllow: "camera; microphone",
    iframeAllowFullscreen: true,
  );

  PullToRefreshController? pullToRefreshController;
  String url = "";
  double progress = 0;
  Logger logger = Logger();
  final urlController = TextEditingController();

  @override
  void initState() {
    super.initState();

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
      onPopInvoked: (value) {
        if (value) {
          return;
        }
        widget.onBack?.call();
      },
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
                  logger.e(error);
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
                  return null;
                },
                shouldOverrideUrlLoading: (controller, navigationAction) async {
                  var uri = navigationAction.request.url!;
                  if (![
                    "https",
                  ].contains(uri.scheme)) {
                    return NavigationActionPolicy.CANCEL;
                  }

                  final path = navigationAction.request.url?.path.trim();
                  logger.d("shouldOverrideUrlLoading: $path");

                  if (path == "/failure") {
                    // Navigator.of(context).pop(false);
                    return NavigationActionPolicy.CANCEL;
                  } else if (path == "/success") {
                    Navigator.of(context).pop(true);
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
