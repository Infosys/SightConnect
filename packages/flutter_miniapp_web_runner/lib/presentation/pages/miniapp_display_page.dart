import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp.dart';
import 'package:flutter_miniapp_web_runner/presentation/provider/miniapp_display_provider.dart';
import 'package:flutter_miniapp_web_runner/presentation/widgets/web_view_app_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

class MiniAppDisplayPage extends StatefulHookConsumerWidget {
  const MiniAppDisplayPage({this.miniApp, super.key});

  final MiniApp? miniApp;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MiniAppDisplayPageState();
}

class _MiniAppDisplayPageState extends ConsumerState<MiniAppDisplayPage> {
  late InAppWebViewController _webViewController;
  final List<Permission> permissions = [
    Permission.accessMediaLocation,
    Permission.camera
  ];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var nav = Navigator.of(context);
      var scaffoldMessenger = ScaffoldMessenger.of(context);
      bool isGranted = await requestPermissions();
      if (isGranted) {
        ref.read(miniAppDisplayProvider).startMiniApp(widget.miniApp);
      } else {
        nav.pop();
        scaffoldMessenger.showSnackBar(
          const SnackBar(
            content: Text("Permission denied"),
          ),
        );
      }
    });
  }

  Future<bool> requestPermissions() async {
    Map<Permission, PermissionStatus> statuses = await permissions.request();
    bool isGranted = true;
    statuses.forEach((key, value) {
      if (value != PermissionStatus.granted) {
        isGranted = false;
      }
    });
    return isGranted;
  }

  @override
  Widget build(BuildContext context) {
    var model = ref.watch(miniAppDisplayProvider);
    if (model.miniApp == null) {
      return const Scaffold(
        appBar: WebViewAppBar(),
        body: Center(
          child: Text("MiniApp not available"),
        ),
      );
    } else if (!model.isMiniAppLoaded) {
      return const Scaffold(
        appBar: WebViewAppBar(),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          appBar: WebViewAppBar(
            title: widget.miniApp?.name,
          ),
          body: InAppWebView(
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
            onLoadStart: (controller, url) {},
          ),
        ),
      );
    }
  }
}
