import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../core/constants/app_color.dart';
import '../../../../../../main.dart';

var triageResultColorProvider =
    ChangeNotifierProvider((ref) => TriageResultColorProvider());

class TriageResultColorProvider extends ChangeNotifier {

  bool _isOffline = true;
  set isOfflineState(bool value) {
    _isOffline = value;
    notifyListeners();
  }

  bool get isOffline => _isOffline;

  final List<Map<String, String>> _onlineResultState = [
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

  set onlineResultState(List<Map<String, String>> value) {
    _onlineResultState.clear();
    _onlineResultState.addAll(value);
    notifyListeners();
  }

  Color _backColor = AppColor.lightGrey.withOpacity(0.4);
  Color _checkColor = AppColor.red;
  Color _topCardColor = AppColor.green;

  String _highestPriority = '';

  IconData _icon = Icons.close;

  List<Map<String, String>> get onlineResultState => _onlineResultState;

  Color get topCardColor => _topCardColor;

  Color get backColor => _backColor;

  Color get checkColor => _checkColor;

  IconData get icon => _icon;

  String get highestPriority => _highestPriority;

  setTopColors() {
    for (var map in _onlineResultState) {
      final issueLevel = map['issueLevel'];
      if (issueLevel == 'Major') {
        _highestPriority = 'Major';
      } else if (issueLevel == 'Minor' && _highestPriority != 'Major') {
        _highestPriority = 'Minor';
      } else if (issueLevel == 'Normal' && _highestPriority == '') {
        _highestPriority = 'Normal';
      }
      logger.d('$_highestPriority I have no clue');
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
    if (_onlineResultState[index]["state"] == "Completed") {
      _backColor = _onlineResultState[index]["issueLevel"] == "Normal"
          ? AppColor.lightGreen.withOpacity(0.4)
          : _onlineResultState[index]["issueLevel"] == "Minor"
              ? AppColor.lightOrange.withOpacity(0.4)
              : AppColor.lightRed.withOpacity(0.4);
      _checkColor = _onlineResultState[index]["issueLevel"] == "Normal"
          ? AppColor.green
          : _onlineResultState[index]["issueLevel"] == "Minor"
              ? AppColor.orange
              : AppColor.red;
      _icon = Icons.check;
    } else if (_onlineResultState[index]["state"] == "Complete test") {
      _checkColor = AppColor.red;
      _icon = Icons.close;
      _backColor = AppColor.lightGrey.withOpacity(0.4);
    } else if (_onlineResultState[index]["state"] == "Not Applicable") {
      _checkColor = AppColor.altGrey;
      _icon = Icons.remove;
      _backColor = AppColor.lightGrey.withOpacity(0.4);
    }
    setTopColors();
  }

  setResultState(int index) {
    setColors(index);
  }
}
