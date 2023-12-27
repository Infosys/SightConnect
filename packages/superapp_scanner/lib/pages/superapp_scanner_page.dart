import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class SuperAppScannerPage extends StatefulWidget {
  const SuperAppScannerPage({Key? key}) : super(key: key);

  @override
  State<SuperAppScannerPage> createState() => _SuperAppScannerPageState();
}

class _SuperAppScannerPageState extends State<SuperAppScannerPage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');

  String scanResult = "-1";
  bool isText = false;
  bool isLink = false;
  bool isMiniApp = false;
  bool isUPI = false;

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
      controller.resumeCamera();
    });

    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });

      _checkData(result!.code); // check for the type of url
    });
  }

  void _checkData(String? data) async {
    if (data != null) {
      if (data.trimLeft().startsWith("http") ||
          data.trimLeft().startsWith("https")) {
        launchInWebViewWithoutJavaScript(data);
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Invalid QR Code"),
        ),
      );
      Navigator.of(context).pop();
    }
  }

  void _onPermissionSet(
    BuildContext context,
    QRViewController ctrl,
    bool p,
  ) async {
    var scaffold = ScaffoldMessenger.of(context);
    var navigator = Navigator.of(context);
    PermissionStatus status = await _getCameraPermission();
    if (status.isDenied) {
      await Permission.camera.request();
    }
    if (status.isPermanentlyDenied) {
      scaffold.showSnackBar(
        const SnackBar(
          content: Text("Please Provide camera access through Settings"),
        ),
      );
      navigator.pop();
    }
    if (status.isDenied) {
      scaffold.showSnackBar(
        const SnackBar(
          content: Text("Camera access is denied"),
        ),
      );
      navigator.pop();
    }
  }

  Future<PermissionStatus> _getCameraPermission() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      final result = await Permission.camera.request();
      return result;
    } else {
      return status;
    }
  }

  @override
  Widget build(BuildContext context) {
    var scanArea = MediaQuery.of(context).size.width / 1.8;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Scanner"),
      ),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          QRView(
            formatsAllowed: const [],
            key: _qrKey,
            onQRViewCreated: _onQRViewCreated,
            overlay: QrScannerOverlayShape(
              borderColor: Theme.of(context).primaryColor,
              borderRadius: 10,
              borderLength: 30,
              borderWidth: 10,
              cutOutSize: scanArea,
            ),
            onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
          ),
          Positioned(
            top: 80,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).primaryColor.withOpacity(0.3),
              ),
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () async {
                      await controller?.toggleFlash();
                      setState(() {});
                    },
                    icon: FutureBuilder<bool?>(
                      future: controller?.getFlashStatus(),
                      builder: (context, snapshot) {
                        if (snapshot.data != null) {
                          return Icon(
                            snapshot.data! ? Icons.flash_on : Icons.flash_off,
                            color: Colors.white,
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      await controller?.flipCamera();
                      setState(() {});
                    },
                    icon: FutureBuilder(
                      future: controller?.getCameraInfo(),
                      builder: (context, snapshot) {
                        if (snapshot.data != null) {
                          return const Icon(
                            Icons.switch_camera,
                            color: Colors.white,
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  Future<void> launchInWebViewWithoutJavaScript(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: false),
    )) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> launchOut(Uri uri) async {
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}
