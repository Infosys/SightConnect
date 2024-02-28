import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/repositories/vt_search_repository_impl.dart';

var vtSearchProvider =
    FutureProvider.autoDispose.family<List<VTPatientDto>, String>((ref, query) {
  return ref.watch(vtPatientSearchRepositoryProvider).getPatientProfile(query);
});

var visionTechnicianSearchProvider =
    ChangeNotifierProvider((ref) => VisionTechnicianSearchProvider(ref));

class VisionTechnicianSearchProvider extends ChangeNotifier {
  Ref ref;

  VisionTechnicianSearchProvider(this.ref);

  VTPatientDto? _patientDetails;
  VTPatientDto? get patientDetails => _patientDetails;
  final List<VTPatientDto> _patientSearchDto = [];
  List<VTPatientDto> get patientSearchDto => _patientSearchDto;

  void setPatientDetails(VTPatientDto patientDetails) {
    _patientDetails = patientDetails;
    notifyListeners();
  }

  // void setSearchPatientList(String query) async {
  //   _patientSearchDto.clear();
  //   _patientSearchDto = await ref
  //       .read(vtPatientSearchRepositoryProvider)
  //       .getPatientProfile(query);
  //   notifyListeners();
  // }
}
