/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/modals/camera_capture_alert.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_cataract_eye_scan/presentation/provider/eye_scan_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../shared/pages/app_camera_page.dart';
import '../../../../../common/triage/domain/models/enums/triage_enums.dart';
import '../../data/local/fake_data_source_cataract.dart';

class PatientEyeCapturePage extends HookConsumerWidget {
  static const String routeName = "/patientEyeCapturePage";
  const PatientEyeCapturePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isLoading = useState(false);
    final loc = context.loc!;
    var model = ref.watch(patientEyeScanProvider);

    if (isLoading.value) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }
    return AppCameraPage(
      onCapture: (image) async {
        if (image == null) {
          Fluttertoast.showToast(msg: loc.imageNotCapturedToastMessage);
          return;
        }
        switch (geteye(model.selectedEye)) {
          case TriageEyeType.RIGHT:
            await _handleRightEyeCapture(model, isLoading, image, context);
            break;
          case TriageEyeType.LEFT:
            await _handleLeftEyeCapture(ref, isLoading, image, context);
            break;
          default:
            break;
        }
      },
      topHeading: _eyeLocalization(geteye(model.selectedEye), context),
      eye: geteye(model.selectedEye),
    );
  }
}

Future<void> _handleRightEyeCapture(
  EyeScanProvider model,
  ValueNotifier<bool> isLoading,
  XFile image,
  BuildContext context,
) async {
  isLoading.value = true;
  model.setRightEyeImage(image);
  Fluttertoast.showToast(
    msg: "Right Eye Captured",
  );
  isLoading.value = false;
}

Future<void> _handleLeftEyeCapture(
  WidgetRef ref,
  ValueNotifier<bool> isLoading,
  XFile image,
  BuildContext context,
) async {
  isLoading.value = true;
  ref.read(patientEyeScanProvider).setLeftEyeImage(image);
  cameraCaptureAlert(context, Eye.LEFT_EYE);
  Fluttertoast.showToast(
    msg: "Left Eye Captured",
  );
  isLoading.value = false;
}

TriageEyeType geteye(Eye eye) {
  return eye == Eye.RIGHT_EYE ? TriageEyeType.RIGHT : TriageEyeType.LEFT;
}

String _eyeLocalization(TriageEyeType eye, BuildContext context) {
  return switch (eye) {
    TriageEyeType.LEFT => context.loc!.leftEyeString,
    TriageEyeType.RIGHT => context.loc!.rightEyeString,
    TriageEyeType.BOTH => context.loc!.bothEyesString,
    _ => "",
  };
}

//  List<CameraDescription> _cameras = [];
  // ResolutionPreset defaultResolution = ResolutionPreset.high;
  // bool isFirstEye = false;
  // bool isLoading = false;
  // bool isProcessing = false;
  // bool _canProcess = false;
  // bool _isBusy = false;
  // Size _canvasSize = Size.zero;
  // bool _isEyeValid = false;
  // bool _eyesInsideTheBox = false;
  // CustomPaint? _customPaint;
  // final CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
  // double _eyeWidthRatio = 0.0;
  // List<Point<double>> _translatedEyeContours = [];
  // Map<String, double> _eyeCorners = {};
  // late CameraController? cameraController;
  // final FaceMeshDetector _meshDetector = FaceMeshDetector(
  //   option: FaceMeshDetectorOptions.faceMesh,
  // );
  // TriageEyeType _currentEye = TriageEyeType.RIGHT;

  // bool showFocusCircle = false;
  // double x = 0;
  // double y = 0;

  // @override
  // void initState() {
  //   super.initState();
  //   _init();
  // }

  // _init() async {
  //   await _intializeCamera();
  //   if (!cameraController!.value.isInitialized && context.mounted) {
  //     showCameraNotFound(context);
  //   }
  // }

  // _intializeCamera() async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   if (_cameras.isEmpty) {
  //     _cameras = await availableCameras();
  //   }
  //   _canProcess = true;
  //   _isBusy = false;

  //   logger.d('EyeDetectorView _startLiveFeed');
  //   cameraController = CameraController(
  //     _cameras.firstWhere(
  //       (element) => element.lensDirection == _cameraLensDirection,
  //     ),
  //     defaultResolution,
  //     enableAudio: false,
  //     imageFormatGroup: Platform.isAndroid
  //         ? ImageFormatGroup.nv21
  //         : ImageFormatGroup.bgra8888,
  //   );
  //   // final cameras = await availableCameras();
  //   // cameraDescription = cameras.firstWhere(
  //   //     (element) => element.lensDirection == CameraLensDirection.back);

  //   // cameraController = CameraController(
  //   //   cameraDescription!,
  //   //   ResolutionPreset.max,
  //   // );
  //   // var isInitialized = ref.watch(patientEyeScanProvider).isInitialized;

  //   await cameraController!.initialize().then(
  //     (value) {
  //       logger.d("Camera Initialized");
  //       if (!mounted) {
  //         return;
  //       }
  //       cameraController!.startImageStream(_processCameraImage);
  //     },
  //   );

  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  // void _processCameraImage(CameraImage image) {
  //   final CameraDescription camera = cameraController!.description;
  //   final DeviceOrientation orientation =
  //       cameraController!.value.deviceOrientation;
  //   final InputImage? inputImage = EyeDetectorService.inputImageFromCameraImage(
  //     image: image,
  //     camera: camera,
  //     deviceOrientation: orientation,
  //   );
  //   if (inputImage == null) return;

  //   _processImage(inputImage);
  // }

  // Future<void> _processImage(InputImage inputImage) async {
  //   if (!_canProcess) return;
  //   if (_isBusy) return;
  //   _isBusy = true;
  //   setState(() {});
  //   final meshes = await _meshDetector.processImage(inputImage);

  //   // Measurement of the Fixed Center Eye Scanner Box
  //   final boxWidth = _canvasSize.width * (3 / 5);
  //   final boxHeight = _canvasSize.height * (1 / 5);
  //   final boxCenter = Point(
  //     _canvasSize.width * (1 / 2),
  //     _canvasSize.height * (1 / 2),
  //   );

  //   if (meshes.isNotEmpty) {
  //     final mesh = meshes[0];
  //     final leftEyeContour = mesh.contours[FaceMeshContourType.leftEye];
  //     final rightEyeContour = mesh.contours[FaceMeshContourType.rightEye];

  //     if (leftEyeContour != null && rightEyeContour != null) {
  //       final List<FaceMeshPoint> eyePoints =
  //           EyeDetectorService.isLeftEye(_currentEye)
  //               ? leftEyeContour
  //               : rightEyeContour;
  //       // Translate Eye Points
  //       _translatedEyeContours = eyePoints.map(
  //         (contour) {
  //           return EyeDetectorService.translator(
  //             contour,
  //             inputImage,
  //             _canvasSize,
  //             _cameraLensDirection,
  //           );
  //         },
  //       ).toList();

  //       // Check if Eyes are inside the box
  //       _eyesInsideTheBox = EyeDetectorService.areEyeContoursInsideTheBox(
  //         _translatedEyeContours,
  //         boxCenter,
  //         boxWidth,
  //         boxHeight,
  //       );
  //       // Get the corner point of the eyes which is needed to calculate eye width
  //       _eyeCorners = EyeDetectorService.getEyeCorners(_translatedEyeContours);
  //       // Calculate the eyeWidth ratio to the boxWidth
  //       _eyeWidthRatio = EyeDetectorService.getEyeWidthRatio(
  //         _eyeCorners,
  //         boxWidth,
  //         boxHeight,
  //       );
  //       // Validity of the eye
  //       _isEyeValid = _eyesInsideTheBox &&
  //           EyeDetectorService.areEyesCloseEnough(_eyeWidthRatio);
  //     } else {
  //       _translatedEyeContours = [];
  //     }
  //   } else {
  //     _translatedEyeContours = [];
  //   }

  //   if (inputImage.metadata?.size != null &&
  //       inputImage.metadata?.rotation != null) {
  //     final painter = EyeDetectorPainter(
  //       _translatedEyeContours,
  //       boxCenter,
  //       boxWidth,
  //       boxHeight,
  //       _isEyeValid,
  //       (size) {
  //         _canvasSize = size;
  //       },
  //     );
  //     _customPaint = CustomPaint(painter: painter);
  //   } else {
  //     _customPaint = null;
  //   }

  //   _isBusy = false;
  //   if (mounted) {
  //     setState(() {});
  //   }
  // }

  // void releaseResources() {
  //   logger.d("ReleaseResources Called");
  //   if (cameraController != null) {
  //     cameraController!.stopImageStream();
  //     // cameraController!.dispose();
  //     cameraController = null;
  //   }
  // }

  // @override
  // Widget build(BuildContext context) {
  //   var eye = ref.watch(patientEyeScanProvider).getEyeText();
  //   ref.watch(patientEyeScanProvider).selectedEye == Eye.RIGHT_EYE
  //       ? _currentEye = TriageEyeType.RIGHT
  //       : _currentEye = TriageEyeType.LEFT;
  //   return PopScope(
  //     canPop: false,
  //     onPopInvoked: (didPop) async {
  //       final navigator = Navigator.of(context);
  //       if (didPop) return;
  //       setState(() {
  //         isLoading = true;
  //       });
  //       navigator.popUntil((route) => route.isFirst);
  //       releaseResources();
  //     },
  //     child: Scaffold(
  //       appBar: CustomAppbar(
  //         title: Text("Eye Scanner - $eye"),
  //         leadingIcon: IconButton(
  //           icon: const Icon(Icons.arrow_back),
  //           onPressed: () {
  //             final navigator = Navigator.of(context);
  //             isLoading = true;
  //             navigator.popUntil((route) => route.isFirst);
  //             releaseResources();
  //           },
  //         ),
  //       ),
  //       body: isLoading
  //           ? Container(
  //               color: AppColor.white,
  //               child: const Center(
  //                 child: CircularProgressIndicator.adaptive(),
  //               ),
  //             )
  //           : Consumer(
  //               builder: (context, ref, child) => Center(
  //                 child: GestureDetector(
  //                   onTapDown: (details) {
  //                     _onTap(details);
  //                   },
  //                   child: Stack(
  //                     alignment: Alignment.bottomCenter,
  //                     children: [
  //                       if (ref.watch(patientEyeScanProvider).rightEyeImage ==
  //                               null ||
  //                           ref.watch(patientEyeScanProvider).leftEyeImage ==
  //                               null)
  //                         CameraPreview(
  //                           cameraController!,
  //                           child: _customPaint ?? Container(),
  //                         ),
  //                       Padding(
  //                         padding: const EdgeInsets.all(AppSize.kl),
  //                         child: FloatingActionButton(
  //                           backgroundColor: AppColor.grey,
  //                           onPressed: () {
  //                             if (!_isEyeValid) {
  //                               return;
  //                             }
  //                             _takePicture();
  //                           },
  //                           child: const Icon(Icons.camera),
  //                         ),
  //                       ),
  //                       if (isProcessing)
  //                         Positioned.fill(
  //                           child: Container(
  //                             color: Colors.black.withOpacity(0.5),
  //                             child: const Center(
  //                               child: CircularProgressIndicator.adaptive(),
  //                             ),
  //                           ),
  //                         ),
  //                       Visibility(
  //                         visible: !_isEyeValid,
  //                         child: Padding(
  //                           padding: const EdgeInsets.symmetric(
  //                             horizontal: 8.0,
  //                             vertical: 88.0,
  //                           ),
  //                           child: Container(
  //                             width: AppSize.width(context) * 0.8,
  //                             decoration: BoxDecoration(
  //                               color: AppColor.black.withOpacity(0.8),
  //                               borderRadius: BorderRadius.circular(10),
  //                             ),
  //                             padding: const EdgeInsets.all(8),
  //                             child: Text(
  //                               context.loc!.eyeBoxText,
  //                               textAlign: TextAlign.center,
  //                               style: applyRobotoFont(
  //                                 fontSize: 16,
  //                                 color: AppColor.white,
  //                                 fontWeight: FontWeight.w500,
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ),
  //     ),
  //   );
  // }

  // Future<void> _onTap(TapDownDetails details) async {
  //   if (cameraController!.value.isInitialized) {
  //     setState(() {
  //       showFocusCircle = true;
  //       x = details.localPosition.dx;
  //       y = details.localPosition.dy;
  //     });

  //     double fullWidth = MediaQuery.of(context).size.width;
  //     double cameraHeight = fullWidth * cameraController!.value.aspectRatio;

  //     double xp = x / fullWidth;
  //     double yp = y / cameraHeight;

  //     Offset point = Offset(xp, yp);
  //     logger.d("the point is : $point");

  //     await cameraController!.setFocusPoint(point);

  //     setState(() {
  //       Future.delayed(const Duration(seconds: 2)).whenComplete(() {
  //         setState(() {
  //           showFocusCircle = false;
  //         });
  //       });
  //     });
  //   }
  // }

  // _takePicture() {
  //   if (!cameraController!.value.isInitialized) {
  //     Fluttertoast.showToast(msg: "Error: select a camera first.");

  //     return null;
  //   }
  //   if (cameraController!.value.isTakingPicture) {
  //     return null;
  //   }
  //   setState(() {
  //     // Set the flag to indicate that the picture is being processed
  //     isProcessing = true;
  //   });
  //   try {
  //     cameraController!.takePicture().then((image) {
  //       var eye = ref.read(patientEyeScanProvider).selectedEye;
  //       if (eye == Eye.RIGHT_EYE) {
  //         ref.read(patientEyeScanProvider).setRightEyeImage(image);
  //       } else {
  //         ref.read(patientEyeScanProvider).setLeftEyeImage(image);
  //       }
  //       cameraCaptureAlert(context, eye);
  //       setState(() {
  //         isLoading = true;
  //       });
  //       releaseResources();
  //     });
  //   } on CameraException catch (e) {
  //     if (kDebugMode) {
  //       logger.d({
  //         "CameraException": e,
  //       });
  //     }
  //     Fluttertoast.showToast(msg: "$e");

  //     return null;
  //   }
  // }

