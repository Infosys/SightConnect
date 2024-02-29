import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';

abstract class VTSearchRepository {
  Future<List<VTPatientDto>> getPatientProfile(String  query);
}