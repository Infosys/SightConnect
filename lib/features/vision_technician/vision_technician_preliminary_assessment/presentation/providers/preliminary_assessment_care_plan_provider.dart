import 'package:flutter/material.dart';
import '../../data/model/care_plan_model.dart';


class PreliminaryAssessmentCarePlanProvider extends ChangeNotifier {
  String? _patientInstruction;
  String? get patientInstruction => _patientInstruction;
  void setPatientInstruction(String? patientInstruction) {
    _patientInstruction = patientInstruction;
    notifyListeners();
  }


  

}
