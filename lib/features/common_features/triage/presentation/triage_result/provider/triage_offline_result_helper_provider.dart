import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_triage_report/presentation/provider/optometritian_report_provider_offline.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../core/constants/app_color.dart';
import '../../../../../../main.dart';

var triageOfflineResultColorProvider =
    ChangeNotifierProvider((ref) => TriageOfflineResultColorProvider(
          ref.watch(optometritianOfflineReportProvider),
        ));

class TriageOfflineResultColorProvider extends ChangeNotifier {
  //state - Completed, Complete test, Not Applicable
  //issueLevel - Normal, Minor, Major

  // ResultState() {
  //   setTopColors();
  // }
  final OptometritianOfflineReportProvider _optometritianOfflineReportProvider;
  TriageOfflineResultColorProvider(this._optometritianOfflineReportProvider) {
    setData(0);
  }

  String? state;
  String? issueLevel;
  Color _backColor = AppColor.lightGrey.withOpacity(0.4);
  Color _checkColor = AppColor.red;
  Color _topCardColor = AppColor.green;
  String? _highestPriority;
  IconData _icon = Icons.close;
  List<Map<String, String>> get offlineResultState => _offlineResultState;
  Color get topCardColor => _topCardColor;
  Color get backColor => _backColor;
  Color get checkColor => _checkColor;
  IconData get icon => _icon;
  String? get highestPriority => _highestPriority;

  final List<Map<String, String>> _offlineResultState = [
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

  void setData(int index) {
    if (index == 0) {
      state =
          _optometritianOfflineReportProvider.getQuestionnaireResult().isEmpty
              ? 'Complete test'
              : 'Completed';
      issueLevel =
          _optometritianOfflineReportProvider.getQuestionnaireUrgency() ==
                  TriageUrgency.ROUTINE
              ? 'Normal'
              : _optometritianOfflineReportProvider.getQuestionnaireUrgency() ==
                      TriageUrgency.PRIORITY
                  ? 'Minor'
                  : 'Major';

      _offlineResultState[0]['state'] = state!;
      _offlineResultState[0]['issueLevel'] = issueLevel!;
      logger.d('this is result data of questionnaire ${_optometritianOfflineReportProvider.getQuestionnaireUrgency()}');
    } else if (index == 1) {
      
      state =
          _optometritianOfflineReportProvider.getVisionAcquityResult().isEmpty
              ? 'Complete test'
              : 'Completed';
      issueLevel = _optometritianOfflineReportProvider.visualAcuityUrgency() ==
              TriageUrgency.ROUTINE
          ? 'Normal'
          : _optometritianOfflineReportProvider.visualAcuityUrgency() ==
                  TriageUrgency.PRIORITY
              ? 'Minor'
              : 'Major';

      _offlineResultState[1]['state'] = state!;
      _offlineResultState[1]['issueLevel'] = issueLevel!;
      logger.d('this is result data of acuity ${_optometritianOfflineReportProvider.visualAcuityUrgency()}');
    }
    setColors(index);

  }

  setTopColors() {
    // for (var map in _offlineResultState) {
    //   final issueLevel = map['issueLevel'];
    //   if (issueLevel == 'Major') {
    //     _highestPriority = 'Major';
    //   } else if (issueLevel == 'Minor' && _highestPriority != 'Major') {
    //     _highestPriority = 'Minor';
    //   } else if (issueLevel == 'Normal' && _highestPriority == '') {
    //     _highestPriority = 'Normal';
    //   }
    //   logger.d('$_highestPriority I have no clue');
    // }

    if (_optometritianOfflineReportProvider.calculateTriageUrgency() ==
        TriageUrgency.ROUTINE) {
      _highestPriority = 'Normal';
    } else if (_optometritianOfflineReportProvider.calculateTriageUrgency() ==
        TriageUrgency.PRIORITY) {
      _highestPriority = 'Minor';
    } else if (_optometritianOfflineReportProvider.calculateTriageUrgency() ==
        TriageUrgency.EMERGENCY) {
      _highestPriority = 'Major';
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
    if (_offlineResultState[index]["state"] == "Completed") {
      _backColor = _offlineResultState[index]["issueLevel"] == "Normal"
          ? AppColor.lightGreen.withOpacity(0.4)
          : _offlineResultState[index]["issueLevel"] == "Minor"
              ? AppColor.lightOrange.withOpacity(0.4)
              : AppColor.lightRed.withOpacity(0.4);
      _checkColor = _offlineResultState[index]["issueLevel"] == "Normal"
          ? AppColor.green
          : _offlineResultState[index]["issueLevel"] == "Minor"
              ? AppColor.orange
              : AppColor.red;
      _icon = Icons.check;
    } else if (_offlineResultState[index]["state"] == "Complete test") {
      _checkColor = AppColor.red;
      _icon = Icons.close;
      _backColor = AppColor.lightGrey.withOpacity(0.4);
    } else if (_offlineResultState[index]["state"] == "Not Applicable") {
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
