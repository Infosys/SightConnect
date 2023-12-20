import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var carePlanProvider = ChangeNotifierProvider((ref) => CarePlanProvider());

class CarePlanProvider extends ChangeNotifier {
  String? _patientInstruction;
  String get patientInstruction => _patientInstruction!;
  void setPatientInstruction(String? patientInstruction) {
    instructionMapper(patientInstruction);
    notifyListeners();
  }

  void instructionMapper(String? instruction) {
    switch (instruction) {
      case "Visit Primary Center":
        _patientInstruction = "VISIT_PRIMARY_CLINIC";
        break;
      case "Visit Secondary Center":
        _patientInstruction = "VISIT_SECONDARY_CLINIC";
        break;
      case "Visit Tertiary Center":
        _patientInstruction = "VISIT_TERTIARY_CLINIC";
        break;
      case "Visit Center of Excellence":
        _patientInstruction = "VISIT_CENTER_OF_EXCELLENCE";
        break;
    }
    notifyListeners();
  }
}