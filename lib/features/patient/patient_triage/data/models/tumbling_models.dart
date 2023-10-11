import 'package:eye_care_for_all/features/patient/patient_triage/data/enums/tumbling_enums.dart';

class Level {
  int levelNumber;
  GameMode mode;
  String image;
  double size;
  int totalQuestions;
  List<Question> questions;

  Level({
    required this.levelNumber,
    required this.mode,
    required this.image,
    required this.size,
    required this.totalQuestions,
    required this.questions,
  });

  @override
  String toString() {
    return 'Level(levelNumber: $levelNumber, mode: $mode, image: $image, size: $size, totalQuestions: $totalQuestions, questions: $questions)';
  }
}

class Question {
  QuestionDirection direction;
  int angle;
  String image;
  QuestionStatus questionStatus;
  Question({
    required this.angle,
    this.image = "",
    required this.direction,
    this.questionStatus = QuestionStatus.unattempted,
  });

  @override
  String toString() => 'Question(angle: $angle)';
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
