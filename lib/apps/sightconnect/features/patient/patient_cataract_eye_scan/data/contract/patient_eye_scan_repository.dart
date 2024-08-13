import 'package:camera/camera.dart';

abstract class PatientEyeScanRepository {
  getCataractPrediction({required XFile? eyeImage});
}
