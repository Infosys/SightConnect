import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/assessment_model.dart';

abstract class VisionTechnicianLocalSource {
  List<AssessmentModel> getAssessmentDetails();
}

class VisionTechnicianLocalSourceImpl implements VisionTechnicianLocalSource {
  final List<AssessmentModel> _listOfAssessmentDetails = [
    AssessmentModel(name: "Preethan Kumar", serialNo: "OP 5356785", id: "AT 101011", date: "19 Sep 23", status: "3rd Reminder Sent", category: "Early Consultation",),
    AssessmentModel(name: "Chunky Kumar", serialNo: "OP 5000655", id: "AT 045466", date: "12 May 23", status: "2nd Reminder Sent", category: "Early Consultation",),
    AssessmentModel(name: "Rajesh Kumar", serialNo: "OP 5022255", id: "AT 089753", date: "2 Feb 23", status: "1st Reminder Sent", category: "Urgent Consultation",),
    AssessmentModel(name: "Ajay P", serialNo: "OP 6000055", id: "AT 067587", date: "2 Feb 23", status: "Closed", category: "Urgent Consultation",),
    AssessmentModel(name: "Rahul Saha", serialNo: "OP 6464655", id: "AT 078965", date: "2 Feb 23", status: "1st Reminder Sent", category: "Urgent Consultation",),
    AssessmentModel(name: "Paul Dor", serialNo: "OP 5676899", id: "AT 034556", date: "2 Feb 23", status: "Closed", category: "Urgent Consultation",),
  ];

  @override
  List<AssessmentModel> getAssessmentDetails() {
    return _listOfAssessmentDetails;
  }
}
