import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/patient_instruction.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var carePlanProvider = ChangeNotifierProvider((ref) => CarePlanProvider());

class CarePlanProvider extends ChangeNotifier {
  PatientInstruction? _patientInstruction;
  PatientInstruction get patientInstruction => _patientInstruction!;
  void setPatientInstruction(String? patientInstruction) {
    instructionMapper(patientInstruction);
    notifyListeners();
  }

  void instructionMapper(String? instruction) {
    switch (instruction) {
      case "Primary Center":
        _patientInstruction = PatientInstruction.VISIT_PRIMARY_CLINIC;
        break;
      case "Secondary Center":
        _patientInstruction = PatientInstruction.VISIT_SECONDARY_CLINIC;
        break;
      case "Tertiary Center":
        _patientInstruction = PatientInstruction.VISIT_TERTIARY_CLINIC;
        break;
      case "Center of Excellence":
        _patientInstruction = PatientInstruction.VISIT_COE;
        break;
    }
    notifyListeners();
  }
}
