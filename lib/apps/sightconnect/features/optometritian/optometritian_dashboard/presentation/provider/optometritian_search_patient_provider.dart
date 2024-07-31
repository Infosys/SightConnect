import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/models/optometrician_triage_response.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/source/remote/optometrician_triage_remote_source.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/providers/global_optometrician_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/services/exceptions.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/fake_data_source.dart';

var visionGuardianAddPatientProvider = ChangeNotifierProvider.autoDispose(
    (ref) => OptometricianSearchPatientProvider(
          ref,
          ref.watch(optometristRemoteSource),
        ));

class OptometricianSearchPatientProvider extends ChangeNotifier {
  TimeFrame _selectedTimeFrame = TimeFrame.today;
  DateTime _selectedToDate = DateTime.now();
  DateTime _selectedFromDate = DateTime.now();
  final Ref _ref;

  List<OptometristTriageResponse> _searchPatientList = [];
  String _query = "";
  bool _isLoading = false;

  // ignore: unnecessary_getters_setters
  bool get isLoading => _isLoading;

  set isLoading(bool value) => _isLoading = value;

  final OptometristRemoteSource _triageRepository;

  OptometricianSearchPatientProvider(this._ref, this._triageRepository) {
    var startDate = calculateDateFromTimeFrame(_selectedTimeFrame);
    getTriageByFilters(
      startDate,
      DateTime.now(),
      _ref.read(globalOptometricianProvider).preferredUsername,
    );
  }
  List<OptometristTriageResponse> get searchPatientList => _searchPatientList;
  List<TimeFrame> get timeFrameList => TimeFrame.values;
  String get query => _query;

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
    var startDate = calculateDateFromTimeFrame(_selectedTimeFrame);
    // _searchPatientList =
    //     _patientList.where((element) => element.date!.isAfter(time)).toList();
    logger.d(startDate);
    getTriageByFilters(
      startDate,
      DateTime.now(),
      _ref.read(globalOptometricianProvider).preferredUsername,
    );
    notifyListeners();
  }

  void searchByQuery() {
    // _searchPatientList = _patientList
    //     .where((element) =>
    //         element.id!.toLowerCase().contains(_query.toLowerCase()))
    //     .toList();
    getPatientById(int.parse(_query));
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
    getTriageByFilters(
      _selectedFromDate,
      _selectedToDate,
      _ref.read(globalOptometricianProvider).preferredUsername,
    );
    notifyListeners();
  }

  Future<List<OptometristTriageResponse>> getTriageByFilters(
    startDate,
    endDate,
    capturedBy,
  ) async {
    try {
      _isLoading = true;
      notifyListeners();
      final data =
          await _triageRepository.getOptometristTriageResponseByFilters(
        startDate,
        endDate,
        _ref.read(globalOptometricianProvider).preferredUsername!,
      );

      _searchPatientList = data;
      _isLoading = false;
      notifyListeners();

      return data;
    } catch (e) {
      logger.e(e);
      _isLoading = false;
      notifyListeners();
    }
    throw ServerException();
  }

  Future<void> getSearchResult(String query) async {
    _isLoading = true;
    notifyListeners();
    var data = await _triageRepository.getTriageBySearch(
      query,
      _ref.read(globalOptometricianProvider).preferredUsername!,
    );

    _searchPatientList = data;
    _isLoading = false;
    notifyListeners();
  }

  Future<void> getPatientById(int patientId) async {
    _isLoading = true;
    notifyListeners();
    try {
      var data = await _triageRepository.getTriageByPatientId(patientId);

      _searchPatientList = data;
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      logger.d(e);
    }
    throw ServerException();
  }

  DateTime calculateDateFromTimeFrame(TimeFrame timeFrame) {
    switch (timeFrame) {
      case TimeFrame.today:
        return DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day);
      case TimeFrame.thisWeek:
        {
          DateTime startOfTime = DateTime.now().subtract(
              Duration(days: DateTime.now().weekday - DateTime.monday));
          return DateTime(startOfTime.year, startOfTime.month, startOfTime.day);
        }
      case TimeFrame.thisMonth:
        return DateTime(DateTime.now().year, DateTime.now().month, 1);
      case TimeFrame.thisYear:
        return DateTime(DateTime.now().year, 1, 1);
      default:
        return DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
        );
    }
  }
}
