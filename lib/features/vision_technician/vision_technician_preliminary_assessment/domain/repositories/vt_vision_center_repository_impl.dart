import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/services/dio_service.dart';
import '../../../../../core/services/failure.dart';
import '../../../../../main.dart';
import '../../data/model/vision_center_models.dart';

abstract class VTVisionCenterRepository {
  Future <Either<Failure, List<FacilityModel>>> getVisionCenterList(
      {required String pincode});
}
var vtVisionCenterRepositoryProvider = Provider<VTVisionCenterRepository>((ref) {
  return VTVisionCenterRepositoryImpl( ref.read(vtDioVisionCenterProvider));
});

class VTVisionCenterRepositoryImpl implements VTVisionCenterRepository {
  final Dio _dio;
  VTVisionCenterRepositoryImpl(this._dio);
  @override
  Future <Either<Failure, List<FacilityModel>>>  getVisionCenterList(
      {required String pincode,}) async {
    var endpoint = '/patients/triage-reports/$pincode';
    // var profile = await rootBundle.loadString("assets/triage_assessment.json");
    try {
      final response = await _dio.get(endpoint);
      return Right(response.data.map<FacilityModel>((e) => FacilityModel.fromJson(e)).toList());
    } catch (e) {
      throw ServerFailure(errorMessage: 'No data found');      
    }
  }
}

var vtVisionCenterViewModelProvider = ChangeNotifierProvider<VTVisionCenterViewModel>((ref) {
  return VTVisionCenterViewModel(
    ref);
  
});

class VTVisionCenterViewModel extends ChangeNotifier{
  Ref ref;
  VTVisionCenterViewModel(this.ref){
    getVisionCenterList("470002");
  }

  List<FacilityModel> _facilityList = [];
  List<FacilityModel> get facilityList => _facilityList;

  Future<void> getVisionCenterList(String pincode) async {
    var response = await ref.read(vtVisionCenterRepositoryProvider).getVisionCenterList(pincode: pincode);
    response.fold(
      (failure) {
        logger.d("getVisionCenterList $failure");
        logger.d("VTVisionCenterViewModel:- $failure");
      },
      (facilityList) {
        _facilityList = facilityList;
      },
    );
    notifyListeners();
  }
}
