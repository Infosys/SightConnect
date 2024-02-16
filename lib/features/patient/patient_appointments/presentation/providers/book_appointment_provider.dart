import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var bookAppointmentProvider = ChangeNotifierProvider((ref) => BookAppointmentProvider());

class BookAppointmentProvider extends ChangeNotifier {


   String _selectedConsultationType = '';

  String get selectedConsultationType => _selectedConsultationType;

  void setConsultationType(String value) {
    _selectedConsultationType = value;
    notifyListeners();
  }
}