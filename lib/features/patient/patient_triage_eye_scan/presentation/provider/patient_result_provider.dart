import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final resultStateProvider = ChangeNotifierProvider((ref) => ResultState());

class ResultState extends ChangeNotifier {
  final List<Map<String, String>> _resultState = [
    {
      "type": "Assessment\nQuestions",
      "state": "Completed",
      "issueLevel": "Normal",
    },
    {
      "type": "Aquity\nTest",
      "state": "Complete test",
      "issueLevel": "Minor",
    },
    {
      "type": "Eye\nScan",
      "state": "Not Applicable",
      "issueLevel": "Major",
    },
  ];

  Color _backColor = AppColor.lightGrey.withOpacity(0.4);
  Color _checkColor = AppColor.red;
  IconData _icon = Icons.close;

  List<Map<String, String>> get resultState => _resultState;

  Color get backColor => _backColor;

  Color get checkColor => _checkColor;

  IconData get icon => _icon;

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
  }


  setResultState(int index, String state, String issueLevel) {
    _resultState[index]["state"] = state;
    _resultState[index]["issueLevel"] = issueLevel;
    setColors(index);
  }

}
