import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/table_params.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/domain/repositories/vt_home_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final vtHomeHelperProvider = ChangeNotifierProvider<VTHomeHelperNotifier>(
  (ref) {
    return VTHomeHelperNotifier(ref: ref);
  },
);

class VTHomeHelperNotifier extends ChangeNotifier {
  Ref ref;
  VTHomeHelperNotifier({required this.ref}) {
    updateCategory(_category);
  }

  final List<VTPatientDto> _listOfAssessments = [];
  final List<VTPatientDto> _tempListOfAssessments = [];
  final List<String> availableCategories = [
    "ALL",
    "URGENT",
    "EARLY",
    "ROUTINE"
  ];

  bool _isLoading = false;
  bool hasMore = true;
  String _category = "URGENT";

  int pageSize = 10;
  int _pageNumber = 0;
  String get category => _category;
  bool get isLoading => _isLoading;
  int get pageNumber => _pageNumber;
  List<VTPatientDto> get listOfAssessments => _listOfAssessments;

  void updateCategory(String value) {
    if (isLoading) return;
    _listOfAssessments.clear();
    _tempListOfAssessments.clear();
    _pageNumber = 0;
    _category = value;
    getAssessmentTable();
  }

  void updatePageNumber() {
    _pageNumber = _pageNumber + 1;
    getAssessmentTable();
  }

  Future<void> getAssessmentTable() async {
    try {
      hasMore = true;
      _isLoading = true;
      notifyListeners();
      final response = await ref.watch(vtHomeRepository).getListOfPatients(
            TableParams(
              category: _category,
              page: pageNumber,
              size: pageSize,
            ),
          );
      _tempListOfAssessments.addAll(response);
      if (_tempListOfAssessments.isEmpty) {
        hasMore = false;
        _isLoading = false;
        notifyListeners();
      } else {
        _listOfAssessments.addAll(_tempListOfAssessments);
        _tempListOfAssessments.clear();
        _isLoading = false;
        notifyListeners();
      }
    } catch (e) {
      logger.e("VTHomeHelperNotifier $e");
      _listOfAssessments.clear();
      _isLoading = false;
      notifyListeners();
    }
  }

  void changePageSize(int? value) {
    pageSize = value ?? 10;
    _listOfAssessments.clear();
    _tempListOfAssessments.clear();
    _pageNumber = 0;
    getAssessmentTable();
  }
}
