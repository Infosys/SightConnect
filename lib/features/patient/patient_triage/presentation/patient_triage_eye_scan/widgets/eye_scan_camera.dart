import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class EyeScanCamera extends StatelessWidget {
  const EyeScanCamera({
    super.key,
    required this.controller,
  });
  final CameraController controller;

  @override
  Widget build(BuildContext context) {
    return CameraPreview(controller);
  }
}
