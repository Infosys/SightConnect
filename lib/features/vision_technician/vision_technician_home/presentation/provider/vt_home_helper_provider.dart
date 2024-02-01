import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/table_params.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/domain/repositories/vt_home_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final vtHomeHelperProvider =
    ChangeNotifierProvider<VTHomeHelperNotifier>((ref) {
  return VTHomeHelperNotifier(ref: ref);
});

// var getAssessmentTableProvider = FutureProvider.autoDispose((ref) async {
//   String category = ref.watch(vtHomeHelperProvider).category;
//   int pageNumber = ref.watch(vtHomeHelperProvider).pageNumber;
//   int pageSize = ref.read(vtHomeHelperProvider).pageSize;
//   return await ref.watch(vtHomeRepository).getListOfPatients(
//       TableParams(category: category, page: pageNumber, size: pageSize));
// });

class VTHomeHelperNotifier extends ChangeNotifier {
  Ref ref;
  VTHomeHelperNotifier({required this.ref}) {
    updateCategory(_category);
  }

  final List<VTPatientDto> _listOfAssessments = [];
  final List<VTPatientDto> _tempListOfAssessments = [];

  bool _isLoading = false;
  bool hasMore = true;
  String _category = "ALL";
  int pageSize = 5;
  int _pageNumber = 0;
  String get category => _category;
  bool get isLoading => _isLoading;
  int get pageNumber => _pageNumber;
  List<VTPatientDto> get listOfAssessments => _listOfAssessments;

  void updateCategory(String value) {
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
      final response =
          await ref.watch(vtHomeRepository).getListOfPatients(TableParams(
                category: category,
                page: pageNumber,
                size: pageSize,
              ));
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

      logger.d("VTHomeHelperNotifier ${_listOfAssessments.length}");
    } catch (e) {
      logger.d("VTHomeHelperNotifier $e");
      _listOfAssessments.clear();
      _isLoading = false;
      notifyListeners();
    }
  }
}
