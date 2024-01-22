import 'dart:io';
import 'dart:math';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/permission_service.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/distance_notifier_provider.dart';
// import 'package:eye_care_for_all/core/services/ios_device_info_service.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/domain/models/tumbling_models.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:millimeters/millimeters.dart';
import '../../../../../main.dart';
import '../../domain/models/enums/tumbling_enums.dart';
import '../providers/machine_learning_camera_service.dart';
import '../providers/visual_acuity_test_provider.dart';
import 'visual_acuity_face_distance_painter.dart';

class TopReadingCard extends ConsumerStatefulWidget {
  const TopReadingCard({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<TopReadingCard> createState() => _TopReadingCardViewState();
}

class _TopReadingCardViewState extends ConsumerState<TopReadingCard>
    with WidgetsBindingObserver {
  List<CameraDescription> _cameras = [];
  CustomPaint? customPaint;

  late CameraController _controller;
  final CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
  final FaceMeshDetector _meshDetector = FaceMeshDetector(
    option: FaceMeshDetectorOptions.faceMesh,
  );
  // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
  final ResolutionPreset defaultResolution = ResolutionPreset.high;
  bool _canProcess = false;
  bool _isBusy = false;
  double _focalLength = 0.001;
  double _sensorX = 0.001;
  double _sensorY = 0.001;
  int? _distanceToFace;
  List<Point<double>> _translatedEyeLandmarks = [];
  Size _canvasSize = Size.zero;
  final List<int> _distanceBuffer = [];
  int bufferSize = 10;
  bool isLoading = false;
  bool isPermissionGranted = false;

  @override
  void initState() {
    super.initState();
    isPermissionGranted = false;
    isLoading = false;
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _checkPermissions(context));
  }

  Future<void> _checkPermissions(BuildContext context) async {
    final navigator = Navigator.of(context);
    if (mounted) {
      setState(() {
        isPermissionGranted = false;
        isLoading = false;
      });
    }

    final isGranted = await CameraPermissionService.checkPermissions(context);

    if (isGranted) {
      addPermissionLoading();
      await _initializeCamera();
    } else {
      navigator.pop();
      Fluttertoast.showToast(msg: "Permission not granted");
    }
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
    if (mounted) {
      setState(() {});
    }
  }

//The updateDistance function is helping to smooth out the fluctuations in the _distanceToFace value by implementing a simple moving average.
  void updateDistance(int newDistance) {
    _distanceBuffer.add(newDistance);
    if (_distanceBuffer.length > bufferSize) {
      _distanceBuffer.removeAt(0);
    }
    _distanceToFace =
        _distanceBuffer.reduce((a, b) => a + b) ~/ _distanceBuffer.length;

    if (mounted) {
      ref.read(distanceNotifierProvider).distance = _distanceToFace ?? 0;
    }
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

  // Function to process the frames as per our requirements
  Future<void> _processImage(InputImage inputImage) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    setState(() {});
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
      customPaint = CustomPaint(painter: painter);
    } else {
      customPaint = null;
    }

    _isBusy = false;
    if (mounted) {
      setState(() {});
    }
  }

  void resetValues() {
    _translatedEyeLandmarks = [];
    _distanceToFace = null;
  }

  @override
  void dispose() {
    logger.d("Top Reading Card Disposed");
    if (mounted) {
      stopLiveFeed();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var model = ref.watch(tumblingTestProvider);
    var currentLevel = model.level;
    // final loc = context.loc!;
    // final physicalities = Millimeters.of(context);
    // final mm = physicalities.mm;
    // var scaleFactor = IOSDeviceInfoService.getOptoTypeScaleFactor(context);
    // final optoTypeSize = mm(currentLevel!.size * 10 * scaleFactor);
    // TODO: THIS IS FOR TESTING, Need to remove
    final optoTypeSize = currentLevel!.size * 10 * 160 * 0.03937;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.klradius),
        color: AppColor.white,
      ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.kmpadding - 3,
          vertical: AppSize.kmpadding,
        ),
        // add innershadow
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.klradius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 9,
              child: Center(
                child: Wrap(
                  runAlignment: WrapAlignment.center,
                  runSpacing: 10,
                  spacing: optoTypeSize,
                  children: List.generate(
                    model.level!.questions.length,
                    (index) {
                      var question = model.level!.questions[index];

                      return _RotatedTumblingE(
                        size: optoTypeSize,
                        question: question,
                        index: index,
                        selectedIndex: model.currentIndex!,
                      );
                    },
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${currentLevel.snellerFraction}  ",
                          style: applyRobotoFont(
                              color: AppColor.grey, fontSize: 16),
                        ),
                        Consumer(
                          builder: (context, ref, child) {
                            var model = ref.watch(tumblingTestProvider);
                            return Text(
                              model.currentEye == Eye.left
                                  ? context.loc!.leftEyeString
                                  : (model.currentEye == Eye.right
                                      ? context.loc!.rightEyeString
                                      : context.loc!.bothEyeString),
                              style: applyFiraSansFont(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            );
                          },
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              size: AppSize.width(context) * 0.057,
                              color: AppColor.black.withOpacity(0.8),
                            ),
                            SizedBox(width: AppSize.width(context) * 0.02),
                            Text(
                              "${_distanceToFace ?? 0} cm",
                              style: applyRobotoFont(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColor.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            ref
                                .watch(distanceNotifierProvider)
                                .getDistanceText(context),
                            style: applyRobotoFont(
                              fontSize: 10,
                              color: AppColor.grey,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSize.ksheight),
          ],
        ),
      ),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    logger.d({
      "AppLifecycleState": "$state",
      "isPermissionGranted": "$isPermissionGranted",
      "isLoading": "$isLoading",
    });
    if (!isPermissionGranted) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      logger.d("AppLifecycleState.inactive");
      addLoading();
      stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d("AppLifecycleState.resumed");

      if (mounted) {
        _checkPermissions(context);
      }
    } else if (state == AppLifecycleState.paused) {
      logger.d("AppLifecycleState.paused");
      addLoading();
      stopLiveFeed();
    } else if (state == AppLifecycleState.detached) {
      logger.d("AppLifecycleState.detached");

      addLoading();
      stopLiveFeed();
    }
  }

  Future<void> stopLiveFeed() async {
    logger.d("Stop Live Feed Called");
    try {
      _canProcess = false;
      _meshDetector.close();
      if (_controller.value.isInitialized &&
          _controller.value.isStreamingImages) {
        await _controller.stopImageStream();
        await _controller.dispose();
      }
    } catch (e) {
      logger.e('Error stopping live feed: $e');
    }
  }

  void addLoading() {
    if (mounted) {
      setState(() {
        isLoading = true;
      });
    }
  }

  void removeLoading() {
    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  void addPermissionLoading() {
    if (mounted) {
      setState(() {
        isPermissionGranted = true;
      });
    }
  }

  void removePermissionLoading() {
    if (mounted) {
      setState(() {
        isPermissionGranted = false;
      });
    }
  }
}

class _RotatedTumblingE extends StatelessWidget {
  const _RotatedTumblingE({
    required this.size,
    required this.question,
    required this.index,
    required this.selectedIndex,
  });

  final double size;
  final Question question;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: question.angle,
          child: SvgPicture.asset(
            AppImages.tumblingE,
            width: size,
            height: size,
            colorFilter: ColorFilter.mode(
              question.questionStatus == QuestionStatus.unattempted
                  ? AppColor.black
                  : question.questionStatus == QuestionStatus.right
                      ? AppColor.green
                      : AppColor.red,
              BlendMode.srcIn,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Visibility(
          visible: index == selectedIndex,
          child: Container(
            height: 4,
            width: size,
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        )
      ],
    );
  }
}
