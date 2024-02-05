import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientProfileProvider =
    ChangeNotifierProvider.family<PatientProfileProvider, int?>((ref, id) {
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
