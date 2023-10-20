import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/local/tumbling_data_source.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/enums/tumbling_enums.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/tumbling_models.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientVisualAcuityTestProvider with ChangeNotifier {
  final TumblingDataSource _dataSource;
  PatientVisualAcuityTestProvider(this._dataSource) {
    startGame(Eye.left);
  }

  late Level? level;
  late GameMode? gameMode;
  late Eye? currentEye;
  late int? currentLevel;
  late int? currentIndex;
  late bool? isGameOver;
  late bool? isRetry;
  late int? totalWrongLevelResponse;
  late List<UserResponse>? currentLevelUserResponses;
  late Map<int, List<UserResponse>>? singleEyeReport;
  Map<Eye, Map> eyesFinalReport = {};
  TumblingDataSource get dataSource => _dataSource;

  void startGame(Eye eye) {
    eyesFinalReport[eye] = {};
    gameMode = GameMode.regular;
    currentEye = eye;
    currentLevel = 0;
    currentIndex = 0;
    isGameOver = false;
    isRetry = false;
    totalWrongLevelResponse = 0;
    currentLevelUserResponses = [];
    level = _dataSource.getLevel(0, GameMode.regular);
    singleEyeReport = {};
    _dataSource.resetDataSource();
  }

  void handUserResponse(UserResponse userResponse) {
    var response = _isUserSwipDirectionCorrect(
      userResponse.swipeDirection,
      level!.questions[currentIndex!].direction,
    );
    if (response) {
      userResponse.isUserResponseCorrect = true;
      level!.questions[currentIndex!].questionStatus = QuestionStatus.right;
    } else {
      userResponse.isUserResponseCorrect = false;
      level!.questions[currentIndex!].questionStatus = QuestionStatus.wrong;
    }
    currentLevelUserResponses!.add(userResponse);
    if (response) {
      singleEyeReport![currentLevel!] = currentLevelUserResponses!;

      if (currentIndex! + 1 == level!.totalQuestions) {
        currentLevel = currentLevel! + 1;
        if (currentLevel! > maxLevel) {
          isGameOver = true;
          eyesFinalReport[currentEye!] = singleEyeReport!;
          currentLevel = maxLevel;
        }

        currentIndex = 0;
        isRetry = false;

        totalWrongLevelResponse = 0;

        currentLevelUserResponses = [];
        level = _dataSource.getLevel(currentLevel!, gameMode!);
      } else {
        currentIndex = currentIndex! + 1;
      }
    } else {
      // here you exit from regular mode
      totalWrongLevelResponse = totalWrongLevelResponse! + 1;
      if (currentLevel == 0) {
        isGameOver = true;
        eyesFinalReport[currentEye!] = singleEyeReport!;
      }

      if (userResponse.mode == GameMode.regular) {
        isRetry = true;
        gameMode = GameMode.isFive;
        if (currentLevel! > 0) {
          currentLevel = currentLevel! - 1;
          _dataSource.resetDataSource();
        }
        currentIndex = 0;
        singleEyeReport![currentLevel!] = currentLevelUserResponses!;
        currentLevelUserResponses = [];
        level = _dataSource.getLevel(currentLevel!, gameMode!);
      } else if (userResponse.mode == GameMode.isFive) {
        if (isRetry!) {
          isGameOver = true;
          eyesFinalReport[currentEye!] = singleEyeReport!;
        } else {
          if (totalWrongLevelResponse == 2) {
            isRetry = true;
            currentLevel = currentLevel! - 1;
            _dataSource.resetDataSource();
            currentIndex = 0;
            singleEyeReport![currentLevel!] = currentLevelUserResponses!;
            currentLevelUserResponses = [];
            level = _dataSource.getLevel(currentLevel!, gameMode!);
          } else {
            currentIndex = currentIndex! + 1;
          }
        }
      }
    }
    logger.d({
      'currentIndex': currentIndex,
      'currentLevel': currentLevel,
      'isGameOver': isGameOver,
      'gameMode': gameMode,
      "questionLength": level!.totalQuestions,
    });

    notifyListeners();
  }

  bool _isUserSwipDirectionCorrect(
    QuestionDirection userSwipDirection,
    QuestionDirection questionDirection,
  ) {
    return userSwipDirection == questionDirection;
  }

  double calculateLeftEyeSigth() {
    List<int> levels = eyesFinalReport[Eye.left]!.keys.toList() as List<int>;

    int secondLargeLevel =
        levels.reduce((curr, next) => curr > next ? curr : next);

    return _dataSource.getLogMarFromLevel(secondLargeLevel);
  }

  double calculateRightEyeSigth() {
    List<int> levels = eyesFinalReport[Eye.right]!.keys.toList() as List<int>;

    int secondLargeLevel =
        levels.reduce((curr, next) => curr > next ? curr : next);
    return _dataSource.getLogMarFromLevel(secondLargeLevel);
  }

  resetTumblingTest() {
    startGame(Eye.left);
    notifyListeners();
  }
}

var tumblingTestProvider = ChangeNotifierProvider(
  (ref) => PatientVisualAcuityTestProvider(
    TumblingDataSource(),
  ),
);
