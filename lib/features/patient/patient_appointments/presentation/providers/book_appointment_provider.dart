import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var bookAppointmentProvider = ChangeNotifierProvider.family
    .autoDispose<BookAppointmentProvider, int?>((ref, id) {
  return BookAppointmentProvider(selectedPatientId:id);
});

var bookAppointmentHelperProvider = ChangeNotifierProvider.autoDispose<BookAppointmentProvider>((ref) {
  return BookAppointmentProvider();
});

class BookAppointmentProvider extends ChangeNotifier{
  int? selectedPatientId;
  String? consultationType;
  BookAppointmentProvider({this.selectedPatientId});
  

  void setPatientId(int id) {
    selectedPatientId = id;
    notifyListeners();
  }

  void updateConsultationType(String type){
    consultationType = type;
    notifyListeners();
  }

}