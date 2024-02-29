import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';

abstract class VTRegistrationRepository {

  
  Future<List<VisionGuardianEventPatientResponseModel>> getPatientByNumber(String  query);
}