/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../main.dart';
import '../../../../../../../services/dio_service.dart';
import '../../../../../../../services/failure.dart';
import '../../data/model/vision_center_models.dart';

abstract class VTVisionCenterRepository {
  Future<Either<Failure, List<FacilityModel>>> getVisionCenterList(
      {required String pincode});
}

var vtVisionCenterRepositoryProvider =
    Provider<VTVisionCenterRepository>((ref) {
  return VTVisionCenterRepositoryImpl(ref.read(dioProvider));
});

class VTVisionCenterRepositoryImpl implements VTVisionCenterRepository {
  final Dio _dio;
  VTVisionCenterRepositoryImpl(this._dio);
  @override
  Future<Either<Failure, List<FacilityModel>>> getVisionCenterList({
    required String pincode,
  }) async {
    final endpoint = '/services/orchestartion/patients/triage-reports/$pincode';
    // var profile = await rootBundle.loadString("assets/triage_assessment.json");
    try {
      final response = await _dio.get(endpoint);
      return Right(response.data
          .map<FacilityModel>((e) => FacilityModel.fromJson(e))
          .toList());
    } catch (e) {
      throw ServerFailure(errorMessage: 'No data found');
    }
  }
}

var vtVisionCenterViewModelProvider =
    ChangeNotifierProvider<VTVisionCenterViewModel>((ref) {
  return VTVisionCenterViewModel(ref);
});

class VTVisionCenterViewModel extends ChangeNotifier {
  Ref ref;
  VTVisionCenterViewModel(this.ref) {
    getVisionCenterList("470002");
  }

  List<FacilityModel> _facilityList = [];
  List<FacilityModel> get facilityList => _facilityList;

  Future<void> getVisionCenterList(String pincode) async {
    var response = await ref
        .read(vtVisionCenterRepositoryProvider)
        .getVisionCenterList(pincode: pincode);
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
