import '../enums/tumbling_enums.dart';

class Level {
  int levelNumber;
  GameMode mode;
  String image;
  double size;
  double? sizeTwoMeters;
  double? sizeThreeMeters;
  double logMar;
  String snellerFraction;
  int totalQuestions;
  List<Question> questions;

  Level({
    required this.levelNumber,
    required this.mode,
    required this.image,
    required this.size,
    this.sizeTwoMeters,
    this.sizeThreeMeters,
    required this.logMar,
    required this.snellerFraction,
    required this.totalQuestions,
    required this.questions,
  });

  @override
  String toString() {
    return 'Level(levelNumber: $levelNumber, mode: $mode, image: $image, size: $size, sizeTwoMeters: $sizeTwoMeters, sizeThreeMeters : $sizeThreeMeters,totalQuestions: $totalQuestions, questions: $questions)';
  }
}

class Question {
  QuestionDirection direction;
  int angle;

  QuestionStatus questionStatus;
  Question({
    required this.angle,
    required this.direction,
    this.questionStatus = QuestionStatus.unattempted,
  });

  @override
  String toString() =>
      'Question(angle: $angle, direction: $direction , questionStatus: $questionStatus)';
}

class UserResponse {
  int levelNumber;
  QuestionDirection swipeDirection;
  GameMode mode;
  int questionIndex;
  bool isUserResponseCorrect;
  UserResponse({
    required this.levelNumber,
    required this.swipeDirection,
    required this.mode,
    required this.questionIndex,
    required this.isUserResponseCorrect,
  });

  @override
  String toString() {
    return 'UserResponse(levelNumber: $levelNumber, swipeDirection: $swipeDirection, mode: $mode, questionIndex: $questionIndex, isUserResponseCorrect: $isUserResponseCorrect)';
  }
}
