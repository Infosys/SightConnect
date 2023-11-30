import 'package:eye_care_for_all/features/patient/patient_profile/data/models/patient_response_model.dart';
import 'package:eye_care_for_all/features/patient/patient_home/data/repositories/patient_dashboard_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientHomeProvider = ChangeNotifierProvider.autoDispose(
  (ref) => PatientHomeProvider(ref),
);

class PatientHomeProvider extends ChangeNotifier {
  Ref ref;

  bool _isLoading = false;
  
  
  PatientResponseModel _patient = PatientResponseModel();

  PatientHomeProvider(this.ref){
    if(isPOC) {
      _patient = PatientResponseModel.fromJson({
        
        "intent": "PROFILE_SHARE",
        "metaData": {
          "hipId": null,
          "counterId": null,
          "hprId": null,
          "latitude": null,
          "longitude": null
        },
        "profile": {
          "patient": {
            "patientID": "1202",
            "abhaNumber": null,
            "abhaAddress": null,
            "name": "Raghavi Mishra",
            "gender": "FEMALE",
            "profilePhoto": "assets/images/user.png",
            "email": "RaghaviMishra@gmail.com",
            "dayOfBirth": "15",
            "monthOfBirth": "08",
            "yearOfBirth": "2006",
            "phoneNumber": "8907685432",
            "parentPatientId": null,
            "address": [
              {
                "id": 1252,
                "line": "Line 1",
                "district": "Vishakapatnam",
                "state": "Andhra Pradesh",
                "pincode": "678543",
                "label": null,
                "isPrimary": true,
                "isDeleted": null,
                "status": null,
                "ward": "Vishakapatnam",
                "town": null,
                "village": null,
                "subDistrict": null,
                "primary": true,
                "deleted": null
              }
            ],
            "relatedParty": [
              {
                "patientId": 1201,
                "relation": "MOTHER",
                "parentPatientId": 1202,
                "name": "Raghavi Sharma",
                "profilePicture": "assets/images/user.png",
                "age": 20,
                "regRef": "1-07b601cf-cc06-4ec1-95ca-d2d0dd16439b"
              },
              {
                "patientId": 1203,
                "relation": "FATHER",
                "parentPatientId": 1202,
                "name": "Mangal Pandey",
                "profilePicture": "assets/images/user.png",
                "age": 0,
                "regRef": "1-e640f259-3656-45cd-ac7c-73f9c5056ae5"
              }
            ],
            "identifiers": null,
            "medicalRecords": null
          }
        }

      });
    } else {
      getPatientProfile();
    }
    
  }

  bool get isLoading => _isLoading;

  set isLoading(bool value) => _isLoading = value;

  PatientResponseModel get patient => _patient;

  set patient(PatientResponseModel value) => _patient = value;

  Future<void> getPatientProfile() async {
    _isLoading = true;
    notifyListeners();
    try {
      var response = await ref.read(patientDashboardRepositoryProvider).getPatientDashboard(1204);
      _patient = response;
    } catch(e) {
      throw e;
    }
    
    _isLoading = false;
    notifyListeners();
  }

}
