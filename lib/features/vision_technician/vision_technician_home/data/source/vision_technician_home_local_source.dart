import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';

import '../../../vision_technician_register_new_patient/data/models/vt_eyecare_details_question_model.dart';

abstract class VisionTechnicianLocalSource {
  List<VTPatientModel> getListOfPatients();
  void addPatient(VTPatientModel patient);
}

class VisionTechnicianLocalSourceImpl implements VisionTechnicianLocalSource {
  final List<VTPatientModel> _listOfPatients = [];

  @override
  List<VTPatientModel> getListOfPatients() {
    return _listOfPatients;
  }

  @override
  void addPatient(VTPatientModel patient) {
    _listOfPatients.add(patient);
  }
}
