import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var bookAppointmentProvider =
    ChangeNotifierProvider((ref) => BookAppointmentProvider());

class BookAppointmentProvider extends ChangeNotifier {
  String _selectedConsultationType = '';
  late DateTime _selectedDate;

  String get selectedConsultationType => _selectedConsultationType;
  DateTime get selectedDate => _selectedDate;

  void setSelectedDate(DateTime value) {
    _selectedDate = value;
    notifyListeners();
  }

  void setConsultationType(String value) {
    _selectedConsultationType = value;
    notifyListeners();
  }
}
