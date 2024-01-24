import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_search_page/data/contracts/vt_search_repository.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_search_page/data/source/vt_search_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


var vtPatientSearchRepositoryProvider = Provider<VTSearchRepository>(
  (ref) => VTPatientSearchRepositoryImpl(
    ref.watch(vtSearchRemoteSource),
  ),
);

class VTPatientSearchRepositoryImpl extends VTSearchRepository {
  VTSearchRemoteSource remoteDataSource;
  VTPatientSearchRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<VTPatientDto>> getPatientProfile(String query) async {
    return await remoteDataSource.getPatientProfile(query);
  }
}
