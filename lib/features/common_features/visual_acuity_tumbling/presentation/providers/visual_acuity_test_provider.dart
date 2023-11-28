import 'dart:math' as math;
import 'package:eye_care_for_all/features/common_features/triage/data/models/post_observations_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/models/tumbling_models.dart';
import '../../data/source/local/tumbling_local_source.dart';

typedef FinalEyesReport = Map<Eye, Map<int, List<UserResponse>>>;
typedef SingleEyeReport = Map<int, List<UserResponse>>;

var tumblingTestProvider = ChangeNotifierProvider(
  (ref) => VisualAcuityTestProvider(
    ref.watch(tumlingLocalSource),
    ref.read(triageLocalSourceProvider),
  ),
);

class VisualAcuityTestProvider with ChangeNotifier {
  final TumblingLocalSource _dataSource;
  TriageLocalSource triageLocalSourceProvider;
  VisualAcuityTestProvider(
    this._dataSource,
    this.triageLocalSourceProvider,
  ) {
    startGame(Eye.right);
  }
  late Level? _level;
  late GameMode? _gameMode;
  late Eye? _currentEye;
  late int? _currentLevel;
  late int? _currentIndex;
  late bool? _isGameOver;
  late int? _maxLevel;
  late int? _totalWrongLevelResponse;
  bool isTestCompleted = false;

  int? _currentMaxLevelLeftEye;
  int? _currentMaxLevelRightEye;
  int? _currentMaxLevelBothEye;

  late List<UserResponse>? _currentLevelUserResponses;
  late SingleEyeReport? _singleEyeReport;
  final FinalEyesReport _eyesFinalReport = {};
  set setIsTestCompleted(bool value) {
    isTestCompleted = value;
    notifyListeners();
  }

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

    if (eye == Eye.left) {
      _currentMaxLevelLeftEye = 0;
    }
    if (eye == Eye.right) {
      _currentMaxLevelRightEye = 0;
    }
    if (eye == Eye.both) {
      _currentMaxLevelBothEye = 0;
    }

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
        "_eyesFinalReport": _eyesFinalReport,
      });
    }

    notifyListeners();
  }

  void _handleRightResponse(UserResponse userResponse) {
    _singleEyeReport![_currentLevel!] = _currentLevelUserResponses!;

    if (_gameMode == GameMode.regular) {
      _moveToNextLevel();
    } else if (_gameMode == GameMode.isFive) {
      if (_currentIndex! + 1 == _level!.totalQuestions) {
        _moveToNextLevel();
      } else {
        _moveToNextQuestion();
      }
    }
  }

  void _handleWrongResponse(UserResponse userResponse) {
    _singleEyeReport![_currentLevel!] = _currentLevelUserResponses!;
    _totalWrongLevelResponse = _totalWrongLevelResponse! + 1;

    if (_gameMode == GameMode.regular) {
      if (_currentLevel! == 0) {
        _endGame();
      } else {
        _transitionToIsFiveMode();
      }
    } else if (_gameMode == GameMode.isFive) {
      if (_totalWrongLevelResponse == 3) {
        _endGame();
      } else if (_currentIndex! + 1 == _level!.totalQuestions) {
        _moveToNextLevel();
      } else {
        _moveToNextQuestion();
      }
    }
  }

  void _moveToNextQuestion() {
    _currentIndex = _currentIndex! + 1;
    notifyListeners();
  }

  void _moveToNextLevel() {
    if (currentEye == Eye.left) {
      _currentMaxLevelLeftEye = _currentMaxLevelLeftEye! + 1;
    } else if (currentEye == Eye.right) {
      _currentMaxLevelRightEye = _currentMaxLevelRightEye! + 1;
    } else if (currentEye == Eye.both) {
      _currentMaxLevelBothEye = _currentMaxLevelBothEye! + 1;
    }

    if (_currentLevel == maxLevel) {
      _endGame();
      return;
    }
    _currentLevel = _currentLevel! + 1;
    _currentIndex = 0;
    _totalWrongLevelResponse = 0;
    _currentLevelUserResponses = [];
    _level = _dataSource.getLevel(_currentLevel!, _gameMode!);
    notifyListeners();
  }

  void _transitionToIsFiveMode() {
    _gameMode = GameMode.isFive;
    _currentLevel = _currentLevel! - 1;
    _currentIndex = 0;
    _totalWrongLevelResponse = 0;
    _currentLevelUserResponses = [];
    _level = _dataSource.getLevel(_currentLevel!, _gameMode!);

    if (currentEye == Eye.left) {
      _currentMaxLevelLeftEye = math.max(_currentMaxLevelLeftEye! - 1, 0);
    } else if (currentEye == Eye.right) {
      _currentMaxLevelRightEye = math.max(_currentMaxLevelRightEye! - 1, 0);
    } else if (currentEye == Eye.both) {
      _currentMaxLevelBothEye = math.max(_currentMaxLevelBothEye! - 1, 0);
    }

    notifyListeners();
  }

  void _endGame() {
    _isGameOver = true;
    _eyesFinalReport[_currentEye!] = _singleEyeReport!;
    notifyListeners();
  }

  bool _isUserSwipeDirectionRight(
    QuestionDirection userSwipDirection,
    QuestionDirection questionDirection,
  ) {
    return userSwipDirection == questionDirection;
  }

  void reset() {
    startGame(Eye.right);
    notifyListeners();
  }

  double calculateEyeSight(Eye eye) {
    if (eye == Eye.left) {
      var maxLevelNew = math.max(_currentMaxLevelLeftEye! - 1, 0);
      logger.d("maxLevelNew Left: $maxLevelNew");

      var log = _dataSource.getLevel(maxLevelNew, GameMode.regular).logMar;
      return _dataSource.lookUpLogMarTable(log);
    } else if (eye == Eye.right) {
      var maxLevelNew = math.max(_currentMaxLevelRightEye! - 1, 0);
      logger.d("maxLevelNew Right: $maxLevelNew");

      var log = _dataSource.getLevel(maxLevelNew, GameMode.regular).logMar;
      return _dataSource.lookUpLogMarTable(log);
    }

    var maxLevelNew = math.max(_currentMaxLevelBothEye! - 1, 0);
    logger.d("maxLevelNew Both: $maxLevelNew");
    var log = _dataSource.getLevel(maxLevelNew, GameMode.regular).logMar;
    return _dataSource.lookUpLogMarTable(log);
  }

  int getTumblingTestUrgency() {
    double leftEyeSight = calculateEyeSight(Eye.left);
    double rightEyeSight = calculateEyeSight(Eye.right);
    double bothEyeSight = calculateEyeSight(Eye.both);

    int leftEyeUrgency = _calculateUrgencyHelper(leftEyeSight);
    int rightEyeUrgency = _calculateUrgencyHelper(rightEyeSight);
    int bothEyeUrgency = _calculateUrgencyHelper(bothEyeSight);

    int urgency =
        [leftEyeUrgency, rightEyeUrgency, bothEyeUrgency].reduce(math.max);

    logger.i({
      "leftEyeSight": leftEyeSight,
      "leftEyeUrgency": leftEyeUrgency,
      "rightEyeSight": rightEyeSight,
      "rightEyeUrgency": rightEyeUrgency,
      "bothEyeSight": bothEyeSight,
      "bothEyeUrgency": bothEyeUrgency,
      "FINAL URGENCY": urgency,
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

  String getCurrentEyeText(Eye eye) {
    return switch (eye) {
      Eye.left => "Left Eye",
      Eye.right => "Right Eye",
      Eye.both => "Both Eye",
    };
  }

  /// set patient vision acuity tumbling based on the TriageAssessment model
  List<PostObservationsModel> getVisionAcuityTumblingResponse() {
    double leftEyeSight = calculateEyeSight(Eye.left);
    double rightEyeSight = calculateEyeSight(Eye.right);

    List<PostObservationsModel> observationList = [
      PostObservationsModel(
        identifier: 50000001,
        value: "leftEyeSight",
        score: leftEyeSight,
      ),
      PostObservationsModel(
        identifier: 50000002,
        value: "rightEyeSight",
        score: rightEyeSight,
      ),
    ];
    logger.d(observationList);
    return observationList;
  }

  saveVisionAcuityResponseToDB() {
    logger.f("Saving Vision Acuity Response to DB");
    triageLocalSourceProvider.saveTriageVisualAcuityLocally(
        triageVisualAcuity: getVisionAcuityTumblingResponse());
  }
}
