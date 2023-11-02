import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionGuardianAddPatientProvider = ChangeNotifierProvider.autoDispose(
  (ref) => OptometricianSearchPatientProvider(),
);

class OptometricianSearchPatientProvider extends ChangeNotifier {
  final List<PatientModel> _patientList = [
    PatientModel(
      id: "PID 12345670",
      education: "No Education",
      employment: "Unemployed/Home duties",
    ),
    PatientModel(
      id: "PID 12345671",
      education: "High School",
      employment: "Skilled labour",
    ),
    PatientModel(
      id: "PID 12345672",
      education: "Advanced Studies",
      employment: "Skilled labour",
    ),
    PatientModel(
      id: "PID 12345673",
      education: "Graduate",
      employment: "Skilled labour",
    ),
    PatientModel(
      id: "PID 12345674",
      education: "High School",
      employment: "Skilled labour",
    ),
    PatientModel(
      id: "PID 12345675",
      education: "High School",
      employment: "Skilled labour",
    ),
    PatientModel(
      id: "PID 12345676",
      education: "High School",
      employment: "Skilled labour",
    ),
    PatientModel(
      id: "PID 12345677",
      education: "High School",
      employment: "Skilled labour",
    ),
    PatientModel(
      id: "PID 12345678",
      education: "High School",
      employment: "Skilled labour",
    ),
  ];

  final List<String> _timeFrame = [
    "Today",
    "This Week",
    "This Month",
    "This Year",
  ];

  List<String> get timeFrame => _timeFrame;

  List<PatientModel> get patientList => _patientList;

  final List<PatientModel> _searchPatientList = [];
  bool _isSearching = false;

  List<PatientModel> get searchPatientList => _searchPatientList;
  bool get isSearching => _isSearching;
  bool _isMatched = false;
  bool get isMatched => _isMatched;

  void startSearch() {
    _searchPatientList.clear();
    _isSearching = true;
    notifyListeners();
  }

  void stopSearch() {
    _searchPatientList.clear();
    _isSearching = false;
    notifyListeners();
  }

  void searchPatient(String query) {
    _searchPatientList.clear();
    if (query.isEmpty) {
      _searchPatientList.clear();
      _isSearching = false;
    } else {
      for (var patient in _patientList) {
        if (patient.id!.toLowerCase().contains(query.toLowerCase())) {
          _isMatched = true;
          _isSearching = true;
          _searchPatientList.add(patient);
        } else {
          _isMatched = false;
          _isSearching = true;
        }
      }
    }
    notifyListeners();
  }
}

class PatientModel {
  String? id;
  String? education;
  String? employment;

  PatientModel({
    this.id,
    this.education,
    this.employment,
  });
}

enum Status { complete, pending }
