import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/local/fake_data_source.dart';
import 'package:flutter/material.dart';

class TumblingTestProvider extends ChangeNotifier {
  final List<TumblingTest> _tumblingTestList =
      FakeDataSource().tumblingTestList;

  List<TumblingTest> get tumblingTestList => _tumblingTestList;

  TumblistTestEDirection _direction = TumblistTestEDirection.up;

  TumblistTestEDirection get direction => _direction;

  void setDirection(TumblistTestEDirection direction) {
    _direction = direction;
    notifyListeners();
  }

  //Evaluate the User Response

  int _curretTestIndex = 0;
  int _currentQuestionIndex = 0;

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

  evaluteResponse(TumblistTestEDirection userResponse) {
    debugPrint("User Response: $userResponse");

    //Logic to check user response
    if (userResponse ==
        _tumblingTestList[_curretTestIndex]
            .eList[_currentQuestionIndex]
            .direction) {
      _tumblingTestList[_curretTestIndex].eList[_currentQuestionIndex].status =
          eStatus.correct;
      correctCount = correctCount + 1;
    } else {
      _tumblingTestList[_curretTestIndex].eList[_currentQuestionIndex].status =
          eStatus.incorrect;
      wrongCount = wrongCount + 1;
    }

    //logic for progress bar

    _tumblingTestList[_curretTestIndex].progress =
        _tumblingTestList[_curretTestIndex].progress + 20;

    //logic to check if one test is over and update question count

    if (currentQuestionIndex == 4) {
      _curretTestIndex = _curretTestIndex + 1;
      correctCount = 0;
      wrongCount = 0;
      currentQuestionIndex = 0;
    } else {
      _currentQuestionIndex = _currentQuestionIndex + 1;
    }

    checkGameOver();
    notifyListeners();
  }

  //calculating total correct and wrong questions count and checking if game is over

  int correctCount = 0;
  int wrongCount = 0;
  bool gameOver = false;

  get isGameOver => gameOver;

  void checkGameOver() {
    if (correctCount == 5 || wrongCount == 3 || _curretTestIndex == 6) {
      gameOver = true;
    }
    notifyListeners();
  }
}
