import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/models/vt_close_assessment_model.dart';

abstract class VTCloseAssessmentRepository {
  Future<void> submitCloseAssessmentInfo(CloseAssessmentDto patientDetails);
}
