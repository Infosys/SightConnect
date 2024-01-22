import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';

import '../pages/Eye_detector_view_page.dart';
import '../../../../visual_acuity_tumbling/presentation/widgets/coordinates_translator.dart';

class EyeDetectorService {
  static final Map<DeviceOrientation, int> _orientations = {
    DeviceOrientation.portraitUp: 0,
    DeviceOrientation.landscapeLeft: 90,
    DeviceOrientation.portraitDown: 180,
    DeviceOrientation.landscapeRight: 270,
  };

  Map<DeviceOrientation, int> get orientations => _orientations;

  static InputImage? inputImageFromCameraImage({
    required CameraImage image,
    required CameraDescription camera,
    required DeviceOrientation deviceOrientation,
  }) {
    // get image rotation
    // it is used in android to convert the InputImage from Dart to Java: https://github.com/flutter-ml/google_ml_kit_flutter/blob/master/packages/google_mlkit_commons/android/src/main/java/com/google_mlkit_commons/InputImageConverter.java
    // `rotation` is not used in iOS to convert the InputImage from Dart to Obj-C: https://github.com/flutter-ml/google_ml_kit_flutter/blob/master/packages/google_mlkit_commons/ios/Classes/MLKVisionImage%2BFlutterPlugin.m
    // in both platforms `rotation` and `camera.lensDirection` can be used to compensate `x` and `y` coordinates on a canvas: https://github.com/flutter-ml/google_ml_kit_flutter/blob/master/packages/example/lib/vision_detector_views/painters/coordinates_translator.dart

    final sensorOrientation = camera.sensorOrientation;
    InputImageRotation? rotation;
    if (Platform.isIOS) {
      rotation = InputImageRotationValue.fromRawValue(sensorOrientation);
    } else if (Platform.isAndroid) {
      var rotationCompensation = _orientations[deviceOrientation];
      if (rotationCompensation == null) return null;
      if (camera.lensDirection == CameraLensDirection.front) {
        // front-facing
        rotationCompensation = (sensorOrientation + rotationCompensation) % 360;
      } else {
        // back-facing
        rotationCompensation =
            (sensorOrientation - rotationCompensation + 360) % 360;
      }
      rotation = InputImageRotationValue.fromRawValue(rotationCompensation);
    }
    if (rotation == null) return null;

    // get image format
    final format = InputImageFormatValue.fromRawValue(image.format.raw);
    // validate format depending on platform
    // only supported formats:
    // * nv21 for Android
    // * bgra8888 for iOS
    if (format == null ||
        (Platform.isAndroid && format != InputImageFormat.nv21) ||
        (Platform.isIOS && format != InputImageFormat.bgra8888)) return null;

    // since format is constraint to nv21 or bgra8888, both only have one plane
    if (image.planes.length != 1) return null;
    final plane = image.planes.first;

    // compose InputImage using bytes
    return InputImage.fromBytes(
      bytes: plane.bytes,
      metadata: InputImageMetadata(
        size: Size(
          image.width.toDouble(),
          image.height.toDouble(),
        ),
        rotation: rotation, // used only in Android
        format: format, // used only in iOS
        bytesPerRow: plane.bytesPerRow, // used only in iOS
      ),
    );
  }

  static bool isLeftEye(TriageEyeType? currentEye) {
    /* We should flip the value because we are considering the user perspective 
     but google_ml_kit considers the viewers perspective.*/
    return !(currentEye == TriageEyeType.LEFT);
  }

  static Point<double> translator(
    FaceMeshPoint point,
    InputImage inputImage,
    Size canvasSize,
    CameraLensDirection cameraLensDirection,
  ) {
    final x = translateX(
      point.x,
      canvasSize,
      inputImage.metadata!.size,
      inputImage.metadata!.rotation,
      cameraLensDirection,
    );
    final y = translateY(
      point.y,
      canvasSize,
      inputImage.metadata!.size,
      inputImage.metadata!.rotation,
    );
    return Point(x, y);
  }

  static bool areEyesInsideTheBox(
    List<Point<double>> contourPoints,
    Point<double> center,
    double boxWidth,
    double boxHeight,
  ) {
    if (contourPoints.isEmpty) return false;
    final halfWidth = boxWidth / 2;
    final halfHeight = boxHeight / 2;
    final topLeft = Point<double>(
      center.x - halfWidth,
      center.y - halfHeight,
    );
    final topRight = Point<double>(
      center.x + halfWidth,
      center.y - halfHeight,
    );
    final bottomRight = Point<double>(
      center.x + halfWidth,
      center.y + halfHeight,
    );
    final bottomLeft = Point<double>(
      center.x - halfWidth,
      center.y + halfHeight,
    );

    for (final Point<double> point in contourPoints) {
      // Check if the point is inside the box
      if (!_doesPointLieInsideBox(
        topLeft,
        topRight,
        bottomRight,
        bottomLeft,
        point,
      )) {
        return false;
      }
    }
    // If every point lies inside the box return true
    return true;
  }

  static bool _doesPointLieInsideBox(
    Point<double> topLeft,
    Point<double> topRight,
    Point<double> bottomRight,
    Point<double> bottomLeft,
    Point<double> targetPoint,
  ) {
    // Check if the target point lies within the x-range of the square
    if (targetPoint.x >= topLeft.x && targetPoint.x <= topRight.x) {
      // Check if the target point lies within the y-range of the square
      if (targetPoint.y >= topLeft.y && targetPoint.y <= bottomLeft.y) {
        return true; // Point is inside the square
      }
    }
    return false; // Point is outside the square
  }

  static Map<String, double> getEyeCorners(List<Point<double>> eyePoints) {
    double leastX = 999999999;
    double leastY = 999999999;
    double highestX = 0;
    double highestY = 0;

    for (final point in eyePoints) {
      final x = point.x;
      final y = point.y;
      if (x < leastX) {
        leastX = x;
      }
      if (x > highestX) {
        highestX = x;
      }
      if (y < leastY) {
        leastY = y;
      }
      if (y > highestY) {
        highestY = y;
      }
    }

    return {
      "leastX": leastX,
      "leastY": leastY,
      "highestX": highestX,
      "highestY": highestY,
    };
  }

  static double getEyeWidthRatio(
    Map<String, double> eyeCorners,
    double boxWidth,
    double boxHeight,
  ) {
    // Calculate the eyeBox area
    final leastX = eyeCorners["leastX"] ?? 0;
    final highestX = eyeCorners["highestX"] ?? 9999999;
    final eyeBoxWidth = (highestX - leastX);
    final eyeWidthRatio = eyeBoxWidth / boxWidth;
    return eyeWidthRatio;
  }

  static bool areEyesCloseEnough(double eyeWidthRatio,
      {double threshold = 0.5}) {
    return (eyeWidthRatio > threshold) && (eyeWidthRatio < 1);
  }
}