import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/services/dio_service.dart';
import '../../../../../core/services/failure.dart';
import '../../data/model/vision_center_models.dart';

abstract class VTVisionCenterRepository {
  Future<List<FacilityModel>> getVisionCenterList(
      {required String pincode});
}
var vtVisionCenterRepositoryProvider = Provider<VTVisionCenterRepository>((ref) {
  return VTVisionCenterRepositoryImpl( ref.read(vtDioVisionCenterProvider));
});

class VTVisionCenterRepositoryImpl implements VTVisionCenterRepository {
  final Dio _dio;
  VTVisionCenterRepositoryImpl(this._dio);
  @override
  Future<List<FacilityModel>> getVisionCenterList(
      {required String pincode,}) async {
    var endpoint = '/patients/triage-reports/$pincode';
    // var profile = await rootBundle.loadString("assets/triage_assessment.json");
    try {
      final response = await _dio.get(endpoint);
      return (response.data as List).map((item) => FacilityModel.fromJson(item)).toList();
    } catch (e) {
      throw ServerFailure(errorMessage: 'No data found');      
    }
  }
}

// var vtVisionCenterViewModelProvider = ChangeNotifierProvider<VTVisionCenterViewModel>((ref) {
//   return VTVisionCenterViewModel(
//     ref.read(vtVisionCenterRepositoryProvider)
//   );
// });

// class VTVisionCenterViewModel extends ChangeNotifier{
//   VTVisionCenterRepositoryImpl _vtVisionCenterRepositoryImpl;
//   VTVisionCenterViewModel(this._vtVisionCenterRepositoryImpl);
// }
