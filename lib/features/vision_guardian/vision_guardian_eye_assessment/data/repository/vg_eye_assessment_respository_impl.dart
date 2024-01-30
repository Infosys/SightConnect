import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/data/contracts/vg_eye_assessment_repository.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/data/source/vg_eye_assessment_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vgEyeAssessmentRepository = Provider((ref) =>
    VgEyeAssessmentRepositoryImpl(ref.read(vgEyeAssessmentRemoteSource)));

class VgEyeAssessmentRepositoryImpl extends VgEyeAssessmentRepository {
  VgEyeAssessmentRemoteSource remoteDataSource;

  VgEyeAssessmentRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<VisionGuardianPatientResponseModel>> getVgEyeAssessmentReports(
      {required int practitionerId, required Map<String, dynamic> queryparams}) async {
    return await remoteDataSource.getVgEyeAssessmentReports(
        practitionerId: practitionerId,queryparams:queryparams);
  }
}
