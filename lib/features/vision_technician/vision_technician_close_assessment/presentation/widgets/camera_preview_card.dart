import 'dart:io';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/permission_service.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../main.dart';

class CameraPreviewCard extends ConsumerStatefulWidget {
  const CameraPreviewCard({super.key});

  @override
  ConsumerState<CameraPreviewCard> createState() => _CameraPreviewCardState();
}

class _CameraPreviewCardState extends ConsumerState<CameraPreviewCard>
    with WidgetsBindingObserver {
  List<CameraDescription> _cameras = [];
  late CameraController _controller;
  ResolutionPreset defaultResolution = ResolutionPreset.max;
  CameraLensDirection _cameraLensDirection = CameraLensDirection.back;
  bool isPermissionGranted = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkPermissions(context);
  }

  Future<void> _checkPermissions(BuildContext context) async {
    final NavigatorState navigator = Navigator.of(context);
    setState(() {
      isPermissionGranted = false;
    });
    final bool isGranted =
        await CameraPermissionService.checkPermissions(context);
    logger.d("AppCameraPage: isGranted: $isGranted");
    if (isGranted) {
      if (mounted) {
        setState(() {
          isPermissionGranted = true;
        });
      }
      await _initializeCamera();
    } else {
      logger.d("AppCameraPage: Permission not granted");
      navigator.pop();
      if (context.mounted) {
        Fluttertoast.showToast(msg: context.loc!.permissionNotGranted);
      }
    }
  }

  Future<void> _initializeCamera() async {
    logger.d("AppCameraPage: Initialize Camera Called");
    final NavigatorState navigator = Navigator.of(context);
    final loc = context.loc!;
    try {
      if (_cameras.isEmpty) {
        _cameras = await availableCameras();
      }
      await _startLiveFeed();
    } catch (e) {
      logger.e("AppCameraPage: Error Initializing Camera: $e");
      navigator.pop();
      Fluttertoast.showToast(msg: loc.appCameraNotFound);
    }
  }

  Future<void> _startLiveFeed() async {
    logger.d('EyeDetectorView _startLiveFeed');
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
      },
    );

    if (mounted) {
      setState(() {});
    }
  }

  void _addLoading() {
    if (mounted) {
      setState(() {
        _isLoading = true;
      });
    }
  }

  void _removeLoading() {
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!isPermissionGranted) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      logger.d("AppCameraPage: AppLifecycleState.inactive");
      _addLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d("AppCameraPage: AppLifecycleState.resumed");
      if (mounted) {
        _checkPermissions(context);
      }
    } else if (state == AppLifecycleState.paused) {
      logger.d("AppCameraPage: AppLifecycleState.paused");
      _addLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.detached) {
      logger.d("AppCameraPage: AppLifecycleState.detached");
      _addLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.hidden) {
      logger.d("AppCameraPage: AppLifecycleState.hidden");
      _addLoading();
      _stopLiveFeed();
    }
  }

  @override
  void dispose() {
    logger.d("AppCameraPage: Dispose Called");
    WidgetsBinding.instance.removeObserver(this);
    if (mounted) {
      _stopLiveFeed();
    }
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    logger.d('EyeDetectorView _stopLiveFeed');
    try {
      if (_controller.value.isInitialized) {
        await _controller.dispose();
      }
    } catch (e) {
      logger.d('Error stopping live feed: $e');
    }
  }

  Future<void> _toggleFlash() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    _addLoading();
    if (_controller.value.flashMode == FlashMode.off ||
        _controller.value.flashMode == FlashMode.auto) {
      await _controller.setFlashMode(FlashMode.torch);
    } else {
      await _controller.setFlashMode(FlashMode.off);
    }
    _removeLoading();
  }

  @override
  Widget build(BuildContext context) {
    var refRead = ref.read(vtCloseAssessmentHelperProvider);
    if (!isPermissionGranted || _cameras.isEmpty) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }
    if (!_controller.value.isInitialized) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          color: AppColor.black,
          borderRadius: BorderRadius.circular(AppSize.klradius),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.klradius),
                child: CameraPreview(
                  _controller,
                ),
              ),
            ),
            Positioned(
              top: AppSize.klpadding,
              right: AppSize.klpadding,
              child: Container(
                width: AppSize.klwidth * 2,
                height: AppSize.klheight * 2,
                margin: const EdgeInsets.only(right: AppSize.klpadding),
                decoration: BoxDecoration(
                  color: AppColor.white.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () async {
                    await _toggleFlash();
                  },
                  icon: Icon(
                    _controller.value.flashMode == FlashMode.off
                        ? Icons.flash_off
                        : Icons.flash_on,
                    color: AppColor.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: AppSize.width(context) * 0.05,
              left: AppSize.width(context) * 0.1,
              right: AppSize.width(context) * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: AppSize.klwidth * 2,
                    height: AppSize.klheight * 2,
                  ),
                  InkWell(
                    onTap: () async {
                      logger.d("camera button clicked");
                      try {
                        _addLoading();
                        // refRead.setLoading(true);
                        final XFile image = await _controller.takePicture();
                        // refRead.setLoading(false);
                        refRead.saveImage(image);
                      } catch (e) {
                        logger.d("camera error $e");
                      } finally {
                        _removeLoading();
                      }
                    },
                    child: Container(
                      width: AppSize.klwidth * 2,
                      height: AppSize.klheight * 2,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColor.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      logger.d("camera switch button clicked");
                      if (!_controller.value.isInitialized) {
                        return;
                      } else {
                        if (_controller.description.lensDirection ==
                            CameraLensDirection.front) {
                          _cameraLensDirection = CameraLensDirection.back;
                        } else {
                          _cameraLensDirection = CameraLensDirection.front;
                        }
                        await _stopLiveFeed();
                        _initializeCamera();
                      }
                    },
                    child: Container(
                      width: AppSize.klwidth * 2,
                      height: AppSize.klheight * 2,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.white.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(CupertinoIcons.camera_rotate),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
