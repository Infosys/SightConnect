import 'package:eye_care_for_all/features/patient/patient_profile/data/models/patient_response_model.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/data/contracts/patient_dashboard_repository.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/data/source/remote/patient_profile_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientProfileRepositoryProvider = Provider<PatientProfileRepository>((ref) => PatientProfileRepositoryImpl(ref.read(patientProfileRemoteSourceProvider)));

class PatientProfileRepositoryImpl implements PatientProfileRepository {

  PatientProfileRemoteSource _patientProfileRemoteSource;

  PatientProfileRepositoryImpl(this._patientProfileRemoteSource);

  @override
  Future<PatientResponseModel> getPatientDetails(int patientId) async {
    try{
      return await _patientProfileRemoteSource.getPatientDetails(patientId);
    } catch (e) {
      throw e;
    }
  }

}