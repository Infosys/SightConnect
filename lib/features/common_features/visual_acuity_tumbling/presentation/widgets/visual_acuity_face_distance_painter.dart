import 'dart:math';
import 'package:flutter/material.dart';

class VisualAcuityFaceDistancePainter extends CustomPainter {
  VisualAcuityFaceDistancePainter(
    this.imageSize,
    this.boxCenter,
    this.distanceToFace,
    this.eyeLandmarkPoints,
    this.getCanvasSize,
  );

  final Size imageSize;
  final Point<double> boxCenter;
  final int? distanceToFace;
  final List<Point<double>> eyeLandmarkPoints;
  final Function(Size)? getCanvasSize;

  @override
  void paint(Canvas canvas, Size size) {
    getCanvasSize?.call(size);
    // Distance Painter
    const textStyle = TextStyle(
      color: Colors.black,
      backgroundColor: Colors.white,
      fontSize: 20,
    );

    String text = "";
    if (distanceToFace == null) {
      text = 'Face not Found!';
    } else if (distanceToFace != null) {
      text = 'Distance: $distanceToFace cm';
    }

    final textSpan = TextSpan(
      text: text,
      style: textStyle,
    );

    final distancePainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    distancePainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );

    final xCenter = boxCenter.x;
    const yCenter = 100.0;

    final offset = Offset(xCenter, yCenter) -
        Offset(distancePainter.width / 2, distancePainter.height / 2);

    distancePainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(VisualAcuityFaceDistancePainter oldDelegate) {
    return oldDelegate.imageSize != imageSize ||
        oldDelegate.eyeLandmarkPoints != eyeLandmarkPoints ||
        oldDelegate.distanceToFace != distanceToFace;
  }
}
