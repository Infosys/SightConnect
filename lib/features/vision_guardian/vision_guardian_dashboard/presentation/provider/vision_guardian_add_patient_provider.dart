import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionGuardianAddPatientProvider = ChangeNotifierProvider.autoDispose(
  (ref) => VisionGuardianAddPatientProvider(),
);

class VisionGuardianAddPatientProvider extends ChangeNotifier {
  final List<PatientModel> _patientList = [
    PatientModel(
      id: "OP 12345670",
      gender: "Female",
      age: " 16 years",
      status: Status.pending,
    ),
    PatientModel(
      id: "OP 12345671",
      gender: "Male",
      age: " 18 years",
      status: Status.complete,
    ),
    PatientModel(
      id: "OP 12345672",
      gender: "Male",
      age: " 20 years",
      status: Status.complete,
    ),
    PatientModel(
      id: "OP 12345673",
      gender: "Male",
      age: " 20 years",
      status: Status.complete,
    ),
    PatientModel(
      id: "OP 12345674",
      gender: "Male",
      age: " 20 years",
      status: Status.complete,
    ),
    PatientModel(
      id: "OP 12345675",
      gender: "Male",
      age: " 20 years",
      status: Status.complete,
    ),
    PatientModel(
      id: "OP 12345676",
      gender: "Male",
      age: " 20 years",
      status: Status.complete,
    ),
    PatientModel(
      id: "OP 12345677",
      gender: "Male",
      age: " 20 years",
      status: Status.complete,
    ),
    PatientModel(
      id: "OP 12345678",
      gender: "Male",
      age: " 20 years",
      status: Status.complete,
    ),
    PatientModel(
      id: "OP 12345679",
      gender: "Male",
      age: " 20 years",
      status: Status.complete,
    ),
  ];

  List<PatientModel> get patientList => _patientList;

  // patient Search

  final List<PatientModel> _searchPatientList = [];
  bool _isSearching = false;

  List<PatientModel> get searchPatientList => _searchPatientList;
  bool get isSearching => _isSearching;

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
    } else {
      for (var patient in _patientList) {
        if (patient.id!.toLowerCase().contains(query.toLowerCase())) {
          _searchPatientList.add(patient);
        }
      }
    }
    notifyListeners();
  }
}

class PatientModel {
  String? id;
  String? gender;
  String? age;
  Status? status;

  PatientModel({
    this.id,
    this.gender,
    this.age,
    this.status,
  });
}

enum Status { complete, pending }
