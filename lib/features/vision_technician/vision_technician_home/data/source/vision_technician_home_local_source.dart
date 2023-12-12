import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/data/model/eye_care_details_question_model.dart';

abstract class VisionTechnicianLocalSource {
  List<VTPatientModel> getListOfPatients();
  void addPatient(VTPatientModel patient);
}

class VisionTechnicianLocalSourceImpl implements VisionTechnicianLocalSource {
  final List<VTPatientModel> _listOfPatients = [
    VTPatientModel(
      firstName: "Preethan",
      middleName: "",
      lastName: "Kumar",
      gender: "Male",
      abhaId: "AB12345",
      email: "preethan@abc.com",
      age: "30",
      dateOfBirth: "19 Sep 1995",
      patientId: "OP 5000655",
      assessmentId: "AT 045466",
      assessmentDate: "12 May 23",
      status: "2nd Reminder Sent",
      category: "Early Consultation",
      mobileNo: '9876543210',
      closed: false,
      spectacles: false,
      cataractSurgery: false,
      eyeDrops: false,
      oralMedication: false,
      eyeCareDetailsQuestion: [
        EyeCareDetailsQuestionModel(
            questionId: 0, question: "question", answer: "answer")
      ],
      address: Address(
        doorNumber: "doorNumber",
        street: "street",
        district: "district",
        city: "city",
        state: "state",
        landmark: "landmark",
        pincode: "pincode",
      ),
    ),
    VTPatientModel(
      firstName: "Chunky",
      lastName: "Kumar",
      middleName: "",
      gender: "Male",
      abhaId: "",
      email: "Chunky@abc.com",
      age: "40",
      dateOfBirth: "20 Oct 1975",
      patientId: "OP 5000655",
      assessmentId: "AT 045466",
      assessmentDate: "12 May 23",
      status: "2nd Reminder Sent",
      category: "Early Consultation",
      mobileNo: '9876543210',
      closed: false,
      spectacles: false,
      cataractSurgery: false,
      eyeDrops: false,
      oralMedication: false,
      eyeCareDetailsQuestion: [
        EyeCareDetailsQuestionModel(
            questionId: 0, question: "question", answer: "answer")
      ],
      address: Address(
        doorNumber: "doorNumber",
        street: "street",
        district: "district",
        city: "city",
        state: "state",
        landmark: "landmark",
        pincode: "pincode",
      ),
    ),
    VTPatientModel(
      firstName: "Raj",
      lastName: "Kumar",
      middleName: "",
      gender: "Male",
      abhaId: "",
      email: "raj@abc.com",
      age: "40",
      dateOfBirth: "20 Jan 1985",
      patientId: "OP 5022255",
      assessmentId: "AT 067587",
      assessmentDate: "2 Feb 23",
      status: "Closed",
      category: "Urgent Consultation",
      mobileNo: '9876543210',
      closed: false,
      spectacles: false,
      cataractSurgery: false,
      eyeDrops: false,
      oralMedication: false,
      eyeCareDetailsQuestion: [
        EyeCareDetailsQuestionModel(
            questionId: 0, question: "question", answer: "answer")
      ],
      address: Address(
        doorNumber: "doorNumber",
        street: "street",
        district: "district",
        city: "city",
        state: "state",
        landmark: "landmark",
        pincode: "pincode",
      ),
    ),
    VTPatientModel(
      firstName: "Ajay",
      lastName: "P",
      middleName: "",
      gender: "Male",
      abhaId: "",
      email: "ajay@abc.com",
      age: "40",
      dateOfBirth: "29 Feb 1996",
      patientId: "OP 6000055",
      assessmentId: "AT 067587",
      assessmentDate: "2 Feb 23",
      status: "Closed",
      category: "Urgent Consultation",
      mobileNo: '9876543210',
      closed: false,
      spectacles: false,
      cataractSurgery: false,
      eyeDrops: false,
      oralMedication: false,
      eyeCareDetailsQuestion: [
        EyeCareDetailsQuestionModel(
            questionId: 0, question: "question", answer: "answer")
      ],
      address: Address(
        doorNumber: "doorNumber",
        street: "street",
        district: "district",
        city: "city",
        state: "state",
        landmark: "landmark",
        pincode: "pincode",
      ),
    ),
    VTPatientModel(
      firstName: "Rahul",
      lastName: "Saha",
      middleName: "",
      gender: "Male",
      abhaId: "",
      email: "rahul@abc.com",
      age: "40",
      dateOfBirth: "21 Mar 1995",
      patientId: "OP 6464655",
      assessmentId: "AT 078965",
      assessmentDate: "2 Feb 23",
      status: "1st Reminder Sent",
      category: "Urgent Consultation",
      mobileNo: '9876543210',
      closed: false,
      spectacles: false,
      cataractSurgery: false,
      eyeDrops: false,
      oralMedication: false,
      eyeCareDetailsQuestion: [
        EyeCareDetailsQuestionModel(
            questionId: 0, question: "question", answer: "answer")
      ],
      address: Address(
        doorNumber: "doorNumber",
        street: "street",
        district: "district",
        city: "city",
        state: "state",
        landmark: "landmark",
        pincode: "pincode",
      ),
    ),
    VTPatientModel(
      firstName: "Paul",
      lastName: "Dor",
      middleName: "",
      gender: "Male",
      abhaId: "",
      email: "paul@abc.com",
      age: "40",
      dateOfBirth: "17 Apr 1991",
      patientId: "OP 5676899",
      assessmentId: "AT 034556",
      assessmentDate: "2 Feb 23",
      status: "Closed",
      category: "Urgent Consultation",
      mobileNo: '9876543210',
      closed: false,
      spectacles: false,
      cataractSurgery: false,
      eyeDrops: false,
      oralMedication: false,
      eyeCareDetailsQuestion: [
        EyeCareDetailsQuestionModel(
            questionId: 0, question: "question", answer: "answer")
      ],
      address: Address(
        doorNumber: "doorNumber",
        street: "street",
        district: "district",
        city: "city",
        state: "state",
        landmark: "landmark",
        pincode: "pincode",
      ),
    ),
    //   category: "Early Consultation",
    //   mobileNo: '9876543210',
    //   gender: "Male", // Add the required argument for 'gender'
    //   abhaID: "ABHA123", // Add the required argument for 'abhaID'
    //   email: "preethan@example.com", // Add the required argument for 'email'
    //   age: 25, // Add the required argument for 'age'
    //   dateOfBirth: "1996-09-19", // Add the required argument for 'dateOfBirth'
    // ),
    // closed: false, spectacles: false, cataractSurgery: false, eyeDrops: false, oralMedication: false, eyeCarePatientModel: null, address: null,),
    // VTPatientModel(lastName: "Kumar", firstName: "Chunky ", patientId: "OP 5000655",assessmentId: "AT 045466", assessmentDate: "12 May 23", status: "2nd Reminder Sent", category: "Early Consultation", mobileNo: '9876543210',
    // closed: false, spectacles: false, cataractSurgery: false, eyeDrops: false, oralMedication: false, eyeCarePatientModel: null, address: null,
    // ),
    // VTPatientModel(lastName: "Kumar", firstName: "Raj ", patientId: "OP 5022255",assessmentId: "AT 067587", assessmentDate: "2 Feb 23", status: "Closed", category: "Urgent Consultation", mobileNo: '9876543210',closed: false, spectacles: false, cataractSurgery: false, eyeDrops: false, oralMedication: false, eyeCarePatientModel: null, address: null,),
    // VTPatientModel(lastName: "P", firstName: "Ajay ", patientId: "OP 6000055",assessmentId: "AT 067587", assessmentDate: "2 Feb 23", status: "Closed", category: "Urgent Consultation", mobileNo: '9876543210',closed: false, spectacles: false, cataractSurgery: false, eyeDrops: false, oralMedication: false, eyeCarePatientModel: null, address: null,),
    // VTPatientModel(lastName: "Saha", firstName: "Rahul ", patientId: "OP 6464655",assessmentId: "AT 078965", assessmentDate: "2 Feb 23", status: "1st Reminder Sent", category: "Urgent Consultation", mobileNo: '9876543210',closed: false, spectacles: false, cataractSurgery: false, eyeDrops: false, oralMedication: false, eyeCarePatientModel: null, address: null,),
    // VTPatientModel(lastName: "Dor", firstName: "Paul ", patientId: "OP 5676899",assessmentId: "AT 034556", assessmentDate: "2 Feb 23", status: "Closed", category: "Urgent Consultation", mobileNo: '9876543210',closed: false, spectacles: false, cataractSurgery: false, eyeDrops: false, oralMedication: false, eyeCarePatientModel: null, address: null,),
  ];

  @override
  List<VTPatientModel> getListOfPatients() {
    return _listOfPatients;
  }

  @override
  void addPatient(VTPatientModel patient) {
    _listOfPatients.add(patient);
  }
}
