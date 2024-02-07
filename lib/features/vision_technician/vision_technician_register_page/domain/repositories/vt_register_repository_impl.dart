import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/data/contracts/vt_register_repository.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_page/data/source/vt_register_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtRegisterRepositoryProvider = Provider<VTRegistrationRepository>(
  (ref) => VTRegistrationRepositoryImpl(
    ref.watch(vtRegisterRemoteSource),
  ),
);

class VTRegistrationRepositoryImpl extends VTRegistrationRepository {
  VTRegisterRemoteSource remoteDataSource;
  VTRegistrationRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<VisionGuardianEventPatientResponseModel>> getPatientByNumber(
      String query) async {
        return await remoteDataSource.getPatientByNumber(query);
      }
}
