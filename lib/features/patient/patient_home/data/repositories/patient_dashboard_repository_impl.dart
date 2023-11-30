import 'package:eye_care_for_all/features/patient/patient_home/data/contracts/patient_dashboard_repository.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/data/models/patient_response_model.dart';
import 'package:eye_care_for_all/features/patient/patient_home/data/source/remote/patient_dashboard_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientDashboardRepositoryProvider = Provider<PatientDashboardRepository>((ref) => PatientDashBoardRepositoryImpl(ref.read(patientRemoteSourceProvider)));

class PatientDashBoardRepositoryImpl implements PatientDashboardRepository {

  PatientRemoteSource _patientRemoteSource;

  PatientDashBoardRepositoryImpl(this._patientRemoteSource);

  @override
  Future<PatientResponseModel> getPatientDashboard(int patientId) async {
    try{
      return await _patientRemoteSource.getPatientDashboard(patientId);
    } catch (e) {
      throw e;
    }
  }

}