import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class EyeDetectorPainter extends CustomPainter {
  EyeDetectorPainter(
    this.eyeContourPoints,
    this.boxCenter,
    this.boxWidth,
    this.boxHeight,
    this.isEyeValid,
    this.getCanvasSize,
  );

  final List<Point<double>> eyeContourPoints;
  final Point<double> boxCenter;
  final double boxWidth;
  final double boxHeight;
  final bool isEyeValid;
  final Function(Size)? getCanvasSize;

  @override
  void paint(Canvas canvas, Size size) {
    // Fixed Box Painter
    getCanvasSize?.call(size);
    final Paint boxPainter = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..color = isEyeValid ? Colors.green : Colors.red;

    final center = Offset(boxCenter.x, boxCenter.y);

    canvas.drawRect(
      Rect.fromCenter(
        center: center,
        width: boxWidth,
        height: boxHeight,
      ),
      boxPainter,
    );

    // Eye Landmark Painters
    final Paint eyeLandmarkContour = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.0
      ..color = Colors.teal;

    List<Offset> eyeLandmarks = [];
    for (final point in eyeContourPoints) {
      eyeLandmarks.add(Offset(point.x, point.y));
    }

    canvas.drawPoints(
      PointMode.points,
      eyeLandmarks,
      eyeLandmarkContour,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}