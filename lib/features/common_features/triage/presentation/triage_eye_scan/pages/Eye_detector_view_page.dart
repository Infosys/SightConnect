// import 'dart:io';
// import 'dart:math';
// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';

// import '../provider/eye_detector_service.dart';
// import '../widgets/eye_detector_painter.dart';


// enum EyeDetectorMode {
//   left,
//   right,
// }

// class EyeDetectorView extends StatefulWidget {
//   const EyeDetectorView({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<EyeDetectorView> createState() => _EyeDetectorViewState();
// }

// class _EyeDetectorViewState extends State<EyeDetectorView>
//     with WidgetsBindingObserver {
//   List<CameraDescription> _cameras = [];
//   CustomPaint? _customPaint;
//   late CameraController _controller;
//   final CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
//   final FaceMeshDetector _meshDetector = FaceMeshDetector(
//     option: FaceMeshDetectorOptions.faceMesh,
//   );
//   // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
//   final ResolutionPreset defaultResolution = ResolutionPreset.high;
//   bool _canProcess = false;
//   bool _isBusy = false;
//   Size _canvasSize = Size.zero;
//   // bool _changingCameraLens = false;
//   EyeDetectorMode? _currentEye;
//   bool _isEyeValid = false;
//   bool _eyesInsideTheBox = false;
//   double _eyeWidthRatio = 0.0;
//   List<Point<double>> _translatedEyeContours = [];
//   Map<String, double> _eyeCorners = {};

//   @override
//   void initState() {
//     debugPrint('EyeDetectorView initState');
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);
//     _initializeCamera();
//   }

//   void _initializeCamera() async {
//     debugPrint('EyeDetectorView _initializeCamera');
//     setState(() {
//       _currentEye = EyeDetectorMode.left;
//     });
//     final NavigatorState navigator = Navigator.of(context);
//     try {
//       if (_cameras.isEmpty) {
//         _cameras = await availableCameras();
//       }
//       _canProcess = true;
//       await _startLiveFeed();
//     } catch (e) {
//       debugPrint('Error initializing camera: $e');
//       navigator.pop();
//     }
//   }

//   Future<void> _startLiveFeed() async {
//     debugPrint('EyeDetectorView _startLiveFeed');
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

//   void _processCameraImage(CameraImage image) {
//     final CameraDescription camera = _cameras.firstWhere(
//       (element) => element.lensDirection == _cameraLensDirection,
//     );
//     final DeviceOrientation orientation = _controller.value.deviceOrientation;
//     final InputImage? inputImage = EyeDetectorService.inputImageFromCameraImage(
//       image: image,
//       camera: camera,
//       deviceOrientation: orientation,
//     );
//     if (inputImage == null) return;

//     _processImage(inputImage);
//   }

//   // Function to process the frames as per our requirements
//   Future<void> _processImage(InputImage inputImage) async {
//     if (!_canProcess) return;
//     if (_isBusy) return;
//     _isBusy = true;
//     setState(() {});
//     final meshes = await _meshDetector.processImage(inputImage);

//     // Measurement of the Fixed Center Eye Scanner Box
//     final boxWidth = _canvasSize.width * (3 / 5);
//     final boxHeight = _canvasSize.height * (1 / 5);
//     final boxCenter = Point(
//       _canvasSize.width * (1 / 2),
//       _canvasSize.height * (3 / 10),
//     );

//     if (meshes.isNotEmpty) {
//       final mesh = meshes[0];
//       final leftEyeContour = mesh.contours[FaceMeshContourType.leftEye];
//       final rightEyeContour = mesh.contours[FaceMeshContourType.rightEye];

//       if (leftEyeContour != null && rightEyeContour != null) {
//         final List<FaceMeshPoint> eyePoints =
//             EyeDetectorService.isLeftEye(_currentEye)
//                 ? leftEyeContour
//                 : rightEyeContour;

//         // Translate Eye Points
//         _translatedEyeContours = eyePoints.map(
//           (contour) {
//             return EyeDetectorService.translator(
//               contour,
//               inputImage,
//               _canvasSize,
//               _cameraLensDirection,
//             );
//           },
//         ).toList();

//         // Check if Eyes are inside the box
//         _eyesInsideTheBox = EyeDetectorService.areEyesInsideTheBox(
//           _translatedEyeContours,
//           boxCenter,
//           boxWidth,
//           boxHeight,
//         );

//         // Get the corner point of the eyes which is needed to calculate eye width
//         _eyeCorners = EyeDetectorService.getEyeCorners(_translatedEyeContours);

//         // Calculate the eyeWidth ratio to the boxWidth
//         _eyeWidthRatio = EyeDetectorService.getEyeWidthRatio(
//           _eyeCorners,
//           boxWidth,
//           boxHeight,
//         );

//         // Validity of the eye
//         _isEyeValid = _eyesInsideTheBox &&
//             EyeDetectorService.areEyesCloseEnough(_eyeWidthRatio);
//       } else {
//         _translatedEyeContours = [];
//       }
//     } else {
//       _translatedEyeContours = [];
//     }

//     if (inputImage.metadata?.size != null &&
//         inputImage.metadata?.rotation != null) {
//       final painter = EyeDetectorPainter(
//         _translatedEyeContours,
//         boxCenter,
//         boxWidth,
//         boxHeight,
//         _isEyeValid,
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
//     if (!(_controller.value.isInitialized)) return;
//     if (state == AppLifecycleState.inactive) {
//       debugPrint('EyeDetectorView AppLifecycleState.inactive');
//       _stopLiveFeed();
//     } else if (state == AppLifecycleState.resumed) {
//       debugPrint('EyeDetectorView AppLifecycleState.resumed');
//       _initializeCamera();
//     } else if (state == AppLifecycleState.paused) {
//       debugPrint('EyeDetectorView AppLifecycleState.paused');
//       _stopLiveFeed();
//     } else if (state == AppLifecycleState.detached) {
//       debugPrint('EyeDetectorView AppLifecycleState.detached');
//       _stopLiveFeed();
//     } else if (state == AppLifecycleState.hidden) {
//       debugPrint('EyeDetectorView AppLifecycleState.hidden');
//       _stopLiveFeed();
//     }
//   }

//   @override
//   void dispose() {
//     debugPrint('EyeDetectorView dispose');
//     WidgetsBinding.instance.removeObserver(this);
//     _stopLiveFeed();
//     super.dispose();
//   }

//   Future<void> _stopLiveFeed() async {
//     debugPrint('EyeDetectorView _stopLiveFeed');
//     try {
//       _canProcess = false;
//       _meshDetector.close();
//       if (_controller.value.isInitialized &&
//           _controller.value.isStreamingImages) {
//         await _controller.stopImageStream();
//         await _controller.dispose();
//       }
//     } catch (e) {
//       debugPrint('Error stopping live feed: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: _liveFeedBody());
//   }

//   Widget _liveFeedBody() {
//     if (_cameras.isEmpty) return Container();
//     if (_controller.value.isInitialized == false) return Container();
//     return Container(
//       color: Colors.black,
//       child: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           Center(
//             child: CameraPreview(
//               _controller,
//               child: _customPaint,
//             ),
//             // child: _changingCameraLens
//             //     ? const Center(
//             //         child: Text('Changing camera lens'),
//             //       )
//             //     : CameraPreview(
//             //         _controller,
//             //         child: _customPaint,
//             //       ),
//           ),
//           // _cameraButton(),
//           // _backButton(),
//           // _switchLiveCameraToggle(),
//         ],
//       ),
//     );
//   }

//   // Widget _cameraButton() => SafeArea(
//   //       child: Padding(
//   //         padding: const EdgeInsets.only(bottom: 12),
//   //         child: Align(
//   //           alignment: Alignment.bottomCenter,
//   //           child: Visibility(
//   //             visible: _isEyeValid,
//   //             child: SizedBox(
//   //               height: 50.0,
//   //               width: 50.0,
//   //               child: FloatingActionButton(
//   //                 heroTag: Object(),
//   //                 onPressed: takePicture,
//   //                 backgroundColor: Colors.white,
//   //                 child: const Icon(
//   //                   Icons.camera_alt_outlined,
//   //                   size: 20,
//   //                   color: Colors.black,
//   //                 ),
//   //               ),
//   //             ),
//   //           ),
//   //         ),
//   //       ),
//   //     );

//   // Future<void> takePicture() async {
//   //   final navigator = Navigator.of(context);
//   //   if (!_controller.value.isInitialized) {
//   //     return;
//   //   }
//   //   if (_controller.value.isTakingPicture) {
//   //     return;
//   //   }
//   //   try {
//   //     await _controller.setFlashMode(FlashMode.off);
//   //     XFile picture = await _controller.takePicture();
//   //     final isValid = await navigator.push(
//   //       MaterialPageRoute(
//   //         builder: (context) => TriageEyePreviewPage(
//   //           picture: picture,
//   //         ),
//   //       ),
//   //     );
//   //     if (isValid) {
//   //       if (_currentEye == EyeDetectorMode.left) {
//   //         debugPrint("Image Path : ${picture.path}");
//   //         setState(() {
//   //           _currentEye = EyeDetectorMode.right;
//   //         });
//   //       } else if (_currentEye == EyeDetectorMode.right) {
//   //         debugPrint("Image Path : ${picture.path}");
//   //         setState(() {
//   //           _currentEye = null;
//   //         });
//   //         navigator.pop();
//   //       }
//   //     } else {}
//   //   } on CameraException catch (e) {
//   //     debugPrint('Error occurred while taking picture: $e');
//   //   }
//   // }

//   // Widget _backButton() => SafeArea(
//   //       child: Padding(
//   //         padding: const EdgeInsets.fromLTRB(8, 28, 0, 0),
//   //         child: Align(
//   //           alignment: Alignment.topLeft,
//   //           child: SizedBox(
//   //             height: 50.0,
//   //             width: 50.0,
//   //             child: FloatingActionButton(
//   //               heroTag: Object(),
//   //               onPressed: () => Navigator.of(context).pop(),
//   //               backgroundColor: Colors.white,
//   //               child: const Icon(
//   //                 Icons.arrow_back_ios_outlined,
//   //                 size: 20,
//   //                 color: Colors.black,
//   //               ),
//   //             ),
//   //           ),
//   //         ),
//   //       ),
//   //     );

//   // Widget _switchLiveCameraToggle() => Positioned(
//   //       bottom: 8,
//   //       right: 8,
//   //       child: Visibility(
//   //         visible: !_changingCameraLens,
//   //         child: SizedBox(
//   //           height: 50.0,
//   //           width: 50.0,
//   //           child: FloatingActionButton(
//   //             heroTag: Object(),
//   //             onPressed: _switchLiveCamera,
//   //             backgroundColor: Colors.white,
//   //             child: Icon(
//   //               Platform.isIOS
//   //                   ? Icons.flip_camera_ios_outlined
//   //                   : Icons.flip_camera_android_outlined,
//   //               size: 20,
//   //               color: Colors.black,
//   //             ),
//   //           ),
//   //         ),
//   //       ),
//   //     );

//   // Future _switchLiveCamera() async {
//   //   setState(() {
//   //     _changingCameraLens = true;
//   //   });
//   //   if (_controller.description.lensDirection == CameraLensDirection.front) {
//   //     _cameraLensDirection = CameraLensDirection.back;
//   //   } else {
//   //     _cameraLensDirection = CameraLensDirection.front;
//   //   }
//   //   await _stopLiveFeed();
//   //   _initializeCamera();
//   //   setState(() {
//   //     _changingCameraLens = false;
//   //   });
//   // }
// }