import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_search_result_model.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/services/dio_service.dart';
import '../../../../../core/services/failure.dart';

abstract class VTPatientSearchRepository {
  // Future<VTPatientSearchDto> onboardPatient(
  //   VTPatientSearchDto vtPatientSearchDto,
  // );
  Future<List<VTPatientSearchDto>> getPatientProfile(String data);
}

var vtPatientSearchRepositoryProvider = Provider<VTPatientSearchRepository>(
    (ref) => VTPatientSearchRepositoryImpl(ref.watch(vtDioProvider)));

class VTPatientSearchRepositoryImpl implements VTPatientSearchRepository {
  final Dio _dio;
  VTPatientSearchRepositoryImpl(this._dio);

  @override
  Future<List<VTPatientSearchDto>> getPatientProfile(String query) async {
    if (query.isEmpty) throw "List is empty";
    var endpoint = '/patients/triage-reports/$query';
    var response = await rootBundle.loadString("assets/vt_patient.json");
    var data = jsonDecode(response);
    var jsonList = data["patients"];
    List<VTPatientSearchDto> list = [];
    // print(jsonList);
    for (int i = 0; i < jsonList.length; i++) {
      VTPatientSearchDto patient = VTPatientSearchDto.fromJson(jsonList[i]);
      // print(patient.name?.toLowerCase());

      if (patient.name!.toLowerCase().contains(query) ||
          patient.id!.toString().contains(query) ||
          patient.mobile!.contains(query)) {
        list.add(patient);
      }
    }
    // print(list);
    return list;
    // try {
    //   final response = await _dio.get(endpoint);
    //   return VTPatientSearchDto.fromJson(response.data);
    // } catch (e) {
    //   throw ServerFailure(errorMessage: 'No data found');

    // }
  }

  // @override
  // Future<VTPatientSearchDto> onboardPatient(
  //     VTPatientSearchDto vtPatientSearchDto) async {
  //   var endpoint = "/api/patients/onboard";

  //   var response = await _dio.post(endpoint, data: vtPatientSearchDto.toJson());

  //   if (response.statusCode! >= 200 && response.statusCode! < 210) {
  //     return VTPatientSearchDto.fromJson(response.data);
  //   } else {
  //     throw Exception("Failed to onboard patient");
  //   }
  // }
}
