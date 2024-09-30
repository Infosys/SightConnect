import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/enums/patient_type_enum.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
  Future<List<PatientResponseModel>> getPatientProfileByPhone(
    String phoneNumber,
  );
}

class PatientAuthRemoteSourceImpl implements PatientAuthRemoteSource {
  final Dio _dio;

  PatientAuthRemoteSourceImpl(this._dio);

  @override
  Future<PatientModel> onboardPatient(PatientModel patientDTO) async {
    const endpoint = "/services/orchestration/api/v2/patients/onboard";
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
    const endpoint = '/services/orchestration/api/v2/patients/extended';

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
    final endpoint =
        "/services/orchestration/api/v2/patients/${patientDTO.patientId}";
    try {
      var response = await _dio.put(endpoint, data: patientDTO.toJson());
      return PatientResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    }
  }

  @override
  Future<List<PatientResponseModel>> getPatientProfileByPhone(
    String phoneNumber,
  ) async {
    if (phoneNumber.contains("+91")) {
      phoneNumber = phoneNumber.substring(3);
    }

    final endpoint =
        "/services/orchestration/api/v2/patients/extended/mobile/$phoneNumber?patientType=${PatientType.PRIMARY.name}";

    try {
      final response = await _dio.get<List<dynamic>>(endpoint);

      return response.data!
          .map((e) => PatientResponseModel.fromJson(e))
          .toList();
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("HHAHAH: $e");
      rethrow;
    }
  }
}
