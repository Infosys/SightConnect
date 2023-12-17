import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/models/triage_DTO.dart';

abstract class TriageRepository{
  Future<TriageDTO> saveTriage(TriageDTO triageDTO);
}