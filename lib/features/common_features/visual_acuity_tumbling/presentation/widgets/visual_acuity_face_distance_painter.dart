import 'dart:math';
import 'package:flutter/material.dart';

import '../../../../../core/constants/app_color.dart';

class VisualAcuityFaceDistancePainter extends CustomPainter {
  VisualAcuityFaceDistancePainter(
    this.boxCenter,
    this.boxWidth,
    this.boxHeight,
    this.eyeLandmarkPoints,
    this.getCanvasSize,
  );

  final Point<double> boxCenter;
  final double boxWidth;
  final double boxHeight;
  final List<Point<double>> eyeLandmarkPoints;
  final Function(Size)? getCanvasSize;

  @override
  void paint(Canvas canvas, Size size) {
    getCanvasSize?.call(size);
    final Paint boxPainter = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..color = Colors.green;

    final center = Offset(boxCenter.x, boxCenter.y);

    canvas.drawRect(
      Rect.fromCenter(
        center: center,
        width: boxWidth,
        height: boxHeight,
      ),
      boxPainter,
    );

    //Eye Painter
    final paint = Paint()
      ..color = AppColor.primary
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    for (final landmark in eyeLandmarkPoints) {
      final rect = Rect.fromCenter(
        center: Offset(landmark.x, landmark.y),
        width: 50.0,
        height: 30.0,
      );
      canvas.drawOval(rect, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
