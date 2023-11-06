import 'dart:math' as math;
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/data/source/local/tumbling_local_source.dart';
import 'dart:math';

import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/data/source/local/tumbling_data_source.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/data/models/tumbling_models.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef FinalEyesReport = Map<Eye, Map<int, List<UserResponse>>>;
typedef SingleEyeReport = Map<int, List<UserResponse>>;

var tumblingTestProvider = ChangeNotifierProvider(
  (ref) => PatientVisualAcuityTestProvider(ref.watch(tumlingLocalSource)),
);

class PatientVisualAcuityTestProvider with ChangeNotifier {
  final TumblingLocalSource _dataSource;
  PatientVisualAcuityTestProvider(this._dataSource) {
    startGame(Eye.left);
  }
  late Level? _level;
  late GameMode? _gameMode;
  late Eye? _currentEye;
  late int? _currentLevel;
  late int? _currentIndex;
  late bool? _isGameOver;
  late int? _maxLevel;
  late int? _totalWrongLevelResponse;
  late List<UserResponse>? _currentLevelUserResponses;
  late SingleEyeReport? _singleEyeReport;
  final FinalEyesReport _eyesFinalReport = {};

  void startGame(Eye eye) {
    _eyesFinalReport[eye] = {};
    _gameMode = GameMode.regular;
    _currentEye = eye;
    _currentLevel = 0;
    _currentIndex = 0;
    _maxLevel = _dataSource.maxLevel;
    _isGameOver = false;
    _totalWrongLevelResponse = 0;
    _currentLevelUserResponses = [];
    _level = _dataSource.getLevel(0, GameMode.regular);
    _singleEyeReport = {};
    _dataSource.resetTestState();
  }

  Level? get level => _level;
  GameMode? get gameMode => _gameMode;
  Eye? get currentEye => _currentEye;
  int? get currentLevel => _currentLevel;
  int? get currentIndex => _currentIndex;
  bool? get isGameOver => _isGameOver;
  int? get maxLevel => _maxLevel;

  void handUserResponse(UserResponse userResponse) {
    bool isSwipeCorrect = _isUserSwipeDirectionRight(
      userResponse.swipeDirection,
      _level!.questions[_currentIndex!].direction,
    );

    if (isSwipeCorrect) {
      userResponse.isUserResponseCorrect = true;
      _level!.questions[_currentIndex!].questionStatus = QuestionStatus.right;
    } else {
      userResponse.isUserResponseCorrect = false;
      _level!.questions[_currentIndex!].questionStatus = QuestionStatus.wrong;
    }
    _currentLevelUserResponses!.add(userResponse);
    if (isSwipeCorrect) {
      _handleRightResponse(userResponse);
    } else {
      _handleWrongResponse(userResponse);
    }

    if (kDebugMode) {
      logger.d({
        '_currentIndex': _currentIndex,
        '_currentLevel': _currentLevel,
        '_isGameOver': _isGameOver,
        '_gameMode': _gameMode,
        '_totalWrongLevelResponse': _totalWrongLevelResponse,
        "questionLength": _level!.totalQuestions,
        "_eyesFinalReport": _eyesFinalReport,
      });
    }

    notifyListeners();
  }

  void _handleRightResponse(UserResponse userResponse) {
    _singleEyeReport![_currentLevel!] = _currentLevelUserResponses!;

    if (_currentLevel! >= _maxLevel!) {
      endGame();
      return;
    }
    if (_currentIndex! + 1 == _level!.totalQuestions) {
      _moveToNextLevel();
    } else {
      _currentIndex = _currentIndex! + 1;
    }
    notifyListeners();
  }

  void _handleWrongResponse(UserResponse userResponse) {
    _totalWrongLevelResponse = _totalWrongLevelResponse! + 1;
    _singleEyeReport![_currentLevel!] = _currentLevelUserResponses!;
    if (gameMode == GameMode.regular) {
      if (_currentLevel! < 1) {
        endGame();
        return;
      }

      _gameMode = GameMode.isFive;
      _moveToPreviousLevel();
    } else {
      if (_totalWrongLevelResponse == 3) {
        endGame();
      } else if (_currentIndex! + 1 == _level!.totalQuestions) {
        _moveToNextLevel();
      } else {
        _currentIndex = _currentIndex! + 1;
      }
    }
  }

  void _moveToNextLevel() {
    _currentLevel = _currentLevel! + 1;
    _currentIndex = 0;
    _totalWrongLevelResponse = 0;
    _currentLevelUserResponses = [];
    _level = _dataSource.getLevel(_currentLevel!, _gameMode!);
  }

  void _moveToPreviousLevel() {
    _currentLevel = _currentLevel! - 1;
    _currentIndex = 0;
    _totalWrongLevelResponse = 0;
    _currentLevelUserResponses = [];
    _level = _dataSource.getLevel(_currentLevel!, _gameMode!);
    notifyListeners();
  }

  bool _isUserSwipeDirectionRight(
    QuestionDirection userSwipDirection,
    QuestionDirection questionDirection,
  ) {
    return userSwipDirection == questionDirection;
  }

  void endGame() {
    _isGameOver = true;
    _eyesFinalReport[_currentEye!] = _singleEyeReport!;
    notifyListeners();
  }

  void resetTumblingTest() {
    startGame(Eye.left);
    notifyListeners();
  }

  int _calculateUrgencyHelper(double value) {
    logger.i("Tumbling Test Value: $value");
    if (value >= 1) {
      return 3;
    } else if (value >= 0.5) {
      return 2;
    } else {
      return 1;
    }
  }

  int getTumblingTestUrgency() {
    double leftEyeSight = calculateLeftEyeSigth();
    double rightEyeSight = calculateRightEyeSigth();

    int leftEyeUrgency = _calculateUrgencyHelper(leftEyeSight);
    int rightEyeUrgency = _calculateUrgencyHelper(rightEyeSight);

    int urgency = max(leftEyeUrgency, rightEyeUrgency);

    return urgency;
  }

  double calculateLeftEyeSigth() {
    var leftEyeReport = _eyesFinalReport[Eye.left];
    var levels = leftEyeReport!.keys.toList();
    var lastLevel = _findMax(levels);
    var mode = leftEyeReport[lastLevel]!.first.mode;
    if (mode == GameMode.regular) {
      return _dataSource.getLevel(lastLevel, GameMode.regular).logMar;
    } else {
      var secondMax = _findSecondMax(levels);
      return _dataSource.getLevel(secondMax, GameMode.isFive).logMar;
    }
  }

  double calculateRightEyeSigth() {
    var leftEyeReport = _eyesFinalReport[Eye.right];
    var levels = leftEyeReport!.keys.toList();
    var lastLevel = _findMax(levels);
    var mode = leftEyeReport[lastLevel]!.first.mode;
    if (mode == GameMode.regular) {
      return _dataSource.getLevel(lastLevel, GameMode.regular).logMar;
    } else {
      var secondMax = _findSecondMax(levels);
      return _dataSource.getLevel(secondMax, GameMode.isFive).logMar;
    }
  }

  int _findMax(List<int> input) {
    int max = input[0];
    for (int i = 1; i < input.length; i++) {
      if (input[i] > max) {
        max = input[i];
      }
    }
    return max;
  }

  int _findSecondMax(List<int> input) {
    if (input.length > 1) {
      input.sort();
      return input[input.length - 2];
    }
    return input.first;
  }
}
