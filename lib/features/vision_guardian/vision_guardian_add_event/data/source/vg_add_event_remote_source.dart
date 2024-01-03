import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

var vgAddEventRemoteSource =
    Provider((ref) => VgAddEventRemoteSourceImpl(ref.read(dioProvider)));

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
    required Map<String, dynamic> pageable,
    required List<String> performerId,
    required String eventId,
    required List<String> drStatus,
  });

  Future postTriageReport({
    required String eventId,
  });
}

class VgAddEventRemoteSourceImpl implements VgAddEventRemoteSource {
  final Dio _dio;

  VgAddEventRemoteSourceImpl(this._dio);

  @override
  Future<List<VisionGuardianEventModel>> getVGEvents({
    required String actorIdentifier,
  }) async {
    const endpoint = "/services/triage/api/campaign-events";
    Map<String, dynamic> queryParameters = {
      "actorIdentifier": actorIdentifier,
    };
    final response = await _dio.get(endpoint, queryParameters: queryParameters);
    return (response.data as List)
        .map((e) => VisionGuardianEventModel.fromJson(e))
        .toList();
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
    final response = await _dio.post(endpoint, data: vgeventjson);
    print(response);
    return response.data;
  }

  @override
  Future deleteVGEvents({required String eventId}) async {
    final endpoint = "/services/triage/api/campaign-events/$eventId";
    print(endpoint);
    final response = await _dio.delete(endpoint);
    print(response);
    return response;
  }

  @override
  Future postAddTeammate(
      {required String eventId, required String actorIdentifier}) async {
    const endpoint =
        '/services/orchestration/api/practitioners/filter?officialMobile=8888888741';
    final response = await _dio.get(endpoint).then((patientresponse) async {
      logger.f(patientresponse.data);

      var roleType = patientresponse.data[0]["practitionerType"];
      if (roleType == "PROFESSIONAL") {
        roleType = "MEDICAL_PRACTITIONER";
      }
      var newResponse = {
        "role": "${roleType}",
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
        print("esponse post");
        print(value.data);
        print("espone post");
        return value;
      }).catchError((error) {
        print(error);
        return error;
      });
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
        /* Map<String, dynamic> queryParameters = {
          "practitionerId": responseTeamMates[i]["identifier"],
        }; */
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
    final response =
        await _dio.delete(endpoint, queryParameters: queryParameters);
    return response.statusCode;
  }

  @override
  Future getTriageReport(
      {required Map<String, dynamic> pageable,
      required List<String> performerId,
      required String eventId,
      required List<String> drStatus}) async {
    const endpoint = "/services/triage/api/campaign-events/triage-report";
    Map<String, dynamic> queryParameters = {
      "pageable": pageable,
      "performer-id": performerId,
      "event-id": eventId,
      "dr-status": drStatus,
    };

    final response = await _dio
        .get(endpoint, queryParameters: queryParameters)
        .then((value) {
      var response =
          value.data; //list of triage reports for the particular events
      for (int i = 0; i < response.length; i++) {
        //call the api which gives the patient-details
      }
    });
    return response;
  }

  @override
  Future postTriageReport({required String eventId}) async {
    const endpoint = "/services/triage/api/campaign-events/triage-report";

    //we need triagepostmodel after completion of triage to map with event id
    final response =
        await _dio.post(endpoint, queryParameters: {eventId: eventId});

    return response;
  }
}
