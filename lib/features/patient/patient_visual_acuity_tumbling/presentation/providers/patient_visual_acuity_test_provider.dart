import 'dart:developer';
import 'dart:math' as math;
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/data/source/local/tumbling_local_source.dart';
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

    if (_currentLevel! > _maxLevel! ||
        _currentLevel == _maxLevel &&
            _currentIndex! + 1 == _level!.totalQuestions) {
      log("One");
      endGame();
      return;
    }
    if (_currentIndex! + 1 == _level!.totalQuestions) {
      log("Two");

      _moveToNextLevel();
    } else {
      log("Three");
      _currentIndex = _currentIndex! + 1;
    }
    notifyListeners();
  }

  void _handleWrongResponse(UserResponse userResponse) {
    _totalWrongLevelResponse = _totalWrongLevelResponse! + 1;
    _singleEyeReport![_currentLevel!] = _currentLevelUserResponses!;
    if (gameMode == GameMode.regular) {
      log("Four");
      if (_currentLevel! < 1) {
        log("Five");
        endGame();
        return;
      }

      _gameMode = GameMode.isFive;
      _moveToPreviousLevel();
    } else {
      if (_totalWrongLevelResponse == 3) {
        log("Six");
        endGame();
      } else if (_currentIndex! + 1 == _level!.totalQuestions) {
        log("Seven");
        _moveToNextLevel();
      } else {
        log("Eight");
        _currentIndex = _currentIndex! + 1;
      }
    }
    notifyListeners();
  }

  void _moveToNextLevel() {
    _currentLevel = _currentLevel! + 1;

    _currentIndex = 0;
    _totalWrongLevelResponse = 0;
    _currentLevelUserResponses = [];
    _level = _dataSource.getLevel(_currentLevel!, _gameMode!);
    notifyListeners();
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
    log("game");
    _eyesFinalReport[_currentEye!] = _singleEyeReport!;
    notifyListeners();
  }

  void resetTumblingTest() {
    startGame(Eye.left);
    notifyListeners();
  }

  double calculateLeftEyeSigth() {
    var leftEyeReport = _eyesFinalReport[Eye.left];
    var levels = leftEyeReport!.keys.toList();
    var isAllRegularMode = leftEyeReport.values.every((element) {
      return element.first.mode == GameMode.regular;
    });
    if (isAllRegularMode) {
      return _dataSource.getLevel(_findMax(levels), GameMode.regular).logMar;
    } else {
      var allWrongLevels = leftEyeReport.keys.where((element) {
        return leftEyeReport[element]!.first.mode == GameMode.isFive;
      }).toList();
      var maxLevel = _findMax(allWrongLevels);
      if (maxLevel == 0) {
        return _dataSource.getLevel(maxLevel, GameMode.isFive).logMar;
      } else if (maxLevel == 8) {
        var isThreeWrong = leftEyeReport[maxLevel]!
                .where((element) => element.isUserResponseCorrect == false)
                .length ==
            3;
        if (isThreeWrong) {
          return _dataSource.getLevel(maxLevel - 1, GameMode.isFive).logMar;
        } else {
          return _dataSource.getLevel(maxLevel, GameMode.isFive).logMar;
        }
      } else {
        return _dataSource.getLevel(maxLevel - 1, GameMode.isFive).logMar;
      }
    }
  }

  double calculateRightEyeSigth() {
    var leftEyeReport = _eyesFinalReport[Eye.right];
    var levels = leftEyeReport!.keys.toList();
    var isAllRegularMode = leftEyeReport.values.every((element) {
      return element.first.mode == GameMode.regular;
    });
    if (isAllRegularMode) {
      return _dataSource.getLevel(_findMax(levels), GameMode.regular).logMar;
    } else {
      var allWrongLevels = leftEyeReport.keys.where((element) {
        return leftEyeReport[element]!.first.mode == GameMode.isFive;
      }).toList();
      var maxLevel = _findMax(allWrongLevels);
      if (maxLevel == 0) {
        return _dataSource.getLevel(maxLevel, GameMode.isFive).logMar;
      } else if (maxLevel == 8) {
        var isThreeWrong = leftEyeReport[maxLevel]!
                .where((element) => element.isUserResponseCorrect == false)
                .length ==
            3;
        if (isThreeWrong) {
          return _dataSource.getLevel(maxLevel - 1, GameMode.isFive).logMar;
        } else {
          return _dataSource.getLevel(maxLevel, GameMode.isFive).logMar;
        }
      } else {
        return _dataSource.getLevel(maxLevel - 1, GameMode.isFive).logMar;
      }
    }
  }
  //

  int _findMax(List<int> input) {
    int max = input[0];
    for (int i = 1; i < input.length; i++) {
      if (input[i] > max) {
        max = input[i];
      }
    }
    return max;
  }

  int getTumblingTestUrgency() {
    double leftEyeSight = calculateLeftEyeSigth();
    double rightEyeSight = calculateRightEyeSigth();
    leftEyeSight = _dataSource.lookUpLogMarTable(leftEyeSight);
    rightEyeSight = _dataSource.lookUpLogMarTable(rightEyeSight);

    int leftEyeUrgency = _calculateUrgencyHelper(leftEyeSight);
    int rightEyeUrgency = _calculateUrgencyHelper(rightEyeSight);

    int urgency = math.max(leftEyeUrgency, rightEyeUrgency);
    logger.i({
      "leftEyeSight": leftEyeSight,
      "rightEyeSight": rightEyeSight,
      "leftEyeUrgency": leftEyeUrgency,
      "rightEyeUrgency": rightEyeUrgency,
    });

    return urgency;
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
}
