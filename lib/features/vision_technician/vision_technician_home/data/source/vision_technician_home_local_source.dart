import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';

abstract class VisionTechnicianLocalSource {
  List<VTPatientModel> getListOfPatients();
}

class VisionTechnicianLocalSourceImpl implements VisionTechnicianLocalSource {
  final List<VTPatientModel> _listOfPatients = [
    VTPatientModel(name: "Preethan Kumar", patientId: "OP 5356785", id: "AT 101011", date: "19 Sep 23", status: "3rd Reminder Sent", category: "Early Consultation", mobileNo: '9876543210',),
    VTPatientModel(name: "Chunky Kumar", patientId: "OP 5000655", id: "AT 045466", date: "12 May 23", status: "2nd Reminder Sent", category: "Early Consultation", mobileNo: '9876543210',),
    VTPatientModel(name: "Raj Kumar", patientId: "OP 5022255", id: "AT 067587", date: "2 Feb 23", status: "Closed", category: "Urgent Consultation", mobileNo: '9876543210'),
    VTPatientModel(name: "Ajay P", patientId: "OP 6000055", id: "AT 067587", date: "2 Feb 23", status: "Closed", category: "Urgent Consultation", mobileNo: '9876543210',),
    VTPatientModel(name: "Rahul Saha", patientId: "OP 6464655", id: "AT 078965", date: "2 Feb 23", status: "1st Reminder Sent", category: "Urgent Consultation", mobileNo: '9876543210',),
    VTPatientModel(name: "Paul Dor", patientId: "OP 5676899", id: "AT 034556", date: "2 Feb 23", status: "Closed", category: "Urgent Consultation", mobileNo: '9876543210',),
  ];

  @override
  List<VTPatientModel> getListOfPatients() {
    return _listOfPatients;
  }
}
