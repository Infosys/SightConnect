import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../main.dart';

class CameraPreviewCard extends ConsumerStatefulWidget {
  const CameraPreviewCard({super.key});

  @override
  ConsumerState<CameraPreviewCard> createState() => _CameraPreviewCardState();
}

class _CameraPreviewCardState extends ConsumerState<CameraPreviewCard>
    with WidgetsBindingObserver {
  bool isLoading = false;
  List<CameraDescription> _cameras = [];
  late CameraController _controller;
  ResolutionPreset defaultResolution = ResolutionPreset.max;
  CameraLensDirection _cameraLensDirection = CameraLensDirection.back;

  @override
  void initState() {
    super.initState();
    logger.d("init called");
    WidgetsBinding.instance.addObserver(this);
    _initializeCamera();
  }

  void _initializeCamera() async {
    logger.d('EyeDetectorView _initializeCamera');
    final NavigatorState navigator = Navigator.of(context);
    try {
      if (_cameras.isEmpty) {
        _cameras = await availableCameras();
      }

      await _startLiveFeed();
    } catch (e) {
      logger.d('Error initializing camera: $e');
      navigator.pop();
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

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!(_controller.value.isInitialized)) return;
    if (state == AppLifecycleState.inactive && mounted) {
      logger.d('EyeDetectorView AppLifecycleState.inactive');
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed && mounted) {
      logger.d('EyeDetectorView AppLifecycleState.resumed');
      _initializeCamera();
    } else if (state == AppLifecycleState.paused && mounted) {
      logger.d('EyeDetectorView AppLifecycleState.paused');
      _stopLiveFeed();
    } else if (state == AppLifecycleState.detached && mounted) {
      logger.d('EyeDetectorView AppLifecycleState.detached');
      _stopLiveFeed();
    } else if (state == AppLifecycleState.hidden && mounted) {
      logger.d('EyeDetectorView AppLifecycleState.hidden');
      _stopLiveFeed();
    }
  }

  @override
  void dispose() {
    logger.d('EyeDetectorView dispose');
    WidgetsBinding.instance.removeObserver(this);
    _stopLiveFeed();
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    logger.d('EyeDetectorView _stopLiveFeed');
    if (!mounted) {
      return;
    }
    try {
      if (_controller.value.isInitialized) {
        await _controller.dispose();
      }
    } catch (e) {
      logger.d('Error stopping live feed: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    var refRead = ref.read(vtCloseAssessmentHelperProvider);

    if (_cameras.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (!_controller.value.isInitialized) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          color: AppColor.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(AppSize.klradius),
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppSize.klradius),
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: CameraPreview(_controller),
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
                    onPressed: () {},
                    icon: const Icon(Icons.flash_on),
                  ),
                ),
              ),
              Positioned(
                bottom: AppSize.klpadding,
                left: AppSize.width(context) / 4,
                right: AppSize.width(context) / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: AppSize.klwidth * 2,
                      height: AppSize.klheight * 2,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.white.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.photo),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        logger.d("camera button clicked");
                        try {
                          // refRead.setLoading(true);
                          final XFile image = await _controller.takePicture();
                          // refRead.setLoading(false);
                          refRead.saveImage(image);
                        } catch (e) {
                          logger.d("camera error $e");
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
        ),
      );
    }
  }
}
