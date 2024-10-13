/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/services/permission_service.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../main.dart';

class CameraPreviewCard extends ConsumerStatefulWidget {
  const CameraPreviewCard({super.key});

  @override
  ConsumerState<CameraPreviewCard> createState() => _CameraPreviewCardState();
}

class _CameraPreviewCardState extends ConsumerState<CameraPreviewCard>
    with WidgetsBindingObserver {
  List<CameraDescription> _cameras = [];
  late CameraController _controller;
  CameraLensDirection _cameraLensDirection = CameraLensDirection.back;
  final ResolutionPreset _defaultResolution = ResolutionPreset.max;
  String _progressMessage = "Loading...";
  bool _isLoading = false;
  bool _isPermissionGranted = false;

  @override
  void initState() {
    logger.d("CameraPage: Init State Called");
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkPermissions(context);
  }

  Future<void> _checkPermissions(BuildContext context) async {
    logger.d("CameraPage: Check Permissions Called");
    final NavigatorState navigator = Navigator.of(context);
    if (mounted) {
      setState(() {
        _isPermissionGranted = false;
        _isLoading = false;
      });
    }
    logger.d("CameraPage: Checking Permissions");
    final bool isGranted =
        await CameraPermissionService.checkPermissions(context);
    logger.d("CameraPage: isGranted: $isGranted");
    if (isGranted) {
      if (mounted) {
        setState(() {
          _isPermissionGranted = true;
        });
      }
      await _initializeCamera();
    } else {
      logger.d("CameraPage: Permission not granted");
      navigator.pop();
      if (context.mounted) {
        Fluttertoast.showToast(msg: context.loc!.permissionNotGranted);
      }
    }
  }

  Future<void> _initializeCamera() async {
    logger.d("CameraPage: Initialize Camera Called");
    final NavigatorState navigator = Navigator.of(context);
    final loc = context.loc!;
    try {
      if (_cameras.isEmpty) {
        _cameras = await availableCameras();
      }
      await _startLiveFeed();
    } catch (e) {
      logger.e("CameraPage: Error Initializing Camera: $e");
      navigator.pop();
      Fluttertoast.showToast(msg: loc.appCameraNotFound);
    }
  }

  Future<void> _startLiveFeed() async {
    logger.d("CameraPage: Start Live Feed Called");
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
      },
    );

    if (mounted) {
      setState(() {});
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    logger.d({
      "CameraPage: AppLifecycleState": "$state",
      "CameraPage: isPermissionGranted": "$_isPermissionGranted",
      "CameraPage: isLoading": "$_isLoading",
    });
    if (!_isPermissionGranted) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      logger.d("CameraPage: AppLifecycleState.inactive");
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d("CameraPage: AppLifecycleState.resumed");
      if (mounted) {
        _checkPermissions(context);
      }
    } else if (state == AppLifecycleState.paused) {
      logger.d("CameraPage: AppLifecycleState.paused");
      _stopLiveFeed();
    } else if (state == AppLifecycleState.detached) {
      logger.d("CameraPage: AppLifecycleState.detached");
      _stopLiveFeed();
    } else if (state == AppLifecycleState.hidden) {
      logger.d("CameraPage: AppLifecycleState.hidden");
      _stopLiveFeed();
    }
  }

  @override
  void dispose() {
    logger.d("CameraPage: Dispose Called");
    WidgetsBinding.instance.removeObserver(this);
    if (mounted) {
      _stopLiveFeed();
    }
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    logger.d("CameraPage: Stop Live Feed Called");
    try {
      if (_controller.value.isInitialized) {
        await _controller.dispose();
      }
    } catch (e) {
      logger.d("CameraPage: Error stopping live feed: $e");
    }
  }

  void _addLoading([String message = "Loading..."]) {
    if (mounted) {
      setState(() {
        _isLoading = true;
        _progressMessage = message;
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
  Widget build(BuildContext context) {
    var refRead = ref.read(vtCloseAssessmentHelperProvider);
    if (!_isPermissionGranted || _cameras.isEmpty) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    if (!_controller.value.isInitialized) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    } else {
      return LoadingOverlay(
        isLoading: _isLoading,
        progressMessage: _progressMessage,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.kl),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.kl),
                  child: CameraPreview(
                    _controller,
                  ),
                ),
              ),
              Positioned(
                top: AppSize.kl,
                right: AppSize.kl,
                child: Container(
                  width: AppSize.kl * 2,
                  height: AppSize.kl * 2,
                  margin: const EdgeInsets.only(right: AppSize.kl),
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
                      width: AppSize.kl * 2,
                      height: AppSize.kl * 2,
                    ),
                    InkWell(
                      onTap: () async {
                        await _takePicture(context, refRead);
                      },
                      child: Container(
                        width: AppSize.kl * 2,
                        height: AppSize.kl * 2,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: AppColor.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await _toggleCamera();
                      },
                      child: Container(
                        width: AppSize.kl * 2,
                        height: AppSize.kl * 2,
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

  Future<void> _toggleCamera() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    if (_controller.description.lensDirection == CameraLensDirection.front) {
      _cameraLensDirection = CameraLensDirection.back;
    } else {
      _cameraLensDirection = CameraLensDirection.front;
    }
    await _stopLiveFeed();
    if (mounted) {
      _checkPermissions(context);
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

  Future<void> _takePicture(
    BuildContext context,
    VTCloseAssessmentHelperNotifier refRead,
  ) async {
    final loc = context.loc!;
    _addLoading("Hold the camera steady...");
    try {
      final XFile? image = await _capturePicture(context);
      if (image == null) {
        return;
      }
      refRead.saveImage(image);
      _removeLoading();
    } on CameraException {
      Fluttertoast.showToast(msg: loc.appCameraNotFound);
      return;
    } catch (e) {
      logger.e("Camera exception: $e");
      Fluttertoast.showToast(msg: loc.appCameraException);
      return;
    }
  }

  Future<XFile?> _capturePicture(BuildContext context) async {
    if (!_controller.value.isInitialized) {
      return null;
    }
    final XFile image = await _controller.takePicture();
    return image;
  }
}
