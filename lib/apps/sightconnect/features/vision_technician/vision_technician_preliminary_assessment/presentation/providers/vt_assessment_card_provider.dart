/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../../../../core/services/dio_service.dart';
// import '../../../vision_technician_register_new_patient/data/models/vt_patient_response_model.dart';

// var assessmentCardProvider = ChangeNotifierProvider<AssessmentCardProvider>(
//     (ref) => AssessmentCardProvider(ref.read(dioProvider)));

// class AssessmentCardProvider extends ChangeNotifier {
//   final Dio _dio;
//   AssessmentCardProvider(this._dio);

//   Future<PatientResponseModel> getPatientProfile(int patientId) async {
//     // var endpoint = await rootBundle.loadString("assets/triage_assessment.json");
//     // try {
//     //   final response = await _dio.get(endpoint);
//     //   return PatientResponseModel.fromJson(response.data);
//     // } catch (e) {
//     //   rethrow;
//     // }
//     throw UnimplementedError();
//   }
// }
