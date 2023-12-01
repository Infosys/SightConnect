import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/repositories/vision_technician_home_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/source/vision_technician_home_local_source.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionTechnicianSearchProvider = ChangeNotifierProvider((ref) => VisionTechnicianSearchProvider());

class VisionTechnicianSearchProvider extends ChangeNotifier {

  List<AssessmentModel> _searchedAssessmentUserList = [];
  List<AssessmentModel> get searchedAssessmentUserList => _searchedAssessmentUserList;

  void setSearchAssessmentUserList(String query) {
    VisionTechnicianHomeRepositoryImpl visionTechnicianHomeRepositoryImpl =
        VisionTechnicianHomeRepositoryImpl();
    // for (int i = 0;
    //     i < VisionTechnicianLocalSourceImpl().getAssessmentDetails().length;
    //     i++) {
    //   //name
    //   if (VisionTechnicianLocalSourceImpl()
    //       .getAssessmentDetails()[i]
    //       .name
    //       .toLowerCase()
    //       .contains(query.toLowerCase())) {
    //     list.add(VisionTechnicianLocalSourceImpl().getAssessmentDetails()[i]);
    //   }
    //   //patientId
    //   if (VisionTechnicianLocalSourceImpl()
    //       .getAssessmentDetails()[i]
    //       .patientId
    //       .toLowerCase()
    //       .contains(query.toLowerCase())) {
    //     list.add(VisionTechnicianLocalSourceImpl().getAssessmentDetails()[i]);
    //   }
    //   //mobileNo
    //   if (VisionTechnicianLocalSourceImpl()
    //       .getAssessmentDetails()[i]
    //       .mobileNo
    //       .toLowerCase()
    //       .contains(query.toLowerCase())) {
    //     list.add(VisionTechnicianLocalSourceImpl().getAssessmentDetails()[i]);
    //   }
    // }

    _searchedAssessmentUserList = visionTechnicianHomeRepositoryImpl.searchUsers(query);
    notifyListeners();
  }

}