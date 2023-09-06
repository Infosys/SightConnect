import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/local/tumbling_data_source.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/models/tumbling_test.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TumblingTestProvider extends ChangeNotifier {
  TumblingTestProvider(this._tumblingTestList);

  final List<TumblingTest> _tumblingTestList;
  TumblistTestEDirection _currentDirection = TumblistTestEDirection.up;
  int _curretTestIndex = 0;
  int _currentQuestionIndex = 0;
  int _totalCorrectCount = 0;
  int _totalWrongCount = 0;
  int _currentTestCorrectCount = 0;
  int _currentTestWrongCount = 0;
  bool _isGameOver = false;

  List<TumblingTest> get tumblingTestList => _tumblingTestList;
  TumblistTestEDirection get currentDirection => _currentDirection;

  int get currentTestIndex => _curretTestIndex;
  int get currentQuestionIndex => _currentQuestionIndex;
  int get totalCorrectCount => _totalCorrectCount;
  int get totalWrongCount => _totalWrongCount;
  int get currentTestCorrectCount => _currentTestCorrectCount;
  int get currentTestWrongCount => _currentTestWrongCount;
  bool get isGameOver => _isGameOver;

  set currentTestIndex(int index) {
    _curretTestIndex = index;
    notifyListeners();
  }

  set currentQuestionIndex(int index) {
    _currentQuestionIndex = index;
    notifyListeners();
  }

  void setDirection(TumblistTestEDirection direction) {
    _currentDirection = direction;
    notifyListeners();
  }

  void evaluteResponse(TumblistTestEDirection userResponse) {
    var currentTest = _tumblingTestList[_curretTestIndex];
    var currentQuestion = currentTest.eList[_currentQuestionIndex];
    var currentDirection = currentQuestion.direction;

    if (userResponse == currentDirection) {
      currentQuestion.status = EStatus.correct;
      _currentTestCorrectCount = _currentTestCorrectCount + 1;
      _totalCorrectCount = _totalCorrectCount + 1;
    } else {
      currentQuestion.status = EStatus.incorrect;
      _currentTestWrongCount = _currentTestWrongCount + 1;
      _totalWrongCount = _totalWrongCount + 1;
    }

    currentTest.progress += (1 / currentTest.eList.length);

    if (_currentQuestionIndex == currentTest.eList.length - 1) {
      _checkIsGameOver();
      _curretTestIndex = _curretTestIndex + 1;
      _currentTestCorrectCount = 0;
      _currentTestWrongCount = 0;
      _currentQuestionIndex = 0;
    } else {
      _currentQuestionIndex = _currentQuestionIndex + 1;
    }

    notifyListeners();
    _logGameScoreBoard();
  }

  void _checkIsGameOver() {
    if (_curretTestIndex == _tumblingTestList.length) {
      _isGameOver = true;
    }
    notifyListeners();
  }

  _logGameScoreBoard() {
    logger.d({
      "currentTestIndex": _curretTestIndex,
      "currentQuestionIndex": _currentQuestionIndex,
      "totalCorrectCount": _totalCorrectCount,
      "totalWrongCount": _totalWrongCount,
      "currentTestCorrectCount": _currentTestCorrectCount,
      "currentTestWrongCount": _currentTestWrongCount,
      "isGameOver": _isGameOver,
    });
  }
}

final tumblingTestProvider =
    ChangeNotifierProvider.autoDispose<TumblingTestProvider>((ref) {
  var t = TumblingTestDataSource().tumblingTestList;
  return TumblingTestProvider(t);
});
