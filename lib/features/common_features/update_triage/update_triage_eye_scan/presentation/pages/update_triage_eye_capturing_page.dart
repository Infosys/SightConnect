import 'dart:io';
import 'dart:math';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/permission_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/eye_detector_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/widgets/eye_detector_painter.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_eye_scan/presentation/pages/update_triage_eye_preview_page.dart';
import 'package:eye_care_for_all/features/common_features/update_triage/update_triage_eye_scan/presentation/provider/update_triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';

class UpdateTriageEyeCapturingPage extends ConsumerStatefulWidget {
  const UpdateTriageEyeCapturingPage({
    required this.diagnosticReportId,
    super.key,
  });
  final int diagnosticReportId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpdateTriageEyeCapturingPageState();
}

class _UpdateTriageEyeCapturingPageState
    extends ConsumerState<UpdateTriageEyeCapturingPage>
    with WidgetsBindingObserver {
  List<CameraDescription> _cameras = [];
  CustomPaint? _customPaint;
  late CameraController _controller;
  CameraLensDirection _cameraLensDirection = CameraLensDirection.back;
  final FaceMeshDetector _meshDetector = FaceMeshDetector(
    option: FaceMeshDetectorOptions.faceMesh,
  );
  // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
  final ResolutionPreset _defaultResolution = ResolutionPreset.high;
  bool _canProcess = false;
  bool _isBusy = false;
  Size _canvasSize = Size.zero;
  bool _isLoading = false;
  String _progressMessage = "Loading...";
  bool _isPermissionGranted = false;
  bool _isEyeValid = false;
  List<Point<double>> _translatedEyeContours = [];
  TriageEyeType _currentEye = TriageEyeType.RIGHT;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    logger.d('TriageEyeCapturingPage: initState');
    super.initState();
    _isPermissionGranted = false;
    _isLoading = false;
    scaffoldKey = GlobalKey<ScaffoldState>();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _checkPermissions(context),
    );
  }

  Future<void> _checkPermissions(BuildContext context) async {
    logger.d("TriageEyeCapturingPage: Check Permission Called");
    final NavigatorState navigator = Navigator.of(context);
    if (mounted) {
      setState(() {
        _isPermissionGranted = false;
        _isLoading = false;
      });
    }
    final bool isGranted =
        await CameraPermissionService.checkPermissions(context);
    if (isGranted) {
      if (mounted) {
        setState(() {
          _isPermissionGranted = true;
        });
      }
      await _initializeCamera();
    } else {
      logger.d("TriageEyeCapturingPage: Permission not granted");
      navigator.pop();
      Fluttertoast.showToast(msg: "Permission not granted");
    }
  }

  Future<void> _initializeCamera() async {
    logger.d('TriageEyeCapturingPage: _initializeCamera');
    final NavigatorState navigator = Navigator.of(context);
    try {
      if (_cameras.isEmpty) {
        _cameras = await availableCameras();
      }
      if (Platform.isAndroid) {
        _canProcess = true;
        _isBusy = false;
      }
      await _startLiveFeed();
    } catch (e) {
      logger.d('Error initializing camera: $e');
      navigator.pop();
      Fluttertoast.showToast(msg: "Service not available");
    }
  }

  Future<void> _startLiveFeed() async {
    logger.d('TriageEyeCapturingPage: _startLiveFeed');
    _controller = CameraController(
      _cameras.firstWhere(
        (element) => element.lensDirection == _cameraLensDirection,
      ),
      _defaultResolution,
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
        if (Platform.isAndroid) {
          _controller.startImageStream(_processCameraImage);
        }
      },
    );
    if (mounted) {
      setState(() {});
    }
  }

  void _processCameraImage(CameraImage image) {
    final CameraDescription camera = _cameras.firstWhere(
      (element) => element.lensDirection == _cameraLensDirection,
    );
    final DeviceOrientation orientation = _controller.value.deviceOrientation;
    final InputImage? inputImage = EyeDetectorService.inputImageFromCameraImage(
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
    final List<FaceMesh> meshes = await _meshDetector.processImage(inputImage);

    // Measurement of the Fixed Center Eye Scanner Box
    const double boxCenterRatio = 0.5;
    final double boxWidth = _canvasSize.width * (3 / 5);
    final double boxHeight = _canvasSize.height * (1 / 5);
    final Point<double> boxCenter = Point(
      _canvasSize.width * boxCenterRatio,
      _canvasSize.height * boxCenterRatio,
    );

    if (meshes.isNotEmpty) {
      final FaceMesh mesh = meshes[0];
      final List<FaceMeshPoint>? leftEyeContour =
          mesh.contours[FaceMeshContourType.leftEye];
      final List<FaceMeshPoint>? rightEyeContour =
          mesh.contours[FaceMeshContourType.rightEye];

      if (leftEyeContour != null && rightEyeContour != null) {
        final List<FaceMeshPoint> eyePoints =
            EyeDetectorService.isLeftEye(_currentEye)
                ? leftEyeContour
                : rightEyeContour;

        // Translate Eye Points
        _translatedEyeContours = eyePoints.map(
          (contour) {
            return EyeDetectorService.translator(
              contour,
              inputImage,
              _canvasSize,
              _cameraLensDirection,
            );
          },
        ).toList();

        // Check if Eyes are inside the box
        final bool eyesInsideTheBox = EyeDetectorService.areEyesInsideTheBox(
          _translatedEyeContours,
          boxCenter,
          boxWidth,
          boxHeight,
        );
        // Get the corner point of the eyes which is needed to calculate eye width
        final Map<String, double> eyeCorners =
            EyeDetectorService.getEyeCorners(_translatedEyeContours);
        // Calculate the eyeWidth ratio to the boxWidth
        final double eyeWidthRatio = EyeDetectorService.getEyeWidthRatio(
          eyeCorners,
          boxWidth,
          boxHeight,
        );
        // Validity of the eye
        _isEyeValid = eyesInsideTheBox &&
            EyeDetectorService.areEyesCloseEnough(eyeWidthRatio);
      } else {
        _translatedEyeContours = [];
      }
    } else {
      _translatedEyeContours = [];
    }

    if (inputImage.metadata?.size != null &&
        inputImage.metadata?.rotation != null) {
      final EyeDetectorPainter painter = EyeDetectorPainter(
        _translatedEyeContours,
        boxCenter,
        boxWidth,
        boxHeight,
        _isEyeValid,
        (size) {
          _canvasSize = size;
        },
      );
      _customPaint = CustomPaint(painter: painter);
    } else {
      _customPaint = null;
    }

    _isBusy = false;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    logger.d({
      "TriageEyeCapturingPage: AppLifecycleState": "$state",
      "isPermissionGranted": "$_isPermissionGranted",
      "isLoading": "$_isLoading",
    });
    if (!_isPermissionGranted) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      logger.d('TriageEyeCapturingPage: AppLifecycleState.inactive');
      setLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d('TriageEyeCapturingPage: AppLifecycleState.resumed');
      if (mounted) {
        _checkPermissions(context);
      }
    } else if (state == AppLifecycleState.paused) {
      logger.d('TriageEyeCapturingPage: AppLifecycleState.paused');
      setLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.detached) {
      logger.d('TriageEyeCapturingPage: AppLifecycleState.detached');
      setLoading();
      _stopLiveFeed();
    }
  }

  @override
  void dispose() {
    logger.d('TriageEyeCapturingPage: dispose');
    WidgetsBinding.instance.removeObserver(this);
    if (mounted) {
      _stopLiveFeed();
    }
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    logger.d('TriageEyeCapturingPage: _stopLiveFeed');

    try {
      _canProcess = false;
      _meshDetector.close();
      if (_controller.value.isInitialized &&
          _controller.value.isStreamingImages) {
        await _controller.stopImageStream();
        await _controller.dispose();
      }
    } catch (e) {
      logger.d('Error stopping live feed: $e');
    }
  }

  void setLoading([String message = "Loading..."]) {
    setState(() {
      _isLoading = true;
      _progressMessage = message;
    });
  }

  void removeLoading() {
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(updateTriageEyeScanProvider);
    final loc = context.loc!;
    if (!_isPermissionGranted || _isLoading || _cameras.isEmpty) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    if (!_controller.value.isInitialized) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        backgroundColor: AppColor.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Text(
            loc.eyeScanTitle,
            style: applyRobotoFont(
              color: AppColor.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            InkWell(
              onTap: () async {
                await _toggleFlash();
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                child: Icon(
                  _controller.value.flashMode == FlashMode.off
                      ? Icons.flash_off
                      : Icons.flash_on,
                  color: AppColor.white,
                ),
              ),
            ),
          ],
        ),
        body: LoadingOverlay(
          isLoading: _isLoading,
          progressMessage: _progressMessage,
          child: Container(
            color: Colors.black,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Platform.isAndroid
                    ? Center(
                        child: CameraPreview(
                          _controller,
                          child: _customPaint,
                        ),
                      )
                    : Center(
                        child: CameraPreview(
                          _controller,
                        ),
                      ),
                Positioned(
                  top: 100,
                  left: null,
                  right: null,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      _eyeLocalization(model.currentEye, context),
                      style: applyRobotoFont(
                        fontSize: 16,
                        color: AppColor.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Visibility(
                      visible: !_isEyeValid,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: AppSize.width(context) * 0.8,
                          decoration: BoxDecoration(
                            color: AppColor.black.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            loc.eyeBoxText,
                            textAlign: TextAlign.center,
                            style: applyRobotoFont(
                              fontSize: 16,
                              color: AppColor.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(24),
                      color: Colors.transparent,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () async {
                                await _toggleCamera();
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppSize.kmpadding,
                                ),
                                child: Icon(
                                  Icons.flip_camera_ios,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () async {
                                if (!_isEyeValid) {
                                  return;
                                }
                                await _takePicture(context);
                              },
                              child:
                                  SvgPicture.asset("assets/icons/camera.svg"),
                            ),
                            const Spacer(),
                            Tooltip(
                              message: loc.eyeAssessmentToolTip,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppSize.kmpadding,
                                ),
                                child: Icon(
                                  Icons.info_outline,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  String _eyeLocalization(TriageEyeType eye, BuildContext context) {
    return switch (eye) {
      TriageEyeType.LEFT => context.loc!.leftEyeString,
      TriageEyeType.RIGHT => context.loc!.rightEyeString,
      TriageEyeType.BOTH => context.loc!.bothEyeString,
      _ => "",
    };
  }

  Future<void> _toggleCamera() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    setLoading();
    if (_controller.description.lensDirection == CameraLensDirection.front) {
      _cameraLensDirection = CameraLensDirection.back;
    } else {
      _cameraLensDirection = CameraLensDirection.front;
    }
    await _stopLiveFeed();
    _initializeCamera();
    removeLoading();
  }

  Future<void> _toggleFlash() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    setLoading();
    if (_controller.value.flashMode == FlashMode.off ||
        _controller.value.flashMode == FlashMode.auto) {
      await _controller.setFlashMode(FlashMode.torch);
    } else {
      await _controller.setFlashMode(FlashMode.off);
    }

    removeLoading();
  }

  Future<void> _takePicture(BuildContext context) async {
    var navigator = Navigator.of(context);

    try {
      final XFile? image = await _capturePicture(context);
      if (image == null) {
        return;
      }

      final XFile? croppedImage = await _cropImage(image);
      if (croppedImage == null) {
        return;
      }

      final bool isVerfied = await _validateImage(croppedImage);
      if (!isVerfied) {
        return;
      }
      var model = ref.read(updateTriageEyeScanProvider);

      if (model.currentEye == TriageEyeType.RIGHT) {
        model.setRightEyeImage(image);
        model.setCurrentEye(TriageEyeType.LEFT);
        setState(() {
          _currentEye = TriageEyeType.LEFT;
        });
      } else if (model.currentEye == TriageEyeType.LEFT) {
        model.setLeftEyeImage(image);

        setLoading("Uploading...");

        bool response =
            await model.updateEyeScanReport(widget.diagnosticReportId);

        removeLoading();
        if (response) {
          dispose();
          navigator.pop();
          navigator.pop();
          Fluttertoast.showToast(msg: "Eye scan report updated");
        } else {
          Fluttertoast.showToast(msg: "Something went wrong");
        }

        model.setCurrentEye(TriageEyeType.UNKNOWN);
      }
    } on CameraException {
      Fluttertoast.showToast(msg: "Camera not found");
      removeLoading();
    } catch (e) {
      removeLoading();
      Fluttertoast.showToast(msg: "Something went wrong");
    }
  }

  Future<XFile?> _capturePicture(BuildContext context) async {
    if (!_controller.value.isInitialized) {
      return null;
    }
    setLoading();
    final XFile image = await _controller.takePicture();
    removeLoading();
    return image;
  }

  Future<XFile?> _cropImage(XFile image) async {
    final img.Image? capturedImage =
        img.decodeImage(File(image.path).readAsBytesSync());
    if (capturedImage == null) {
      return null;
    }

    final img.Image mirroredImage = img.flipHorizontal(capturedImage);

    final int croppedImageWidth = mirroredImage.width;
    final double croppedImageHeight = mirroredImage.height * (1 / 3);
    final Point<double> mirroredImageCenter = Point(
      mirroredImage.width / 2,
      mirroredImage.height / 2,
    );

    int x = 0;
    int y = (mirroredImageCenter.y - croppedImageHeight / 2).toInt();

    final img.Image croppedImage = img.copyCrop(
      mirroredImage,
      x: x,
      y: y,
      width: croppedImageWidth,
      height: croppedImageHeight.toInt(),
    );

    Directory tempDir = await getTemporaryDirectory();
    String cachePath = tempDir.path;

    final String now = DateTime.now().millisecondsSinceEpoch.toString();

    File croppedImageFile = File('$cachePath/cropped_eyes_$now.jpg')
      ..writeAsBytesSync(img.encodeJpg(croppedImage));

    final XFile croppedXFileImage = XFile(croppedImageFile.path);

    return croppedXFileImage;
  }

  Future<bool> _validateImage(XFile image) async {
    XFile? verifiedImage = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => UpdateTriageEyePreviewPage(imageFile: image),
      ),
    );
    if (verifiedImage != null) {
      return true;
    } else {
      return false;
    }
  }
}
