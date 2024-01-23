// // import 'dart:io';
// // import 'dart:math';
// // import 'package:camera/camera.dart';
// // import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// // import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
// // import 'package:hooks_riverpod/hooks_riverpod.dart';

// // import '../../../../../../main.dart';
// // import '../../../domain/models/enums/triage_enums.dart';
// // import '../provider/eye_detector_service.dart';
// // import '../widgets/eye_detector_painter.dart';

// // enum EyeDetectorMode {
// //   left,
// //   right,
// // }

// // class EyeDetectorView extends ConsumerStatefulWidget {
// //   const EyeDetectorView({
// //     Key? key,
// //   }) : super(key: key);

// //   @override
// //   ConsumerState<EyeDetectorView> createState() => _EyeDetectorViewState();
// // }

// // class _EyeDetectorViewState extends ConsumerState<EyeDetectorView>
// //     with WidgetsBindingObserver {
// //   List<CameraDescription> _cameras = [];
// //   CustomPaint? _customPaint;
// //   late CameraController _controller;
// //   CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
// //   final FaceMeshDetector _meshDetector = FaceMeshDetector(
// //     option: FaceMeshDetectorOptions.faceMesh,
// //   );
// //   // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
// //   final ResolutionPreset defaultResolution = ResolutionPreset.high;
// //   bool _canProcess = false;
// //   bool _isBusy = false;
// //   Size _canvasSize = Size.zero;
// //   // bool _changingCameraLens = false;
// //   TriageEyeType _currentEye = TriageEyeType.RIGHT;
// //   bool _isEyeValid = false;
// //   bool _eyesInsideTheBox = false;
// //   double _eyeWidthRatio = 0.0;
// //   List<Point<double>> _translatedEyeContours = [];
// //   Map<String, double> _eyeCorners = {};

// //   @override
// //   void initState() {
// //     logger.d("Init Method Called");
// //     super.initState();
// //     WidgetsBinding.instance.addObserver(this);
// //     _initializeCamera();
// //   }

// //   void _initializeCamera() async {
// //     logger.d("Initialize Camera Method Called");

// //     final NavigatorState navigator = Navigator.of(context);
// //     try {
// //       if (_cameras.isEmpty) {
// //         _cameras = await availableCameras();
// //       }
// //       _canProcess = true;
// //       await _startLiveFeed();
// //     } catch (e) {
// //       logger.d("Error initializing camera: $e");
// //       navigator.pop();
// //     }
// //   }

// //   Future<void> _startLiveFeed() async {
// //     logger.d("Start Live Feed Method Called");
// //     _controller = CameraController(
// //       _cameras.firstWhere(
// //         (element) => element.lensDirection == _cameraLensDirection,
// //       ),
// //       defaultResolution,
// //       enableAudio: false,
// //       imageFormatGroup: Platform.isAndroid
// //           ? ImageFormatGroup.nv21
// //           : ImageFormatGroup.bgra8888,
// //     );

// //     await _controller.initialize().then(
// //       (value) {
// //         if (!mounted) {
// //           return;
// //         }
// //         _controller.startImageStream(_processCameraImage);
// //       },
// //     );
// //     if (mounted) {
// //       setState(() {});
// //     }
// //   }

// //   void _processCameraImage(CameraImage image) {
// //     logger.d("Process Camera Image Method Called");
// //     final CameraDescription camera = _cameras.firstWhere(
// //       (element) => element.lensDirection == _cameraLensDirection,
// //     );
// //     final DeviceOrientation orientation = _controller.value.deviceOrientation;
// //     final InputImage? inputImage = EyeDetectorService.inputImageFromCameraImage(
// //       image: image,
// //       camera: camera,
// //       deviceOrientation: orientation,
// //     );
// //     if (inputImage == null) return;

// //     _processImage(inputImage);
// //   }

// //   // Function to process the frames as per our requirements
// //   Future<void> _processImage(InputImage inputImage) async {
// //     logger.d("Process Image Method Called");
// //     if (!_canProcess) return;
// //     if (_isBusy) return;
// //     _isBusy = true;
// //     setState(() {});
// //     final meshes = await _meshDetector.processImage(inputImage);

// //     // Measurement of the Fixed Center Eye Scanner Box
// //     final boxWidth = _canvasSize.width * (3 / 5);
// //     final boxHeight = _canvasSize.height * (1 / 5);
// //     final boxCenter = Point(
// //       _canvasSize.width * (1 / 2),
// //       _canvasSize.height * (3 / 10),
// //     );

// //     if (meshes.isNotEmpty) {
// //       final mesh = meshes[0];
// //       final leftEyeContour = mesh.contours[FaceMeshContourType.leftEye];
// //       final rightEyeContour = mesh.contours[FaceMeshContourType.rightEye];

// //       if (leftEyeContour != null && rightEyeContour != null) {
// //         final List<FaceMeshPoint> eyePoints =
// //             EyeDetectorService.isLeftEye(_currentEye)
// //                 ? leftEyeContour
// //                 : rightEyeContour;

// //         // Translate Eye Points
// //         _translatedEyeContours = eyePoints.map(
// //           (contour) {
// //             return EyeDetectorService.translator(
// //               contour,
// //               inputImage,
// //               _canvasSize,
// //               _cameraLensDirection,
// //             );
// //           },
// //         ).toList();

// //         // Check if Eyes are inside the box
// //         _eyesInsideTheBox = EyeDetectorService.areEyesInsideTheBox(
// //           _translatedEyeContours,
// //           boxCenter,
// //           boxWidth,
// //           boxHeight,
// //         );

// //         // Get the corner point of the eyes which is needed to calculate eye width
// //         _eyeCorners = EyeDetectorService.getEyeCorners(_translatedEyeContours);

// //         // Calculate the eyeWidth ratio to the boxWidth
// //         _eyeWidthRatio = EyeDetectorService.getEyeWidthRatio(
// //           _eyeCorners,
// //           boxWidth,
// //           boxHeight,
// //         );

// //         // Validity of the eye
// //         _isEyeValid = _eyesInsideTheBox &&
// //             EyeDetectorService.areEyesCloseEnough(_eyeWidthRatio);
// //       } else {
// //         _translatedEyeContours = [];
// //       }
// //     } else {
// //       _translatedEyeContours = [];
// //     }

// //     if (inputImage.metadata?.size != null &&
// //         inputImage.metadata?.rotation != null) {
// //       final painter = EyeDetectorPainter(
// //         _translatedEyeContours,
// //         boxCenter,
// //         boxWidth,
// //         boxHeight,
// //         _isEyeValid,
// //         (size) {
// //           _canvasSize = size;
// //         },
// //       );
// //       _customPaint = CustomPaint(painter: painter);
// //     } else {
// //       _customPaint = null;
// //     }

// //     _isBusy = false;
// //     if (mounted) {
// //       setState(() {});
// //     }
// //   }

// //   @override
// //   void didChangeAppLifecycleState(AppLifecycleState state) {
// //     if (!(_controller.value.isInitialized)) return;
// //     if (state == AppLifecycleState.inactive) {
// //       debugPrint('EyeDetectorView AppLifecycleState.inactive');
// //       _stopLiveFeed();
// //     } else if (state == AppLifecycleState.resumed) {
// //       debugPrint('EyeDetectorView AppLifecycleState.resumed');
// //       _initializeCamera();
// //     } else if (state == AppLifecycleState.paused) {
// //       debugPrint('EyeDetectorView AppLifecycleState.paused');
// //       _stopLiveFeed();
// //     } else if (state == AppLifecycleState.detached) {
// //       debugPrint('EyeDetectorView AppLifecycleState.detached');
// //       _stopLiveFeed();
// //     } else if (state == AppLifecycleState.hidden) {
// //       debugPrint('EyeDetectorView AppLifecycleState.hidden');
// //       _stopLiveFeed();
// //     }
// //   }

// //   @override
// //   void dispose() {
// //    logger.d("Dispose Method Called");
// //     WidgetsBinding.instance.removeObserver(this);
// //     _stopLiveFeed();
// //     super.dispose();
// //   }

// //   Future<void> _stopLiveFeed() async {
// //     logger.d("Stop Live Feed Method Called");
// //     try {
// //       _canProcess = false;
// //       _meshDetector.close();
// //       if (_controller.value.isInitialized &&
// //           _controller.value.isStreamingImages) {
// //         await _controller.stopImageStream();
// //         await _controller.dispose();
// //       }
// //     } catch (e) {
// //       logger.d("Error stopping live feed: $e");
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     var model = ref.watch(triageEyeScanProvider);
// //     return Scaffold(body: _liveFeedBody());
// //   }

// //   Widget _liveFeedBody() {
// //     if (_cameras.isEmpty) return Container();
// //     if (_controller.value.isInitialized == false) return Container();
// //     return Container(
// //       color: Colors.black,
// //       child: Stack(
// //         fit: StackFit.expand,
// //         children: <Widget>[
// //           Center(
// //             child: CameraPreview(
// //               _controller,
// //               child: _customPaint,
// //             ),
// //             // child: _changingCameraLens
// //             //     ? const Center(
// //             //         child: Text('Changing camera lens'),
// //             //       )
// //             //     : CameraPreview(
// //             //         _controller,
// //             //         child: _customPaint,
// //             //       ),
// //           ),
// //           _cameraButton(),
// //           _backButton(),
// //           _switchLiveCameraToggle(),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _cameraButton() => SafeArea(
// //         child: Padding(
// //           padding: const EdgeInsets.only(bottom: 12),
// //           child: Align(
// //             alignment: Alignment.bottomCenter,
// //             child: Visibility(
// //               visible: _isEyeValid,
// //               child: SizedBox(
// //                 height: 50.0,
// //                 width: 50.0,
// //                 child: FloatingActionButton(
// //                   heroTag: Object(),
// //                   onPressed: takePicture,
// //                   backgroundColor: Colors.white,
// //                   child: const Icon(
// //                     Icons.camera_alt_outlined,
// //                     size: 20,
// //                     color: Colors.black,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //       );

// //   Future<void> takePicture() async {
// //     final navigator = Navigator.of(context);
// //     if (!_controller.value.isInitialized) {
// //       return;
// //     }
// //     if (_controller.value.isTakingPicture) {
// //       return;
// //     }
// //     try {
// //       await _controller.setFlashMode(FlashMode.off);
// //       XFile picture = await _controller.takePicture();
// //       const isValid = true;

// //       if (isValid) {
// //         if (_currentEye == TriageEyeType.LEFT) {
// //           debugPrint("Image Path : ${picture.path}");
// //           setState(() {
// //             _currentEye = TriageEyeType.LEFT;
// //           });
// //         } else if (_currentEye == TriageEyeType.RIGHT) {
// //           debugPrint("Image Path : ${picture.path}");

// //           navigator.pop();
// //         }
// //       }
// //     } on CameraException catch (e) {
// //       debugPrint('Error occurred while taking picture: $e');
// //     }
// //   }

// //   Widget _backButton() => SafeArea(
// //         child: Padding(
// //           padding: const EdgeInsets.fromLTRB(8, 28, 0, 0),
// //           child: Align(
// //             alignment: Alignment.topLeft,
// //             child: SizedBox(
// //               height: 50.0,
// //               width: 50.0,
// //               child: FloatingActionButton(
// //                 heroTag: Object(),
// //                 onPressed: () => Navigator.of(context).pop(),
// //                 backgroundColor: Colors.white,
// //                 child: const Icon(
// //                   Icons.arrow_back_ios_outlined,
// //                   size: 20,
// //                   color: Colors.black,
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //       );

// //   Widget _switchLiveCameraToggle() => Positioned(
// //         bottom: 8,
// //         right: 8,
// //         child: SizedBox(
// //           height: 50.0,
// //           width: 50.0,
// //           child: FloatingActionButton(
// //             heroTag: Object(),
// //             onPressed: _switchLiveCamera,
// //             backgroundColor: Colors.white,
// //             child: Icon(
// //               Platform.isIOS
// //                   ? Icons.flip_camera_ios_outlined
// //                   : Icons.flip_camera_android_outlined,
// //               size: 20,
// //               color: Colors.black,
// //             ),
// //           ),
// //         ),
// //       );

// //   Future _switchLiveCamera() async {
// //     if (_controller.description.lensDirection == CameraLensDirection.front) {
// //       _cameraLensDirection = CameraLensDirection.back;
// //     } else {
// //       _cameraLensDirection = CameraLensDirection.front;
// //     }
// //     await _stopLiveFeed();
// //     _initializeCamera();
// //   }
// // }


// import 'dart:io';
// import 'dart:math';
 
// import 'package:camera/camera.dart';
// import 'package:face_detection/distance_calculator/distance_calculator_service.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
 
// import 'painters/distance_calculator_painter.dart';
 
// class DistanceCalculatorView extends StatefulWidget {
//   const DistanceCalculatorView({
//     Key? key,
//   }) : super(key: key);
 
//   @override
//   State<DistanceCalculatorView> createState() => _DistanceCalculatorViewState();
// }
 
// class _DistanceCalculatorViewState extends State<DistanceCalculatorView>
//     with WidgetsBindingObserver {
//   List<CameraDescription> _cameras = [];
//   CustomPaint? _customPaint;
//   final bool _enablePainterView = true;
//   late CameraController _controller;
//   final CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
//   final FaceDetector _faceDetector = FaceDetector(
//     options: FaceDetectorOptions(
//       enableContours: true,
//       enableLandmarks: true,
//       enableClassification: true,
//     ),
//   );
//   // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
//   final ResolutionPreset defaultResolution = ResolutionPreset.high;
//   bool _canProcess = false;
//   bool _isBusy = false;
//   double _focalLength = 0.001;
//   double _sensorX = 0.001;
//   double _sensorY = 0.001;
//   int? _distanceToFace;
//   List<Point<double>> _translatedEyeLandmarks = [];
//   Size _canvasSize = Size.zero;
 
//   @override
//   void initState() {
//     debugPrint('DistanceCalculatorView initState');
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);
//     _initializeCamera();
//   }
 
//   Future<void> _initializeCamera() async {
//     debugPrint('DistanceCalculatorView _initializeCamera');
//     final NavigatorState navigator = Navigator.of(context);
//     try {
//       if (_cameras.isEmpty) {
//         _cameras = await availableCameras();
//       }
//       _canProcess = true;
//       _isBusy = false;
//       await _startLiveFeed();
//       await _getCameraInfo();
//     } catch (e) {
//       navigator.pop();
//       debugPrint(e.toString());
//     }
//   }
 
//   Future<void> _startLiveFeed() async {
//     debugPrint('DistanceCalculatorView _startLiveFeed');
//     _controller = CameraController(
//       _cameras.firstWhere(
//         (element) => element.lensDirection == _cameraLensDirection,
//       ),
//       defaultResolution,
//       enableAudio: false,
//       imageFormatGroup: Platform.isAndroid
//           ? ImageFormatGroup.nv21
//           : ImageFormatGroup.bgra8888,
//     );
//     await _controller.initialize().then(
//       (value) {
//         if (!mounted) {
//           return;
//         }
//         _controller.startImageStream(_processCameraImage);
//       },
//     );
//     if (mounted) {
//       setState(() {});
//     }
//   }
 
//   Future<void> _getCameraInfo() async {
//     debugPrint('DistanceCalculatorFaceMeshView _getCameraInfo');
//     try {
//       final Map<String, double>? cameraInfo =
//           await DistanceCalculatorService.getCameraInfo();
//       _focalLength = cameraInfo?['focalLength'] ?? 0.001;
//       _sensorX = cameraInfo?['sensorX'] ?? 0.001;
//       _sensorY = cameraInfo?['sensorY'] ?? 0.001;
//     } catch (error) {
//       rethrow;
//     }
//   }
 
//   void _processCameraImage(CameraImage image) {
//     final CameraDescription camera = _cameras.firstWhere(
//       (element) => element.lensDirection == _cameraLensDirection,
//     );
//     final DeviceOrientation orientation = _controller.value.deviceOrientation;
//     final InputImage? inputImage =
//         DistanceCalculatorService.inputImageFromCameraImage(
//       image: image,
//       camera: camera,
//       deviceOrientation: orientation,
//     );
//     if (inputImage == null) return;
 
//     _processImage(inputImage);
//   }
 
//   //Function to process the frames as per our requirements
//   Future<void> _processImage(InputImage inputImage) async {
//     if (!_canProcess) return;
//     if (_isBusy) return;
//     _isBusy = true;
//     setState(() {});
//     final faces = await _faceDetector.processImage(inputImage);
//     const double boxSizeRatio = 0.7;
//     final double boxWidth = _canvasSize.width * boxSizeRatio;
//     final double boxHeight = _canvasSize.height * boxSizeRatio;
//     final Point<double> boxCenter = Point(
//       _canvasSize.width * 0.5,
//       _canvasSize.height * 0.5,
//     );
 
//     if (faces.isNotEmpty) {
//       final leftEyeLandmark = faces[0].landmarks[FaceLandmarkType.leftEye];
//       final rightEyeLandmark = faces[0].landmarks[FaceLandmarkType.rightEye];
//       if (leftEyeLandmark != null && rightEyeLandmark != null) {
//         final leftEyeLandmarkPosition = leftEyeLandmark.position;
//         final rightEyeLandmarkPosition = rightEyeLandmark.position;
 
//         final List<Point<int>> eyeLandmarks = [
//           leftEyeLandmarkPosition,
//           rightEyeLandmarkPosition
//         ];
 
//         _translatedEyeLandmarks = eyeLandmarks.map((landmark) {
//           return DistanceCalculatorService.translator(
//             landmark,
//             inputImage,
//             _canvasSize,
//             _cameraLensDirection,
//           );
//         }).toList();
 
//         final bool eyeLandmarksInsideTheBox =
//             DistanceCalculatorService.areEyeLandmarksInsideTheBox(
//           _translatedEyeLandmarks,
//           boxCenter,
//           boxWidth,
//           boxHeight,
//         );
 
//         if (eyeLandmarksInsideTheBox) {
//           _distanceToFace = DistanceCalculatorService.calculateDistanceToScreen(
//             leftEyeLandmark: leftEyeLandmarkPosition,
//             rightEyeLandmark: rightEyeLandmarkPosition,
//             focalLength: _focalLength,
//             sensorX: _sensorX,
//             sensorY: _sensorY,
//             imageWidth: inputImage.metadata!.size.width.toInt(),
//             imageHeight: inputImage.metadata!.size.height.toInt(),
//           );
//         } else {
//           _distanceToFace = null;
//         }
//       } else {
//         _distanceToFace = null;
//       }
//     } else {
//       _distanceToFace = null;
//       _translatedEyeLandmarks = [];
//     }
 
//     //Calling the Distance Calculator Painter
//     if (inputImage.metadata?.size != null &&
//         inputImage.metadata?.rotation != null) {
//       final painter = DistanceCalculatorPainter(
//         boxCenter,
//         boxWidth,
//         boxHeight,
//         _translatedEyeLandmarks,
//         (size) {
//           _canvasSize = size;
//         },
//       );
//       _customPaint = CustomPaint(painter: painter);
//     } else {
//       _customPaint = null;
//     }
 
//     _isBusy = false;
//     if (mounted) {
//       setState(() {});
//     }
//   }
 
//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     debugPrint('DistanceCalculatorView $state');
//     if (!(_controller.value.isInitialized)) return;
//     if (state == AppLifecycleState.inactive) {
//       debugPrint('DistanceCalculatorFaceMeshView inactive');
//       _stopLiveFeed();
//     } else if (state == AppLifecycleState.resumed) {
//       debugPrint('DistanceCalculatorFaceMeshView resumed');
//       _initializeCamera();
//     }
//   }
 
//   @override
//   void dispose() {
//     debugPrint('DistanceCalculatorView dispose');
//     WidgetsBinding.instance.removeObserver(this);
//     _stopLiveFeed();
//     super.dispose();
//   }
 
//   Future<void> _stopLiveFeed() async {
//     debugPrint('DistanceCalculatorView _stopLiveFeed');
//     _canProcess = false;
//     _faceDetector.close();
//     await _controller.stopImageStream();
//     await _controller.dispose();
//   }
 
//   @override
//   Widget build(BuildContext context) {
//     if (_cameras.isEmpty) {
//       return const Scaffold(
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     }
//     if (!_controller.value.isInitialized) {
//       return const Scaffold(
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     } else {
//       return PopScope(
//         canPop: true,
//         child: Scaffold(
//           backgroundColor: Colors.black,
//           body: Stack(
//             fit: StackFit.expand,
//             children: <Widget>[
//               Center(
//                 child: _enablePainterView
//                     ? CameraPreview(
//                         _controller,
//                         child: _customPaint,
//                       )
//                     : CameraPreview(
//                         _controller,
//                       ),
//               ),
//               Positioned(
//                 top: 140,
//                 left: MediaQuery.of(context).size.width * 0.2,
//                 right: MediaQuery.of(context).size.width * 0.2,
//                 child: Container(
//                   padding: const EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16),
//                     color: Colors.blue.withOpacity(0.6),
//                     border: Border.all(
//                       color: Colors.white,
//                       width: 2,
//                     ),
//                   ),
//                   child: Text(
//                     'Distance to Face: ${_distanceToFace ?? 'Not Found'}',
//                     maxLines: 1,
//                     textAlign: TextAlign.center,
//                     overflow: TextOverflow.ellipsis,
//                     style: const TextStyle(
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               _backButton(),
//             ],
//           ),
//         ),
//       );
//     }
//   }
 
//   Widget _backButton() => SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(8, 28, 0, 0),
//           child: Align(
//             alignment: Alignment.topLeft,
//             child: SizedBox(
//               height: 50.0,
//               width: 50.0,
//               child: FloatingActionButton(
//                 heroTag: Object(),
//                 onPressed: () => Navigator.of(context).pop(),
//                 backgroundColor: Colors.white,
//                 child: const Icon(
//                   Icons.arrow_back_ios_outlined,
//                   size: 20,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
// }