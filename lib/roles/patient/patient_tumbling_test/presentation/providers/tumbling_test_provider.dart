import 'dart:developer';

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
  int totalCorrectCount = 0;
  int totalWrongCount = 0;
  int currentTestCorrectCount = 0;
  int currentTestWrongCount = 0;
  bool isGameOver = false;

  List<TumblingTest> get tumblingTestList => _tumblingTestList;
  TumblistTestEDirection get currentDirection => _currentDirection;

  int get currentTestIndex => _curretTestIndex;
  int get currentQuestionIndex => _currentQuestionIndex;

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
    debugPrint("userResponse: $userResponse");

    if (userResponse ==
        _tumblingTestList[_curretTestIndex]
            .eList[_currentQuestionIndex]
            .direction) {
      _tumblingTestList[_curretTestIndex].eList[_currentQuestionIndex].status =
          EStatus.correct;
      currentTestCorrectCount = currentTestCorrectCount + 1;
      totalCorrectCount = totalCorrectCount + 1;
    } else {
      _tumblingTestList[_curretTestIndex].eList[_currentQuestionIndex].status =
          EStatus.incorrect;
      currentTestWrongCount = currentTestWrongCount + 1;
      totalWrongCount = totalWrongCount + 1;
    }

    _tumblingTestList[_curretTestIndex].progress =
        _tumblingTestList[_curretTestIndex].progress +
            (1 / _tumblingTestList[_curretTestIndex].eList.length);

    if (currentQuestionIndex ==
        _tumblingTestList[currentTestIndex].eList.length - 1) {
      _curretTestIndex = _curretTestIndex + 1;
      currentTestCorrectCount = 0;
      currentTestWrongCount = 0;
      currentQuestionIndex = 0;
    } else {
      _currentQuestionIndex = _currentQuestionIndex + 1;
    }

    _checkIsGameOver();
    notifyListeners();
    printDetails();
  }

  void _checkIsGameOver() {
    if (_curretTestIndex == _tumblingTestList.length) {
      isGameOver = true;
    }
    notifyListeners();
  }

  printDetails() {
    log("currentDirection: $currentDirection");
    log("currentTestCorrectCount: $currentTestCorrectCount");
    log("currentTestWrongCount: $currentTestWrongCount");
    log("currentTestIndex: $currentTestIndex");
    log("currentQuestionIndex: $currentQuestionIndex'");

    log("totalCorrectCount: $totalCorrectCount");
    log("totalWrongCount: $totalWrongCount");
    log("isGameOver: $isGameOver");
  }
}

final tumblingTestProvider =
    ChangeNotifierProvider.autoDispose<TumblingTestProvider>((ref) {
  var t = TumblingTestDataSource().tumblingTestList;

  return TumblingTestProvider(t);
});
