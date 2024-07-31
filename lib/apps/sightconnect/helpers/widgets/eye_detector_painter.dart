import 'dart:math';
import 'dart:ui';

import 'package:eye_care_for_all/shared/constants/app_color.dart';
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
    getCanvasSize?.call(size);
    final center = Offset(boxCenter.x, boxCenter.y);

    // Overlay Line Painter
    final Paint overlayLinePainter = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.5
      ..color = Colors.white.withOpacity(0.35);

    canvas.drawLine(
      Offset(0, center.dy - boxHeight / 2),
      Offset(size.width, center.dy - boxHeight / 2),
      overlayLinePainter,
    );

    canvas.drawLine(
      Offset(0, center.dy + boxHeight / 2),
      Offset(size.width, center.dy + boxHeight / 2),
      overlayLinePainter,
    );

    canvas.drawLine(
      Offset(center.dx - boxWidth / 2, center.dy - boxHeight / 2 - 52),
      Offset(center.dx - boxWidth / 2, center.dy + boxHeight / 2 + 52),
      overlayLinePainter,
    );

    canvas.drawLine(
      Offset(center.dx + boxWidth / 2, center.dy - boxHeight / 2 - 52),
      Offset(center.dx + boxWidth / 2, center.dy + boxHeight / 2 + 52),
      overlayLinePainter,
    );

    // Fixed Box Painter
    final Paint boxPainter = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = isEyeValid ? AppColor.pureGreen : AppColor.pureRed
      ..strokeJoin = StrokeJoin.bevel;

    const cornerLength = 20.0; // Define the length of the corner lines

    final rect = Rect.fromCenter(
      center: center,
      width: boxWidth,
      height: boxHeight,
    );
    boxPainter.strokeCap = StrokeCap.round; // or StrokeCap.square

    // Top left corner
    canvas.drawLine(
      Offset(rect.left, rect.top),
      Offset(rect.left + cornerLength, rect.top),
      boxPainter,
    );
    canvas.drawLine(
      Offset(rect.left, rect.top),
      Offset(rect.left, rect.top + cornerLength),
      boxPainter,
    );

    // Top right corner
    canvas.drawLine(
      Offset(rect.right, rect.top),
      Offset(rect.right - cornerLength, rect.top),
      boxPainter,
    );
    canvas.drawLine(
      Offset(rect.right, rect.top),
      Offset(rect.right, rect.top + cornerLength),
      boxPainter,
    );

    // Bottom left corner
    canvas.drawLine(
      Offset(rect.left, rect.bottom),
      Offset(rect.left + cornerLength, rect.bottom),
      boxPainter,
    );
    canvas.drawLine(
      Offset(rect.left, rect.bottom),
      Offset(rect.left, rect.bottom - cornerLength),
      boxPainter,
    );

    // Bottom right corner
    canvas.drawLine(
      Offset(rect.right, rect.bottom),
      Offset(rect.right - cornerLength, rect.bottom),
      boxPainter,
    );
    canvas.drawLine(
      Offset(rect.right, rect.bottom),
      Offset(rect.right, rect.bottom - cornerLength),
      boxPainter,
    );

    // Eye Landmark Painters
    final Paint eyeLandmarkContour = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.0
      ..color = AppColor.white;

    List<Offset> eyeLandmarks = [];
    for (final point in eyeContourPoints) {
      eyeLandmarks.add(Offset(point.x, point.y));
    }

    canvas.drawPoints(
      PointMode.points,
      eyeLandmarks,
      eyeLandmarkContour,
    );

    // Overlay Painter
    final Paint overlayPainter = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0
      ..color = Colors.black45;

    canvas.drawPath(
      Path()
        ..addRect(Rect.fromLTRB(0, 0, size.width, size.height))
        ..fillType = PathFillType.evenOdd
        ..addRect(
          Rect.fromCenter(
            center: center,
            width: size.width,
            height: boxHeight + 104,
          ),
        ),
      overlayPainter,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
