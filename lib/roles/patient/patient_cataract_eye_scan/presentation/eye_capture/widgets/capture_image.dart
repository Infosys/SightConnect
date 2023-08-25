import 'dart:developer';
import 'package:camera/camera.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/models/enums/eye.dart';
import '../../provider/eye_scan_provider.dart';
import 'success_capture_alert.dart';

class CaptureImage extends StatefulWidget {
  const CaptureImage({Key? key, this.eye, this.cameraController})
      : super(key: key);
  final Eye? eye;
  final CameraController? cameraController;
  static const String routeName = "/captureImage";
  //capture argument from named route

  @override
  State<CaptureImage> createState() => _CaptureImageState();
}

class _CaptureImageState extends State<CaptureImage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() async {
    await widget.cameraController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Clippy Retinal Scan (${widget.eye.toString().split('.')[1].split('_')[0]})",
            style: TextStyle(
              fontStyle: GoogleFonts.firaSans().fontStyle,
              fontSize: 16,
            ),
          ),
          // flexibleSpace: ClipRect(
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
          //     child: Container(
          //       color: Colors.transparent,

          //     ),
          //   ),
          // ),
        ),
        body: Consumer(
          builder: (context, ref, child) => 
          Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CameraPreview(
                  widget.cameraController!,
                ),
                // : Image.file(
                //     File(context.read<EyeScanProvider>().leftEye!.path)),
                // Tooltip(
                //   message: "${widget.eye.toString().split('.')[1].split('_')[0]} Eye",
                // ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: FloatingActionButton(
                    backgroundColor: Colors.grey,
                    child: const Icon(Icons.camera),
                    onPressed: () => _takePicture(ref),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  _takePicture(WidgetRef ref) async {
    if (widget.cameraController == null ||
        !widget.cameraController!.value.isInitialized) {
      showInSnackBar('Error: select a camera first.');
      return null;
    }

    if (widget.cameraController!.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      log("capture started");
      await widget.cameraController!.takePicture();
      ref.watch(patientEyeScanProvider)
          .setEye(await widget.cameraController!.takePicture(), widget.eye!);
      log("capture ended");
      Future.delayed(const Duration(seconds: 3), () {
        widget.cameraController!.dispose();
      });

      successCaptureAlert(context, widget.eye!);
    } on CameraException catch (e) {
      _showCameraException(e);
      // Navigator.pop(context);
      return null;
    }
  }

  void _showCameraException(CameraException e) {
    _logError(e.code, e.description);
    showInSnackBar('Error: ${e.code}\n${e.description}');
  }

  void showInSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _logError(String code, String? message) {
    if (message != null) {
      print('Error: $code\nError Message: $message');
    } else {
      print('Error: $code');
    }
  }
}
