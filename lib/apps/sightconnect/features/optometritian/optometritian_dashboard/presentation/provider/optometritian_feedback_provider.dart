/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var feedBackProvider =
    ChangeNotifierProvider.autoDispose<FeedBackNotifier>((ref) {
  return FeedBackNotifier();
});

class FeedBackNotifier extends ChangeNotifier {
  String _questionarie = "1.1";
  String _observation = "1.1";
  String _eyeScan = "1.1";
  String _overallReview = "";
  final TextEditingController _feedBackController = TextEditingController();
  bool _isLoading = false;
  bool _assessmentAssistance = false;
  bool _visualAcuityAssistance = false;
  bool _visualAcuityAided = false;
  bool _eyeScanAssistance = false;
  bool _isCataract = false;
  bool _isRedEye = false;
  bool _cataractRightEye = false;
  bool _cataractLeftEye = false;
  bool _redEyeRightEye = false;
  bool _redEyeLeftEye = false;

  String get questionarie => _questionarie;
  String get observation => _observation;
  String get eyeScan => _eyeScan;
  String get overallReview => _overallReview;
  TextEditingController get feedBackController => _feedBackController;
  bool get isLoading => _isLoading;
  bool get assessmentAssistance => _assessmentAssistance;
  bool get visualAcuityAssistance => _visualAcuityAssistance;
  bool get visualAcuityAided => _visualAcuityAided;
  bool get eyeScanAssistance => _eyeScanAssistance;
  bool get isCataract => _isCataract;
  bool get isRedEye => _isRedEye;
  bool get isCataractRightEye => _cataractRightEye;
  bool get isCataractLeftEye => _cataractLeftEye;
  bool get isRedEyeRightEye => _redEyeRightEye;
  bool get isRedEyeLeftEye => _redEyeLeftEye;

  set redEyeLeftEye(bool value) {
    _redEyeLeftEye = value;
    notifyListeners();
  }

  set redEyeRightEye(bool value) {
    _redEyeRightEye = value;
    notifyListeners();
  }

  set cataractRightEye(bool value) {
    _cataractRightEye = value;
    notifyListeners();
  }

  set cataractLeftEye(bool value) {
    _cataractLeftEye = value;
    notifyListeners();
  }

  set isRedEye(bool value) {
    _isRedEye = value;
    notifyListeners();
  }

  set isCataract(bool value) {
    _isCataract = value;
    notifyListeners();
  }

  set visualAcuityAssistance(bool value) {
    _visualAcuityAssistance = value;
    notifyListeners();
  }

  set visualAcuityAided(bool value) {
    _visualAcuityAided = value;
    notifyListeners();
  }

  set eyeScanAssistance(bool value) {
    _eyeScanAssistance = value;
    notifyListeners();
  }

  set assessmentAssistance(bool value) {
    _assessmentAssistance = value;
    notifyListeners();
  }

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  set questionarie(String value) {
    _questionarie = value;
    notifyListeners();
  }

  set overallReview(String value) {
    _overallReview = value;
    notifyListeners();
  }

  set observation(String value) {
    _observation = value;
    notifyListeners();
  }

  set eyeScan(String value) {
    _eyeScan = value;
    notifyListeners();
  }

  void save() {
    overallReview = _feedBackController.text;
    logger.d("Questionarie: $_questionarie");
    logger.d("Observation: $_observation");
    logger.d("EyeScan: $_eyeScan");
    logger.d("OverallReview: $_overallReview");
  }
}
