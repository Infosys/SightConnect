import 'package:eye_care_for_all/app_environment.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/repositories/patient_authentication_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/models/patient_response_model.dart';

final getpatientProfileProvider =
    FutureProvider<PatientResponseModel>((ref) async {
  const patientId = 1202;
  if (AppEnv.isDev) {
    return PatientResponseModel.fromJson({
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
            },
            // {
            //   "patientId": 1203,
            //   "relation": "FATHER",
            //   "parentPatientId": 1202,
            //   "name": "Mangal Pandey",
            //   "profilePicture": "assets/images/user.png",
            //   "age": 0,
            //   "regRef": "1-e640f259-3656-45cd-ac7c-73f9c5056ae5"
            // },
            // {
            //   "patientId": 1203,
            //   "relation": "FATHER",
            //   "parentPatientId": 1202,
            //   "name": "Mangal Pandey",
            //   "profilePicture": "assets/images/user.png",
            //   "age": 0,
            //   "regRef": "1-e640f259-3656-45cd-ac7c-73f9c5056ae5"
            // },
            // {
            //   "patientId": 1203,
            //   "relation": "FATHER",
            //   "parentPatientId": 1202,
            //   "name": "Mangal Pandey",
            //   "profilePicture": "assets/images/user.png",
            //   "age": 0,
            //   "regRef": "1-e640f259-3656-45cd-ac7c-73f9c5056ae5"
            // },
            // {
            //   "patientId": 1203,
            //   "relation": "FATHER",
            //   "parentPatientId": 1202,
            //   "name": "Mangal Pandey",
            //   "profilePicture": "assets/images/user.png",
            //   "age": 0,
            //   "regRef": "1-e640f259-3656-45cd-ac7c-73f9c5056ae5"
            // },
            // {
            //   "patientId": 1203,
            //   "relation": "FATHER",
            //   "parentPatientId": 1202,
            //   "name": "Mangal Pandey",
            //   "profilePicture": "assets/images/user.png",
            //   "age": 0,
            //   "regRef": "1-e640f259-3656-45cd-ac7c-73f9c5056ae5"
            // },
            // {
            //   "patientId": 1203,
            //   "relation": "FATHER",
            //   "parentPatientId": 1202,
            //   "name": "Mangal Pandey",
            //   "profilePicture": "assets/images/user.png",
            //   "age": 0,
            //   "regRef": "1-e640f259-3656-45cd-ac7c-73f9c5056ae5"
            // },
          ],
          "identifiers": null,
          "medicalRecords": null
        }
      }
    });
  } else {
    final authRepo = ref.watch(patientAuthenticationRepositoryProvider);
    final response = await authRepo.getPatientProfile(patientId);

    return response.fold((error) {
      throw error;
    }, (result) {
      return result;
    });
  }
});

final updatePatientProfileProvider = FutureProvider((ref) async {
  const patientId = 1202;
  final authRepo = ref.watch(patientAuthenticationRepositoryProvider);
  final response = await authRepo.getPatientProfile(patientId); //update method

  return response.fold((error) {
    return error;
  }, (result) {
    return result;
  });
});
