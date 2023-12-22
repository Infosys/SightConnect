import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/contracts/vt_close_assessment_reposirtory.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/models/vt_close_assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/source/vt_close_assessment_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtCloseAssessmentRepository =
    Provider((ref) => VTCloseAssessmentRepositoryImpl(
      ref.watch(vtCloseAssessmentRemoteSource)
    ));

class VTCloseAssessmentRepositoryImpl extends VTCloseAssessmentRepository {
  VTCloseAssessmentRemoteSource remoteDataSource;
  VTCloseAssessmentRepositoryImpl(this.remoteDataSource);

  @override
  void submitCloseAssessmentInfo(CloseAssessmentDto patientDetails) {
    remoteDataSource.submitCloseAssessmentInfo(patientDetails);
  }
}