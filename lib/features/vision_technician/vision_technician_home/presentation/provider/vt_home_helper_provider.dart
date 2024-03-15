import 'dart:math';

import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/table_params.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/domain/repositories/vt_home_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final vtHomeHelperProvider = ChangeNotifierProvider<VTHomeHelperNotifier>(
  (ref) {
    return VTHomeHelperNotifier(ref);
  },
);

class VTHomeHelperNotifier extends ChangeNotifier {
  List<String> availableCategories = ["ALL", "URGENT", "EARLY", "ROUTINE"];
  String _category = "URGENT";
  final List<VTPatientDto> _listOfAssessments = [];
  List<VTPatientDto> _searchResults = [];
  bool _isLoading = false;

  int pageSize = 10;
  int originalPageSize = 10;
  int _pageNumber = 0;

  Ref ref;

  VTHomeHelperNotifier(this.ref) {
    getAssessmentRecords();
  }

  String get category => _category;
  bool get isLoading => _isLoading;
  int get pageNumber => _pageNumber;
  List<VTPatientDto> get listOfAssessments => _searchResults;

  void updateCategory(String value) {
    _category = value;
    _pageNumber = 0;
    _listOfAssessments.clear();
    notifyListeners();
    getAssessmentRecords();
  }

  void updatePageSize(int? page) {
    originalPageSize = page ?? 10;
    notifyListeners();
    getAssessmentRecords();
  }

  void updatePageNumber(int page) {
    _pageNumber = page;
    notifyListeners();
    getAssessmentRecords();
  }

  void searchBasedOnNameAndEncounterId(String value) {
    if (value.isEmpty) {
      _searchResults = List.from(_listOfAssessments);
    } else {
      _searchResults = _listOfAssessments.where((element) {
        final lowerCaseName = element.name!.toLowerCase();
        final lowerCaseEncounterId =
            element.encounterId!.toString().toLowerCase();
        final lowerCaseSearchValue = value.toLowerCase();
        return lowerCaseName.contains(lowerCaseSearchValue) ||
            lowerCaseEncounterId.contains(lowerCaseSearchValue);
      }).toList();
    }
    logger.f(_searchResults);
    notifyListeners();
  }

  Future<void> getAssessmentRecords() async {
    try {
      _isLoading = true;
      notifyListeners();
      final response = await ref.read(vtHomeRepository).getListOfPatients(
            TableParams(
              category: _category,
              page: _pageNumber,
              size: originalPageSize,
            ),
          );

      if (response.isNotEmpty) {
        pageSize = max(1, response.length - 1);
        _listOfAssessments.addAll(response);
        _searchResults = List.from(_listOfAssessments);
        logger.f({
          "Total Records": response.length,
          "Page Size": pageSize,
          "Page Number": _pageNumber,
        });
      } else {
        logger.f("Skipping page $_pageNumber with total record zero");
      }
    } catch (e) {
      logger.e("VTHomeHelperNotifier $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
