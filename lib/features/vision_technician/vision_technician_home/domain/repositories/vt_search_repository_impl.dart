import 'package:dio/dio.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_search_result_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/services/dio_service.dart';
import '../../../../../core/services/failure.dart';

abstract class VTPatientSearchRepository {
  Future<VTPatientSearchDto> getPatientProfile(
      String data);
}

var vtPatientSearchRepositoryProvider = Provider<VTPatientSearchRepository>(
    (ref) => VTPatientSearchRepositoryImpl(
      ref.watch(vtDioProvider)
    ));

class VTPatientSearchRepositoryImpl implements VTPatientSearchRepository {

  final Dio _dio;
  VTPatientSearchRepositoryImpl(this._dio);

  @override
  Future<VTPatientSearchDto> getPatientProfile(
      String data )async {
    var endpoint = '/patients/triage-reports/$data';
    // var profile = await rootBundle.loadString("assets/triage_assessment.json");
    
    try {
      final response = await _dio.get(endpoint);
      return VTPatientSearchDto.fromJson(response.data);
    } catch (e) {
      throw ServerFailure(errorMessage: 'No data found');
           
    }
  }
}
