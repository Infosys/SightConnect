import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/swipe_gesture_card.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/machine_learning_camera_service.dart';
import '../widgets/top_reading_card.dart';
import '../widgets/visual_acuity_face_distance_painter.dart';
import '../widgets/visual_acuity_tumbling_overlay.dart';

class VisualAcuityInitiatePage extends ConsumerStatefulWidget {
  static const String routeName = "/tumbling-test-initiate";
  const VisualAcuityInitiatePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<VisualAcuityInitiatePage> createState() =>
      _VisualAcuityInitiatePageViewState();
}

class _VisualAcuityInitiatePageViewState
    extends ConsumerState<VisualAcuityInitiatePage>
    with WidgetsBindingObserver {
  List<CameraDescription> _cameras = [];
  CustomPaint? _customPaint;
  final bool _enablePainterView = false;
  late CameraController _controller;
  final CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
  final FaceMeshDetector _meshDetector = FaceMeshDetector(
    option: FaceMeshDetectorOptions.faceMesh,
  );
  // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
  final ResolutionPreset defaultResolution = ResolutionPreset.high;
  bool _canProcess = false;
  double _focalLength = 0.001;
  double _sensorX = 0.001;
  double _sensorY = 0.001;
  int? _distanceToFace;
  List<Point<double>> _translatedEyeLandmarks = [];
  Size _canvasSize = Size.zero;
  final List<int> _distanceBuffer = [];
  final int bufferSize = 10;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final navigator = Navigator.of(context);
    try {
      if (_cameras.isEmpty) {
        _cameras = await availableCameras();
      }
      _canProcess = true;
      await _startLiveFeed();
      await _getCameraInfo();
    } catch (e) {
      navigator.pop();
      Fluttertoast.showToast(msg: "Service not available");
    }
  }

  Future<void> _startLiveFeed() async {
    _controller = CameraController(
      _cameras.firstWhere(
        (element) => element.lensDirection == _cameraLensDirection,
      ),
      defaultResolution,
      enableAudio: false,
      imageFormatGroup: Platform.isAndroid
          ? ImageFormatGroup.nv21
          : ImageFormatGroup.bgra8888,
    );
    await _controller.initialize().then(
      (value) {
        if (!mounted) {
          return;
        }
        _controller.startImageStream(_processCameraImage);
      },
    );
    setState(() {});
  }

//The updateDistance function is helping to smooth out the fluctuations in the _distanceToFace value by implementing a simple moving average.
  void updateDistance(int newDistance) {
    _distanceBuffer.add(newDistance);
    if (_distanceBuffer.length > bufferSize) {
      _distanceBuffer.removeAt(0);
    }
    _distanceToFace =
        _distanceBuffer.reduce((a, b) => a + b) ~/ _distanceBuffer.length;
    logger.d("Distance to face: $_distanceToFace");
    setState(() {});
  }

  Future<void> _getCameraInfo() async {
    try {
      final cameraInfo = await MachineLearningCameraService.getCameraInfo();
      _focalLength = cameraInfo?['focalLength'] ?? 0.001;
      _sensorX = cameraInfo?['sensorX'] ?? 0.001;
      _sensorY = cameraInfo?['sensorY'] ?? 0.001;
    } catch (error) {
      logger.e('Error getting camera info: $error');
      rethrow;
    }
  }

  void _processCameraImage(CameraImage image) {
    final camera = _cameras.firstWhere(
      (element) => element.lensDirection == _cameraLensDirection,
    );
    final orientation = _controller.value.deviceOrientation;
    final inputImage = MachineLearningCameraService.inputImageFromCameraImage(
      image: image,
      camera: camera,
      deviceOrientation: orientation,
    );
    if (inputImage == null) return;

    _processImage(inputImage);
  }

  Future<void> _processImage(InputImage inputImage) async {
    if (!_canProcess) return;

    final meshes = await _meshDetector.processImage(inputImage);
    const boxSizeRatio = 0.7;
    final boxWidth = _canvasSize.width * boxSizeRatio;
    final boxHeight = _canvasSize.height * boxSizeRatio;
    final boxCenter = Point(
      _canvasSize.width * 0.5,
      _canvasSize.height * 0.5,
    );

    if (meshes.isNotEmpty) {
      final mesh = meshes[0];
      final leftEyeContour = mesh.contours[FaceMeshContourType.leftEye];
      final rightEyeContour = mesh.contours[FaceMeshContourType.rightEye];

      if (leftEyeContour != null && rightEyeContour != null) {
        final eyeLandmarks = [
          MachineLearningCameraService.getEyeLandmark(leftEyeContour),
          MachineLearningCameraService.getEyeLandmark(rightEyeContour),
        ];

        _translatedEyeLandmarks = eyeLandmarks.map((landmark) {
          return MachineLearningCameraService.translator(
            landmark,
            inputImage,
            _canvasSize,
            _cameraLensDirection,
          );
        }).toList();

        final eyeLandmarksInsideTheBox =
            MachineLearningCameraService.areEyeLandmarksInsideTheBox(
          _translatedEyeLandmarks,
          boxCenter,
          boxWidth,
          boxHeight,
        );

        if (eyeLandmarksInsideTheBox) {
          int newDistance =
              MachineLearningCameraService.calculateDistanceToScreen(
            leftEyeLandmark: eyeLandmarks[0],
            rightEyeLandmark: eyeLandmarks[1],
            focalLength: _focalLength,
            sensorX: _sensorX,
            sensorY: _sensorY,
            imageWidth: inputImage.metadata!.size.width.toInt(),
            imageHeight: inputImage.metadata!.size.height.toInt(),
          );
          updateDistance(newDistance);
        } else {
          resetValues();
        }
      } else {
        resetValues();
      }
    } else {
      resetValues();
    }

    // Calling the Distance Calculator Painter
    if (inputImage.metadata?.size != null &&
        inputImage.metadata?.rotation != null) {
      final painter = VisualAcuityFaceDistancePainter(
        boxCenter,
        boxWidth,
        boxHeight,
        _translatedEyeLandmarks,
        (size) {
          _canvasSize = size;
        },
      );
      _customPaint = CustomPaint(painter: painter);
    } else {
      _customPaint = null;
    }

    if (mounted) {
      setState(() {});
    }
  }

  void resetValues() {
    _translatedEyeLandmarks = [];
    _distanceToFace = null;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!(_controller.value.isInitialized)) return;
    if (state == AppLifecycleState.inactive) {
      logger.d("AppLifecycleState.inactive");
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d("AppLifecycleState.resumed");
      _initializeCamera();
    }
  }

  @override
  void dispose() {
    logger.d("Dispose Called");
    _stopLiveFeed();
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    logger.d("Stop Live Feed Called");
    _canProcess = false;
    _meshDetector.close();
    await _controller.stopImageStream();
    await _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    var pointerState = ref.watch(visualAcuityTumblingTestDialogProvider);
    return PopScope(
      canPop: false,
      onPopInvoked: (value) async {
        if (value) {
          return;
        }
        if (ref.read(globalProvider).isTriageMode()) {
          showDialog(
            context: context,
            builder: (context) => TriageExitAlertBox(
              content: AppLocalizations.of(context)!.visualAcuityExitDialog,
            ),
          );
        } else {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        backgroundColor: AppColor.white,
        key: scaffoldKey,
        drawer: const TriageStepsDrawer(),
        appBar: !ref.watch(globalProvider).isTriageMode()
            ? CustomAppbar(
                leadingIcon: IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    if (ref.read(globalProvider).isTriageMode()) {
                      showDialog(
                        context: context,
                        builder: (context) => TriageExitAlertBox(
                          content: AppLocalizations.of(context)!
                              .visualAcuityExitDialog,
                        ),
                      );
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                  icon: const Icon(CupertinoIcons.back),
                ),
                titleSpacing: 0,
                actions: const [],
                centerTitle: false,
                title: Text(AppLocalizations.of(context)!.visualAcuityTitle),
              )
            : CustomAppbar(
                leadingWidth: 60,
                titleSpacing: 0.0,
                actions: [
                  IconButton(
                    onPressed: () {
                      TextScalePopupMenu.show(context, ref);
                    },
                    icon: SvgPicture.asset(
                      "assets/drawer_icons/accessibility.svg",
                      height: 22,
                    ),
                  ),
                ],
                centerTitle: false,
                leadingIcon: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Image.asset(
                      AppIcon.hamburgerIcon,
                    ),
                  ),
                ),
                title: Text(
                  context.loc!.visualAcuityTitle,
                  style: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
        body: VisualAcuityTumblingOverlay(
          child: IgnorePointer(
            ignoring: !pointerState,
            child: const Padding(
              padding: EdgeInsets.only(
                  // left: AppSize.klpadding,
                  // right: AppSize.klpadding,

                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TopReadingCard(
                    distanceToFace: 30,
                  ),
                  // SizedBox(height: AppSize.kmpadding),
                  /*         AcuityDistanceTile(
                    distanceInCms: 40,
                  ), */
                  Expanded(
                    child: SwipeGestureCard(),
                  ),
                  // Expanded(
                  //   child: BottomInputTab(
                  //     tabs: [
                  //       SwipeGestureCard(),
                  //       VoiceAssistCard(),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
