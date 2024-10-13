/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientProfileProvider = ChangeNotifierProvider.family
    .autoDispose<PatientProfileProvider, int?>((ref, id) {
  return PatientProfileProvider(id);
});

class PatientProfileProvider extends ChangeNotifier {
  int? _selectPatientId;

  PatientProfileProvider(this._selectPatientId);
  int? get selectPatientId => _selectPatientId;

  void setPatientId(int id) {
    _selectPatientId = id;
    notifyListeners();
    // logger.d({
    //   "selectPatientId": _selectPatientId,
    //   "PATIENT_PROFILE_PROVIDER": "setPatientId"
    // });
  }
}
