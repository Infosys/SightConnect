import 'dart:math';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'dart:io';
import 'package:camera/camera.dart';
import '../widgets/coordinates_translator.dart';

class MachineLearningCameraService {
  static final Map<DeviceOrientation, int> _orientations = {
    DeviceOrientation.portraitUp: 0,
    DeviceOrientation.landscapeLeft: 90,
    DeviceOrientation.portraitDown: 180,
    DeviceOrientation.landscapeRight: 270,
  };

  Map<DeviceOrientation, int> get orientations => _orientations;

  static Future<Map<String, double>?> getCameraInfo() async {
    const platform = MethodChannel('com.infosys.eyecareforall/camera');
    try {
      final cameraInfo =
          await platform.invokeMapMethod<String, double>('getCameraInfo');
      return cameraInfo;
    } catch (e) {
      logger.e('Error getting camera info: $e');
      return {};
    }
  }

  static InputImage? inputImageFromCameraImage(
    CameraImage image,
    CameraDescription camera,
    DeviceOrientation deviceOrientation,
  ) {
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

  static Point<double> getEyeLandmark(List<FaceMeshPoint> eyeContours) {
    double leastX = 999999999;
    double leastY = 999999999;
    double highestX = 0;
    double highestY = 0;

    for (final point in eyeContours) {
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
    double eyeLandmarkX = (highestX + leastX) / 2;
    double eyeLandmarkY = (highestY + leastY) / 2;
    Point<double> eyeLandmark = Point<double>(eyeLandmarkX, eyeLandmarkY);
    return eyeLandmark;
  }

  static int calculateDistanceToScreen(
      Point<double> leftEyeLandmark,
      Point<double> rightEyeLandmark,
      double focalLength,
      double sensorX,
      double sensorY,
      int imageWidth,
      int imageHeight,
      {double averageEyeDistance = 63.0}) {
    double deltaX = (leftEyeLandmark.x - rightEyeLandmark.x).abs().toDouble();
    double deltaY = (leftEyeLandmark.y - rightEyeLandmark.y).abs().toDouble();
    double distance;
    if (deltaX >= deltaY) {
      distance =
          focalLength * (averageEyeDistance / sensorX) * (imageWidth / deltaX);
    } else {
      distance =
          focalLength * (averageEyeDistance / sensorY) * (imageHeight / deltaY);
    }
    return (distance / 10).round();
  }

  static Point<double> translator(
    Point<double> point,
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

  static bool areEyeLandmarksInsideTheBox(
    List<Point<double>> landmarkPoints,
    Point<double> center,
    double boxWidth,
    double boxHeight,
  ) {
    if (landmarkPoints.isEmpty) return false;
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

    for (final Point<double> point in landmarkPoints) {
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
}
