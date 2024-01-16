import 'dart:math';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';


class GetEyeLandmark {

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

}



