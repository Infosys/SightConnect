/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var optometritianAddPatientProvider =
    ChangeNotifierProvider((ref) => OptometritianAddPatientProvider());

class OptometritianAddPatientProvider extends ChangeNotifier {
  final TextEditingController _educationalQualificationController =
      TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  final TextEditingController _patientIdController = TextEditingController();
  DateTime? _assessmentStartTime;
  DateTime? _assessmentEndTime;

  void setAssessmentEndTime(DateTime value) {
    _assessmentEndTime = value;
    notifyListeners();
  }

  void setAssessmentStartTime(DateTime value) {
    _assessmentStartTime = value;
    notifyListeners();
  }

  void setPatientId(String value) {
    _patientIdController.text = value;
    notifyListeners();
  }

  void setEducationalQualification(String value) {
    _educationalQualificationController.text = value;
    notifyListeners();
  }

  void setProfession(String value) {
    _professionController.text = value;
    notifyListeners();
  }

  TextEditingController get educationalQualificationController =>
      _educationalQualificationController;
  TextEditingController get professionController => _professionController;
  TextEditingController get patientIdController => _patientIdController;
  DateTime? get assessmentStartTime => _assessmentStartTime;
  DateTime? get assessmentEndTime => _assessmentEndTime;
}
