import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/data/model/vg_eye_assessment_patient_model.dart';

var eyeAssessmentfilters = [
  {"type": "All", "checked": false},
  {"type": "Early Consult", "checked": false},
  {"type": "Urgent Consult", "checked": false},
  {"type": "Routine Consult", "checked": false},
];

var casesCritical = [
  VisionGuardianEyeAssessmentPatientModel(
    name: "Raghav Pandey - PD 789996",
    age: "28 yrs",
    gender: "Male",
    reportDate: "17 Dec 23",
    reportTime: "11:00 AM",
    assessmentId: "Assessment ID: AT 010111",
    urgency: "Urgent Consult",
    profession: "Eye Surgeon",
    recommendation:
        "Hey Raghavan, you have an upcoming appointment for your eye checkup on Sep 23rd at 2.00 PM.",
    image: AppImages.raghavi,
    prefix: "PG",
  ),
  VisionGuardianEyeAssessmentPatientModel(
    name: "Raghav Pandey - PD 789996",
    age: "28 yrs",
    gender: "Male",
    reportDate: "17 Dec 23",
    reportTime: "11:00 AM",
    assessmentId: "Assessment ID: AT 010111",
    urgency: "Routine Consult",
    profession: "Eye Surgeon",
    recommendation:
        "Hey Raghavan, you have an upcoming appointment for your eye checkup on Sep 23rd at 2.00 PM.",
    image: AppImages.raghavi,
    prefix: "PG",
  )
];
