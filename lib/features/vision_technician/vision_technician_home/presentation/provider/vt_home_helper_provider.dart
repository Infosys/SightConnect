import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/contracts/vt_home_repository.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/table_params.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/domain/repositories/vt_home_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final vtHomeHelperProvider =
    ChangeNotifierProvider<VTHomeHelperNotifier>((ref) {
  return VTHomeHelperNotifier(
    vtHomeRepositoryRef: ref.watch(vtHomeRepository),
  );
});

var getAssessmentTableProvider = FutureProvider.autoDispose((ref) async {
  String category = ref.watch(vtHomeHelperProvider).category;
  int pageNumber = ref.watch(vtHomeHelperProvider).pageNumber;
  int pageSize = ref.read(vtHomeHelperProvider).pageSize;
  return await ref.watch(vtHomeRepository).getListOfPatients(
      TableParams(category: category, page: pageNumber, size: pageSize));
});

class VTHomeHelperNotifier extends ChangeNotifier {
  VTHomeRepository vtHomeRepositoryRef;
  VTHomeHelperNotifier({required this.vtHomeRepositoryRef});

  final bool _isLoading = false;
  String _category = "ALL";
  int pageSize = 15;
  int _pageNumber = 0;
  String get category => _category;
  bool get isLoading => _isLoading;
  int get pageNumber => _pageNumber;

  void updatePageNumber(int value) {
    _pageNumber = value;
    notifyListeners();
  }

  void updateCategory(String value) {
    _category = value;
    notifyListeners();
  }
}
