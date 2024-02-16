import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var bookAppointmentProvider =
    ChangeNotifierProvider((ref) => BookAppointmentProvider());

class BookAppointmentProvider extends ChangeNotifier {
  String _selectedConsultationType = '';
  late DateTime _selectedDate;
  String _selectedPatientName = '';
  String _selectedPatientId = '';
  String _selectedEyeProblem = '';

  String get selectedConsultationType => _selectedConsultationType;
  DateTime get selectedDate => _selectedDate;
  String get selectedPatientName => _selectedPatientName;
  String get selectedPatientId => _selectedPatientId;
  String get selectedEyeProblem => _selectedEyeProblem;

  void setSelectedEyeProblem(String value) {
    _selectedEyeProblem = value;
    notifyListeners();
  }

  void setSelectedPatientDetails(String name, String id) {
    _selectedPatientName = name;
    _selectedPatientId = id;
    notifyListeners();
  }

  void setSelectedDate(DateTime value) {
    _selectedDate = value;
    notifyListeners();
  }

  void setConsultationType(String value) {
    _selectedConsultationType = value;
    notifyListeners();
  }
}
