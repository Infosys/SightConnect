import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/contracts/vt_home_repository.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/source/vt_home_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtHomeRepository = Provider(
  (ref) => VTHomeRepositoryImpl(
    ref.watch(vtHomeRemoteSource),
  ),
);

class VTHomeRepositoryImpl extends VTHomeRepository {
  VTHomeRemoteSource remoteDataSource;
  VTHomeRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<VTPatientDto>> getListOfPatients() async {
    return await remoteDataSource.getListOfPatients();
  }
}
