import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/remote/triage_remote_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

var vgAddEventRemoteSource = Provider((ref) => VgAddEventRemoteSourceImpl(
    ref.read(dioProvider), ref.read(getTriageModelProvider)));

abstract class VgAddEventRemoteSource {
  Future<List<VisionGuardianEventModel>> getVGEvents({
    required String actorIdentifier,
  });
  Future<dynamic> postVGEvents({
    required VisionGuardianEventModel vgEventModel,
    required Map<String, dynamic> actor,
  });
  Future deleteVGEvents({
    required String eventId,
  });
  Future postAddTeammate({
    required String eventId,
    required String actorIdentifier,
  });
  Future getTeammates({
    required String eventId,
    required String actorIdentifier,
  });

  Future deleteTeamMate({
    required String eventId,
    required String loginActorIdentifier,
    required String actorIdentifier,
  });

  Future getTriageReport({
    required int campaignEventId,
    required List<int> performerId,
  });

  Future postTriageReport({
    required String eventId,
  });
}

class VgAddEventRemoteSourceImpl implements VgAddEventRemoteSource {
  final Dio _dio;
  final GetTriageModelNotifier getTriageModelProvider;
  VgAddEventRemoteSourceImpl(this._dio, this.getTriageModelProvider);

  @override
  Future<List<VisionGuardianEventModel>> getVGEvents({
    required String actorIdentifier,
  }) async {
    const endpoint = "/services/triage/api/campaign-events";
    Map<String, dynamic> queryParameters = {
      "actorIdentifier": actorIdentifier,
    };
    try {
      final response =
          await _dio.get(endpoint, queryParameters: queryParameters);

      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        return (response.data as List)
            .map((e) => VisionGuardianEventModel.fromJson(e))
            .toList();
      } else {
        throw ServerException();
      }
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future postVGEvents(
      {required VisionGuardianEventModel vgEventModel,
      required Map<String, dynamic> actor}) async {
    const endpoint = "/services/triage/api/campaign-events";
    var vgeventjson = vgEventModel.toJson();

    vgeventjson["addresses"] = [vgEventModel.addresses![0].toJson()];
    vgeventjson["images"] = [vgEventModel.images![0].toJson()];

    vgeventjson["actors"] = [actor];
    print(vgeventjson);
    try {
      final response = await _dio.post(endpoint, data: vgeventjson);
      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        print(response);
        return response.data;
      } else {
        throw ServerException();
      }
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future deleteVGEvents({required String eventId}) async {
    final endpoint = "/services/triage/api/campaign-events/$eventId";
    print(endpoint);
    try {
      final response = await _dio.delete(endpoint);
      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        print(response);
        return response;
      } else {
        throw ServerException();
      }
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future postAddTeammate(
      {required String eventId, required String actorIdentifier}) async {
    const endpoint =
        '/services/orchestration/api/practitioners/filter?officialMobile=8888888741';

    return await _dio.get(endpoint).then((patientresponse) async {
      logger.f(patientresponse.data);

      var roleType = patientresponse.data[0]["practitionerType"];
      if (roleType == "PROFESSIONAL") {
        roleType = "MEDICAL_PRACTITIONER";
      }
      var newResponse = {
        "role": "$roleType",
        "identifier": "${patientresponse.data[0]["id"]}",
        "isOwner": false
      };

      print(newResponse);

      const endpoint = "/services/triage/api/campaign-events/teamMates";
      Map<String, dynamic> queryParameters = {
        "eventId": eventId,
        "loginActorIdentifier": actorIdentifier
      };
      logger.d(queryParameters);
      return await _dio
          .post(endpoint, data: newResponse, queryParameters: queryParameters)
          .then((value) {
        return value;
      }).catchError((error) {
        print(error);
        return error;
      });
    }).catchError((error) {
      print(error);
      return error;
    });
  }

  @override
  Future<List<dynamic>> getTeammates(
      {required String eventId, required String actorIdentifier}) async {
    const endpoint = "/services/triage/api/campaign-events/teamMates";
    Map<String, dynamic> queryParameters = {
      "eventId": eventId,
      "loginActorIdentifier": actorIdentifier
    };
    final response = await _dio
        .get(endpoint, queryParameters: queryParameters)
        .then((value) async {
      var responseTeamMates = value.data;
      var listofTeamMates = [];
      logger.d(responseTeamMates);

      for (var i = 0; i < responseTeamMates.length; i++) {
        Map<String, dynamic> queryParameters = {
          "practitionerId": 1801,
        };
        var endpoint = "/services/orchestration/api/practitioners";
        var teammatesDetails =
            await _dio.get(endpoint, queryParameters: queryParameters);
        listofTeamMates.add(teammatesDetails.data);
      }
      print(listofTeamMates[0]);
      print("sdifjklsdjfl");
      return listofTeamMates;
    }).catchError((onError) {
      return onError;
    });

    return response;
  }

  @override
  Future deleteTeamMate(
      {required String eventId,
      required String loginActorIdentifier,
      required String actorIdentifier}) async {
    const endpoint = "/services/triage/api/campaign-events/teamMates";
    Map<String, dynamic> queryParameters = {
      "eventId": eventId,
      "loginActorIdentifier": loginActorIdentifier,
      "actorIdentifier": actorIdentifier,
    };
    print(queryParameters);

    try {
      final response =
          await _dio.delete(endpoint, queryParameters: queryParameters);

      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        return response.statusCode;
      } else {
        throw ServerException();
      }
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future getTriageReport({
    required int campaignEventId,
    required List<int> performerId,
  }) async {
    try {
      const endpoint =
          "/services/orchestration/api/patients/triage-reports/campaign-events";
      Map<String, dynamic> queryParameters = {
        "campaignEventId": campaignEventId,
        "performer-id": performerId,
      };

      final response =
          await _dio.get(endpoint, queryParameters: queryParameters);
      List<VisionGuardianPatientResponseModel> data = (response.data as List)
          .map((e) => VisionGuardianPatientResponseModel.fromJson(e))
          .toList();
      
      return data;
    } catch (error) {
       rethrow;
    }
  }

  @override
  Future postTriageReport({required String eventId}) async {
    const endpoint = "/services/triage/api/campaign-events/triage-report";

    print(eventId);
/*  TriagePostModel triagePostModel = TriagePostModel(
      patientId: 1801,
      serviceType: ServiceType.OPTOMETRY,
      organizationCode: 1001,
      performer: [
        const Performer(
          role: PerformerRole.MEDICAL_DOCTOR,
          identifier: 11067400874,
        )
      ],
      assessmentCode: 1501, //from questionnaire MS
      assessmentVersion: "1.0", //questionnaire MS
      cummulativeScore:7,
      score: [
        //from questionnaire MS
        {"QUESTIONNAIRE": 3},
        {"OBSERVATION": 2},
        {"IMAGE": 2}
      ],
      userStartDate: DateTime.now().subtract(const Duration(seconds: 2)),
      issued: DateTime.now().subtract(const Duration(seconds: 2)),

      source: Source.PATIENT_APP,
      sourceVersion: AppText.appVersion

    );
 */
    var datatriage = {
      "patientId": 1708,
      "encounterId": null,
      "serviceType": "OPTOMETRY",
      "organizationCode": 1001,
      "performer": [
        {"role": "MEDICAL_DOCTOR", "identifier": 11067400874}
      ],
      "assessmentCode": 1501,
      "assessmentVersion": "1.0",
      "issued": "2023-12-16T14:11:33.000Z",
      "userStartDate": "2023-12-16T14:11:33.000Z",
      "source": "VT_APP",
      "sourceVersion": "1.0",
      "incompleteSection": [
        {"testName": "QUESTIONNAIRE"}
      ],
      "cummulativeScore": 7,
      "score": [
        {"QUESTIONNAIRE": 3},
        {"OBSERVATION": 2},
        {"IMAGE": 2}
      ],
      "imagingSelection": [
        {
          "identifier": 1001,
          "endpoint": "/c/newimage.jpg",
          "baseUrl": "http://www.abc.com",
          "fileId": "1702728827406-5867878d-f8ea-4c51-ad50-fbe96148bf8c",
          "score": 2
        }
      ],
      "observations": [
        {"identifier": 2001, "value": "0.75", "score": 2},
        {"identifier": 2002, "value": "1", "score": 2}
      ],
      "questionResponse": [
        {
          "linkId": 3001,
          "score": 1,
          "answers": [
            {"value": "Yes", "score": 1}
          ]
        },
        {
          "linkId": 3002,
          "score": 1,
          "answers": [
            {"value": "No", "score": 1}
          ]
        }
      ]
    };

    try {
      var response = await _dio.post(endpoint,
          data: datatriage, queryParameters: {"event-id": int.parse(eventId)});
      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        return response.statusCode;
      } else {
        throw ServerException();
      }
    } catch (error) {
      rethrow;
    }
  }
}
