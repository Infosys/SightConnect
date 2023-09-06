class TumblingTest {
  TumblingTest({
    required this.level,
    required this.eSize,
    required this.eList,
    this.progress = 0,
  });

  int level;
  double eSize;
  List<Tstatus> eList;
  double progress;

  @override
  String toString() {
    return 'TumblingTest(level: $level, eSize: $eSize, eList: $eList, progress: $progress)';
  }
}

class Tstatus {
  EStatus status;
  TumblistTestEDirection direction;
  int quarter;
  Tstatus({
    required this.status,
    required this.direction,
    required this.quarter,
  });

  @override
  String toString() =>
      'Tstatus(status: $status, direction: $direction, quater: $quarter)';
}

enum TumblistTestEDirection { up, down, left, right }

enum QuestionStatus { correct, incorrect }

enum EStatus { correct, incorrect, notAttempted }

class VisionAcuity {
  int level;
  double eSize;
  double logMar;
  double distance;
  VisionAcuity({
    required this.level,
    required this.eSize,
    required this.logMar,
    this.distance = 40,
  });

  @override
  String toString() =>
      'VisionAcuity(level: $level, eSize: $eSize, logMar: $logMar, distance: $distance)';
}
