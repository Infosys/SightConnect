import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final patientTriageResultProvider =
    ChangeNotifierProvider((ref) => ResultState());

class ResultState extends ChangeNotifier {
  //state - Completed, Complete test, Not Applicable
  //issueLevel - Normal, Minor, Major

  // ResultState() {
  //   setTopColors();
  // }

  final List<Map<String, String>> _resultState = [
    {
      "type": "Assessment\nQuestions",
      "state": "Completed",
      "issueLevel": "Normal",
    },
    {
      "type": "Acuity\nTest",
      "state": "Completed",
      "issueLevel": "Normal",
    },
    {
      "type": "Eye\nScan",
      "state": "Completed",
      "issueLevel": "Normal",
    },
  ];

  Color _backColor = AppColor.lightGrey.withOpacity(0.4);
  Color _checkColor = AppColor.red;
  Color _topCardColor = AppColor.green;

  String _highestPriority = '';

  IconData _icon = Icons.close;

  List<Map<String, String>> get resultState => _resultState;

  Color get topCardColor => _topCardColor;

  Color get backColor => _backColor;

  Color get checkColor => _checkColor;

  IconData get icon => _icon;

  String get highestPriority => _highestPriority;

  setTopColors() {
    for (var map in _resultState) {
      final issueLevel = map['issueLevel'];
      if (issueLevel == 'Major') {
        _highestPriority = 'Major';
      } else if (issueLevel == 'Minor' && _highestPriority != 'Major') {
        _highestPriority = 'Minor';
      } else if (issueLevel == 'Normal' && _highestPriority == '') {
        _highestPriority = 'Normal';
      }
      print('$_highestPriority I have no clue');
    }

    _topCardColor = _highestPriority == 'Normal'
        ? AppColor.green
        : _highestPriority == 'Minor'
            ? AppColor.orange
            : _highestPriority == 'Major'
                ? AppColor.red
                : AppColor.green;
  }

  setColors(int index) {
    if (_resultState[index]["state"] == "Completed") {
      _backColor = _resultState[index]["issueLevel"] == "Normal"
          ? AppColor.lightGreen.withOpacity(0.4)
          : _resultState[index]["issueLevel"] == "Minor"
              ? AppColor.lightOrange.withOpacity(0.4)
              : AppColor.lightRed.withOpacity(0.4);
      _checkColor = _resultState[index]["issueLevel"] == "Normal"
          ? AppColor.green
          : _resultState[index]["issueLevel"] == "Minor"
              ? AppColor.orange
              : AppColor.red;
      _icon = Icons.check;
    } else if (_resultState[index]["state"] == "Complete test") {
      _checkColor = AppColor.red;
      _icon = Icons.close;
      _backColor = AppColor.lightGrey.withOpacity(0.4);
    } else if (_resultState[index]["state"] == "Not Applicable") {
      _checkColor = AppColor.altGrey;
      _icon = Icons.remove;
      _backColor = AppColor.lightGrey.withOpacity(0.4);
    }
    setTopColors();
  }

  setResultState(int index, String state, String issueLevel) {
    _resultState[index]["state"] = state;
    _resultState[index]["issueLevel"] = issueLevel;
    setColors(index);
  }
}
