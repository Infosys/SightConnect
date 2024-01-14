import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';

class SuperAppScannerPage extends StatefulWidget {
  const SuperAppScannerPage({Key? key}) : super(key: key);

  @override
  State<SuperAppScannerPage> createState() => _SuperAppScannerPageState();
}

class _SuperAppScannerPageState extends State<SuperAppScannerPage>
    with WidgetsBindingObserver {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey _qrKey = GlobalKey(debugLabel: 'QR');
  PermissionStatus? _permissionStatus;

  String scanResult = "-1";
  bool isText = false;
  bool isLink = false;
  bool isMiniApp = false;
  bool isUPI = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _requestCameraPermissions();
    });
  }

  Future<void> _requestCameraPermissions() async {
    await _getCameraPermission().then((permissionStatus) {
      setState(() {
        _permissionStatus = permissionStatus;
      });

      if (permissionStatus.isGranted) {
        _onCameraPermissionGranted();
      } else if (permissionStatus.isDenied) {
        _onCameraPermissionDenied();
      } else if (permissionStatus.isPermanentlyDenied) {
        _onCameraPermissionPermanentlyDenied();
      }
    });
  }

  void _onCameraPermissionGranted() {
    controller?.resumeCamera();
  }

  void _onCameraPermissionDenied() {
    controller?.pauseCamera();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return _PermissionRequestAlertDialog(
          title: "Camera Permission",
          description: "Please allow camera permission to scan QR Code",
          positiveButtonLabel: "Allow",
          onPositiveButtonClick: () async {
            Navigator.of(context).pop();
            await Permission.camera.request();
          },
          negativeButtonLabel: "Deny",
          onNegativeButtonClick: () {
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          },
        );
      },
    );
  }

  void _onCameraPermissionPermanentlyDenied() {
    controller?.pauseCamera();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return _PermissionRequestAlertDialog(
          title: "Camera Permission",
          description: "Please allow camera permission to scan QR Code",
          positiveButtonLabel: "App Settings",
          onPositiveButtonClick: () async {
            Navigator.of(context).pop();
            await openAppSettings();
          },
          negativeButtonLabel: "Deny",
          onNegativeButtonClick: () {
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          },
        );
      },
    );
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      _requestCameraPermissions();
    }
  }

  void _onQRViewCreated(QRViewController controller, BuildContext context) {
    setState(() {
      this.controller = controller;
      if (_permissionStatus?.isGranted == true) {
        controller.resumeCamera();
      }
    });

    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });

      _checkData(result!.code, context);
    });
  }

  void _checkData(String? data, BuildContext context) async {
    if (data != null) {
      if (data.trimLeft().startsWith("https")) {
        launchInWebViewWithoutJavaScript(data);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("QR Code Data: $data"),
          ),
        );
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

  Future<PermissionStatus> _getCameraPermission() async {
    return await Permission.camera.status;
  }

  @override
  Widget build(BuildContext context) {
    var scanArea = MediaQuery.of(context).size.width / 1.8;

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        title: const Text("Scanner"),
      ),
      body: Container(
        color: _permissionStatus?.isGranted == true ? null : Colors.black,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Builder(builder: (context) {
              if (_permissionStatus?.isGranted == true) {
                return QRView(
                  formatsAllowed: const [],
                  key: _qrKey,
                  onQRViewCreated: (controller) {
                    _onQRViewCreated(controller, context);
                  },
                  overlay: QrScannerOverlayShape(
                    borderColor: Theme.of(context).primaryColor,
                    borderRadius: 10,
                    borderLength: 30,
                    borderWidth: 10,
                    cutOutSize: scanArea,
                  )
                );
              }
              return const SizedBox.shrink();
            }),
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
            ),
            Builder(builder: (context) {
              if (_permissionStatus?.isGranted == true) return const SizedBox.shrink();

              return Container(
                decoration: ShapeDecoration(
                  shape: QrScannerOverlayShape(
                    borderColor: Theme.of(context).primaryColor,
                    borderRadius: 10,
                    borderLength: 30,
                    borderWidth: 10,
                    cutOutSize: scanArea,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    WidgetsBinding.instance.removeObserver(this);
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

class _PermissionRequestAlertDialog extends StatelessWidget {
  final String _title;
  final String _description;
  final String _positiveButtonLabel;
  final String _negativeButtonLabel;
  final VoidCallback _onPositiveButtonClick;
  final VoidCallback _onNegativeButtonClick;

  const _PermissionRequestAlertDialog({
    required String title,
    required String description,
    required String positiveButtonLabel,
    required String negativeButtonLabel,
    required VoidCallback onPositiveButtonClick,
    required VoidCallback onNegativeButtonClick,
  })  : _title = title,
        _description = description,
        _positiveButtonLabel = positiveButtonLabel,
        _negativeButtonLabel = negativeButtonLabel,
        _onPositiveButtonClick = onPositiveButtonClick,
        _onNegativeButtonClick = onNegativeButtonClick;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        title: Text(
          _title,
          style: applyFiraSansFont(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_description,
                  style: applyFiraSansFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: _onPositiveButtonClick,
                    child: Text(_positiveButtonLabel),
                  ),
                  TextButton(
                    onPressed: _onNegativeButtonClick,
                    child: Text(_negativeButtonLabel),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
