import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/fake_data_source.dart';

var visionGuardianAddPatientProvider = ChangeNotifierProvider.autoDispose(
  (ref) => OptometricianSearchPatientProvider(),
);

class OptometricianSearchPatientProvider extends ChangeNotifier {
  TimeFrame _selectedTimeFrame = TimeFrame.today;
  DateTime _selectedToDate = DateTime.now();
  DateTime _selectedFromDate = DateTime.now();

  final List<PatientModel> _patientList = [];
  final List<PatientModel> _searchPatientList = [];
  String _query = "";

  OptometricianSearchPatientProvider();
  List<PatientModel> get searchPatientList => _searchPatientList;
  List<TimeFrame> get timeFrameList => TimeFrame.values;
  String get query => _query;
  TimeFrame get selectedTimeFrame => _selectedTimeFrame;
  DateTime get selectedToDate => _selectedToDate;
  DateTime get selectedFromDate => _selectedFromDate;
  List<PatientModel> get patientList => _patientList;

  set setTimeFrame(TimeFrame timeFrame) {
    _selectedTimeFrame = timeFrame;
    notifyListeners();
    searchByTimeFrame();
  }

  set setQuery(String query) {
    // if (query.isEmpty) {
    //   _searchPatientList = [];
    //   notifyListeners();
    //   return;
    // }
    _query = query;
    notifyListeners();
    searchByQuery();
  }

  set setToDate(DateTime date) {
    _selectedToDate = date;
    notifyListeners();
    searchByDate();
  }

  set setFromDate(DateTime date) {
    _selectedFromDate = date;
    notifyListeners();
    searchByDate();
  }

  void searchByTimeFrame() {
    // var time = calculateDateFromTimeFrame(_selectedTimeFrame);
    // _searchPatientList =
    //     _patientList.where((element) => element.date!.isAfter(time)).toList();
    // notifyListeners();
  }

  void searchByQuery() {
    // _searchPatientList = _patientList
    //     .where((element) =>
    //         element.id!.toLowerCase().contains(_query.toLowerCase()))
    //     .toList();
    notifyListeners();
  }

  void searchByDate() {
    // _searchPatientList = _patientList.where((element) {
    //   if (_selectedFromDate.isBefore(element.date!) &&
    //       _selectedToDate
    //           .isAfter(element.date!.subtract(const Duration(days: 1)))) {
    //     return true;
    //   }
    //   return false;
    // }).toList();
    // notifyListeners();
  }

  DateTime calculateDateFromTimeFrame(TimeFrame timeFrame) {
    switch (timeFrame) {
      case TimeFrame.today:
        return DateTime.now().subtract(const Duration(days: 1));
      case TimeFrame.thisWeek:
        return DateTime.now().subtract(const Duration(days: 7));
      case TimeFrame.thisMonth:
        return DateTime.now().subtract(const Duration(days: 30));
      case TimeFrame.thisYear:
        return DateTime.now().subtract(const Duration(days: 365));
      default:
        return DateTime.now().subtract(const Duration(days: 1));
    }
  }
}
