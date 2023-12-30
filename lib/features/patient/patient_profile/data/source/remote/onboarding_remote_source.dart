import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/enums/identifier_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/models/profile_model.dart';

var patientAuthRemoteSourceProvider = Provider<PatientAuthRemoteSource>((ref) {
  return PatientAuthRemoteSourceImpl(ref.read(dioProvider));
});

abstract class PatientAuthRemoteSource {
  Future<PatientModel> onboardPatient(PatientModel patientDTO);
  Future<PatientResponseModel> getPatientProfile(
    int patientId, [
    IdentifierType? identifierType,
    String? value,
  ]);
  Future<PatientResponseModel> updatePatientProfile(PatientModel patientDTO);
  Future<PatientResponseModel> getPatientProfileByPhone(
    String phoneNumber,
  );
}

class PatientAuthRemoteSourceImpl implements PatientAuthRemoteSource {
  final Dio _dio;

  PatientAuthRemoteSourceImpl(this._dio);

  @override
  Future<PatientModel> onboardPatient(PatientModel patientDTO) async {
    const endpoint = "/services/orchestration/api/patients/onboard";
    try {
      var response = await _dio.post(endpoint, data: patientDTO.toJson());
      return PatientModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    }
  }

  @override
  Future<PatientResponseModel> getPatientProfile(int patientId,
      [IdentifierType? identifierType, String? value]) async {
    const endpoint = '/services/orchestration/api/patients/extended';

    Map<String, dynamic>? queryParameters = {
      "patientId": "$patientId",
    };
    if (identifierType != null) {
      queryParameters["identifierType"] = identifierType;
    }
    if (value != null) {
      queryParameters["value"] = value;
    }

    try {
      final response = await _dio.get(
        endpoint,
        queryParameters: queryParameters,
      );
      return PatientResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    }
  }

  @override
  Future<PatientResponseModel> updatePatientProfile(
    PatientModel patientDTO,
  ) async {
    final endpoint = "/services/orchestration/api/patients/${patientDTO.id}";
    try {
      var response = await _dio.put(endpoint, data: patientDTO.toJson());
      return PatientResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    }
  }

  @override
  Future<PatientResponseModel> getPatientProfileByPhone(
    String phoneNumber,
  ) async {
    if (phoneNumber.contains("+91")) {
      phoneNumber = phoneNumber.substring(3);
    }
    final endpoint =
        "/services/orchestration/api/patients/extended/mobile/$phoneNumber?patientType=All";

    try {
      final response = await _dio.get<List<dynamic>>(endpoint);
      return PatientResponseModel.fromJson(response.data!.first);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
