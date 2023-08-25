import 'dart:developer';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:eye_care_for_all/shared/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/models/User_details_model.dart';
import '../../data/models/enums/eye.dart';
import 'widgets/camera_not_found.dart';
import 'widgets/success_capture_alert.dart';

class DetectCamera extends StatefulWidget {
  const DetectCamera({Key? key, this.eye, this.userDetails}) : super(key: key);
  final Eye? eye;
  static const String routeName = "/captureImage";
  final UserDetails? userDetails;

  @override
  State<DetectCamera> createState() => _DetectCameraState();
}

class _DetectCameraState extends State<DetectCamera> {
  bool _isLoading = false;
  late CameraController _cameraController;

  @override
  void initState() {
    log("test triggered 2");
    log(widget.userDetails.toString());

    // _initCamera();
    helperFunction();
    super.initState();
  }

  helperFunction() async {
    await _initCamera();

    if (!_cameraController.value.isInitialized) {
      showCameraNotFound(context);
    }
  }

  @override
  void dispose() async {
    await _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Eye Scanner (${widget.eye.toString().split('.')[1].split('_')[0].capitalize()})",
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
        body: _isLoading
            ? Container(
                color: Colors.white,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : Consumer(
              builder: (context, ref, child) => Center(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      widget.eye == Eye.RIGHT_EYE
                          ? ref.watch(patientEyeScanProvider).rightEye == null
                              ? CameraPreview(
                                  _cameraController,
                                )
                              : Image.file(File(ref.watch(patientEyeScanProvider)
                                  .rightEye!
                                  .path))
                          : ref.watch(patientEyeScanProvider).leftEye == null
                              ? CameraPreview(
                                  _cameraController,
                                )
                              : Image.file(File(ref.watch(patientEyeScanProvider)
                                  .leftEye!
                                  .path)),
            
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

  _initCamera() async {
    setState(() => _isLoading = true);
    final cameras = await availableCameras();
    for (var camera in cameras) {
      log(camera.toString());
    }
    final cam;
    if (cameras.length > 1) {
      cam = cameras.firstWhere(
          (element) => element.lensDirection == CameraLensDirection.back);
    } else {
      cam = cameras.first;
    }

    _cameraController = CameraController(cam, ResolutionPreset.max);
    await _cameraController.initialize();

    setState(() => _isLoading = false);
  }

  _takePicture(WidgetRef ref) async {
    if (!_cameraController.value.isInitialized) {
      showInSnackBar('Error: select a camera first.');
      return null;
    }

    if (_cameraController.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      log("capture started");
      XFile image = await _cameraController.takePicture();
      ref.watch(patientEyeScanProvider).setEye(image, widget.eye!);
      log("capture ended");
      if (widget.eye == Eye.RIGHT_EYE) {
        ref.watch(patientEyeScanProvider).setUserDetails();
      }
      if (widget.eye == Eye.LEFT_EYE) {
        Future.delayed(Duration(seconds: 1), dispose);
      }

      successCaptureAlert(context, widget.eye!);

      // if (widget.eye == Eye.LEFT_EYE) {}
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
