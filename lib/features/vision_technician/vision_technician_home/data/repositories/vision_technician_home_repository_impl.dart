import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/contracts/vision_technician_home_repository.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/source/vision_technician_home_local_source.dart';

class VisionTechnicianHomeRepositoryImpl
    extends VisionTechnicianHomeRepository {
  VisionTechnicianLocalSourceImpl visionTechnicianLocalSourceImpl =
      VisionTechnicianLocalSourceImpl();

  @override
  List<VTPatientModel> listOfPatients() {
    return visionTechnicianLocalSourceImpl.getListOfPatients();
  }

  @override
  List<VTPatientModel> searchUsers(String query) {
    List<VTPatientModel> searchResults = [];
    print(query);

    if (query.isEmpty) {
      return [];
    }

    List<VTPatientModel> listOfAllPatients = listOfPatients();

    for (int i = 0; i < listOfAllPatients.length; i++) {
      //name
      if (listOfAllPatients[i]
          .name
          .toLowerCase()
          .contains(query.toLowerCase())) {
        searchResults.add(listOfAllPatients[i]);
      }
      //patientId
      else if (listOfAllPatients[i]
          .patientId
          .toLowerCase()
          .contains(query.toLowerCase())) {
        searchResults.add(listOfAllPatients[i]);
      }
      //mobileNo
      else if (listOfAllPatients[i]
          .mobileNo
          .toLowerCase()
          .contains(query.toLowerCase())) {
        searchResults.add(listOfAllPatients[i]);
      }
    }

    return searchResults;
  }

  @override
  void closeAssessment(int index) {
    visionTechnicianLocalSourceImpl.getListOfPatients()[index].closed = true;
  }

  @override
  void toggleSolutions(int index, String solution) {
    if (solution == 'spectacles') {
      visionTechnicianLocalSourceImpl.getListOfPatients()[index].spectacles =
          !visionTechnicianLocalSourceImpl
              .getListOfPatients()[index]
              .spectacles;
    } else if (solution == 'cataractSurgery') {
      visionTechnicianLocalSourceImpl
              .getListOfPatients()[index]
              .cataractSurgery =
          !visionTechnicianLocalSourceImpl
              .getListOfPatients()[index]
              .cataractSurgery;
    } else if (solution == 'eyeDrops') {
      visionTechnicianLocalSourceImpl.getListOfPatients()[index].eyeDrops =
          !visionTechnicianLocalSourceImpl
              .getListOfPatients()[index]
              .eyeDrops;
    } else if (solution == 'oralMedication') {
      visionTechnicianLocalSourceImpl
              .getListOfPatients()[index]
              .oralMedication =
          !visionTechnicianLocalSourceImpl
              .getListOfPatients()[index]
              .oralMedication;
    }
  }
}
