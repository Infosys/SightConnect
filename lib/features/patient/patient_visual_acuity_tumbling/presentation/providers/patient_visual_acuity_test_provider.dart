import 'dart:math';

import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/data/source/local/tumbling_data_source.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/data/models/tumbling_models.dart';
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
    totalWrongLevelResponse = 0;
    currentLevelUserResponses = [];
    level = _dataSource.getLevel(0, GameMode.regular);
    singleEyeReport = {};
    _dataSource.resetDataSource();
  }

  void handUserResponse(UserResponse userResponse) {
    var isUserSwipeCorrect = _isUserSwipeDirectionCorrect(
      userResponse.swipeDirection,
      level!.questions[currentIndex!].direction,
    );
    if (isUserSwipeCorrect) {
      userResponse.isUserResponseCorrect = true;
      level!.questions[currentIndex!].questionStatus = QuestionStatus.right;
    } else {
      userResponse.isUserResponseCorrect = false;
      level!.questions[currentIndex!].questionStatus = QuestionStatus.wrong;
    }
    currentLevelUserResponses!.add(userResponse);

    if (isUserSwipeCorrect) {
      _handleRightResponse(userResponse);
    } else {
      _handleWrongResponse(userResponse);
    }
    logger.d({
      'currentIndex': currentIndex,
      'currentLevel': currentLevel,
      'isGameOver': isGameOver,
      'gameMode': gameMode,
      'totalWrongLevelResponse': totalWrongLevelResponse,
      "questionLength": level!.totalQuestions,
      "singleEyeReport": singleEyeReport,
      "eyesFinalReport": eyesFinalReport,
    });

    notifyListeners();
  }

  void _handleRightResponse(UserResponse userResponse) {
    singleEyeReport![currentLevel!] = currentLevelUserResponses!;

    if (currentIndex! + 1 == level!.totalQuestions) {
      currentLevel = currentLevel! + 1;
      if (currentLevel! > maxLevel) {
        isGameOver = true;
        eyesFinalReport[currentEye!] = singleEyeReport!;
        currentLevel = maxLevel;
      }
      currentIndex = 0;
      totalWrongLevelResponse = 0;
      currentLevelUserResponses = [];
      level = _dataSource.getLevel(currentLevel!, gameMode!);
    } else {
      currentIndex = currentIndex! + 1;
    }
  }

  void _handleWrongResponse(UserResponse userResponse) {
    totalWrongLevelResponse = totalWrongLevelResponse! + 1;
    if (currentLevel == 0 && gameMode == GameMode.regular) {
      isGameOver = true;
      eyesFinalReport[currentEye!] = singleEyeReport!;
    }
    if (userResponse.mode == GameMode.regular) {
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
      if (totalWrongLevelResponse == 4) {
        isGameOver = true;

        _dataSource.resetDataSource();
        currentIndex = 0;
        singleEyeReport![currentLevel!] = currentLevelUserResponses!;
        eyesFinalReport[currentEye!] = singleEyeReport!;
        currentLevelUserResponses = [];
        level = _dataSource.getLevel(currentLevel!, gameMode!);
      } else {
        currentIndex = currentIndex! + 1;
      }
    }
  }

  bool _isUserSwipeDirectionCorrect(
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

  int urgency = 1;

  void calculateTumblingEUrgency() {
    double leftEyeSight = calculateLeftEyeSigth();
    double rightEyeSight = calculateRightEyeSigth();

    int _leftEyeUrgency = _calculateUrgencyHelper(leftEyeSight);
    int _rightEyeUrgency = _calculateUrgencyHelper(rightEyeSight);

    int _urgency = max(_leftEyeUrgency, _rightEyeUrgency);

    logger.f("Tumbling Test Urgency: $_urgency");
  }

  int _calculateUrgencyHelper(double value) {
    if (value >= 1) {
      return 3;
    } else if (value >= 0.5) {
      return 2;
    } else {
      return 1;
    }
  }

  int getTumblingTestUrgency() {
    return urgency;
  }
}

var tumblingTestProvider = ChangeNotifierProvider(
  (ref) => PatientVisualAcuityTestProvider(
    TumblingDataSource(),
  ),
);
