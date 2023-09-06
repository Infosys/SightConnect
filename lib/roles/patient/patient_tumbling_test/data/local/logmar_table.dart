import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/models/tumbling_test.dart';

double getTumblingESize(int level) {
  final data = _getLogMarValues();
  return data.firstWhere((element) => element.level == level).eSize;
}

List<VisionAcuity> _getLogMarValues() {
  return [
    VisionAcuity(
      level: 1,
      logMar: 0.1,
      eSize: 0.5817,
    ),
    VisionAcuity(
      level: 2,
      logMar: 0.2,
      eSize: 0.29,
    ),
    VisionAcuity(
      level: 3,
      logMar: 0.3,
      eSize: 1.165,
    ),
    VisionAcuity(
      level: 4,
      logMar: 0.25,
      eSize: 0.23,
    ),
    VisionAcuity(
      level: 5,
      logMar: 0.4,
      eSize: 0.1454,
    ),
    VisionAcuity(
      level: 6,
      logMar: 0.5,
      eSize: 0.1163,
    ),
    VisionAcuity(
      level: 7,
      logMar: 0.63,
      eSize: 0.093,
    ),
    VisionAcuity(
      level: 8,
      logMar: 0.8,
      eSize: 0.0727,
    ),
    VisionAcuity(
      level: 9,
      logMar: 1,
      eSize: 0.0581,
    ),
  ];
}
