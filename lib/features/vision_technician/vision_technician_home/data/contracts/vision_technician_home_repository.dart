import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';

abstract class VisionTechnicianHomeRepository {
  List<dynamic> listOfPatients();
  void addPatient(VTPatientModel patient);
  List<dynamic> searchUsers(String query);
  void closeAssessment(int index);
  void toggleSolutions(int index, String solution);
}
