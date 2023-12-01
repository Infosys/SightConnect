import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/contracts/vision_technician_home_repository.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/source/vision_technician_home_local_source.dart';

class VisionTechnicianHomeRepositoryImpl
    extends VisionTechnicianHomeRepository {
  VisionTechnicianLocalSourceImpl visionTechnicianLocalSourceImpl =
      VisionTechnicianLocalSourceImpl();

  List<AssessmentModel> searchUsers(String query) {
    List<AssessmentModel> list = [];
    print(query);

    if (query.isEmpty) {
      return [];
    }

    for (int i = 0;
        i < visionTechnicianLocalSourceImpl.getAssessmentDetails().length;
        i++) {
      //name
      if (visionTechnicianLocalSourceImpl
          .getAssessmentDetails()[i]
          .name
          .toLowerCase()
          .contains(query.toLowerCase())) {
        list.add(visionTechnicianLocalSourceImpl.getAssessmentDetails()[i]);
      }
      //patientId
      else if (visionTechnicianLocalSourceImpl
          .getAssessmentDetails()[i]
          .patientId
          .toLowerCase()
          .contains(query.toLowerCase())) {
        list.add(visionTechnicianLocalSourceImpl.getAssessmentDetails()[i]);
      }
      //mobileNo
      else if (visionTechnicianLocalSourceImpl
          .getAssessmentDetails()[i]
          .mobileNo
          .toLowerCase()
          .contains(query.toLowerCase())) {
        list.add(visionTechnicianLocalSourceImpl.getAssessmentDetails()[i]);
      }
    }

    return list;
  }
}
