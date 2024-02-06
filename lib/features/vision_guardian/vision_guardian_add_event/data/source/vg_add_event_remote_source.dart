import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/remote/triage_remote_source.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vgAddEventRemoteSource = Provider(
  (ref) => VgAddEventRemoteSourceImpl(
    ref.read(dioProvider),
    ref.read(getTriageModelProvider),
    ref.read(globalVGProvider),
  ),
);

abstract class VgAddEventRemoteSource {
  Future<List<VisionGuardianEventModel>> getVGEvents({
    required Map<String, dynamic> queryData,
  });
  Future<dynamic> postVGEvents({
    required VisionGuardianEventModel vgEventModel,
    required Map<String, dynamic> actor,
  });
  Future deleteVGEvents({
    required String eventId,
  });
  Future postAddTeammate(
      {required String eventId,
      required String actorIdentifier,
      required int officialMobile});
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
    required Map<String, dynamic> queryData,
  });

  Future getEventPatientList({
    required Map<String, dynamic> patientQueryData,
  });
  Future getSearchEvent({
    required eventId,
  });
}

class VgAddEventRemoteSourceImpl implements VgAddEventRemoteSource {
  final Dio _dio;
  final GetTriageModelNotifier getTriageModelProvider;
  final GlobalVGProvider globalVGProvider;
  VgAddEventRemoteSourceImpl(
      this._dio, this.getTriageModelProvider, this.globalVGProvider);

  @override
  Future<List<VisionGuardianEventModel>> getVGEvents({
    required Map<String, dynamic> queryData,
  }) async {
    const endpoint = "/services/triage/api/campaign-events";
    Map<String, dynamic> queryParameters = {
      "actor-id": queryData["actorIdentifier"],
      "filter": queryData["eventStatusFilter"],
      "page": queryData["pageable"]["page"],
      "size": queryData["pageable"]["size"]
    };
    if (queryData["pageable"]["title-like"].length > 0) {
      queryParameters
          .addAll({"title-like": queryData["pageable"]["title-like"]});
    }
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
    try {
      final response = await _dio.post(endpoint, data: vgeventjson);
      if (response.statusCode! >= 200 && response.statusCode! < 210) {
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

    Map<String, dynamic> queryParameters = {
      "login-actor-id": globalVGProvider.user!.id!,
    };

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
  Future postAddTeammate(
      {required String eventId,
      required String actorIdentifier,
      required int officialMobile}) async {
    var endpoint =
        '/services/orchestration/api/practitioners/filter?officialMobile=$officialMobile}';

    return await _dio.get(endpoint).then((patientresponse) async {
      if (patientresponse.data == null || patientresponse.data.length == 0) {
        throw ServerException();
      }
      var roleType = patientresponse.data[0]["practitionerType"];
      if (roleType == "PROFESSIONAL") {
        roleType = "MEDICAL_PRACTITIONER";
      }
      var newResponse = {
        "role": "MEDICAL_PRACTITIONER",
        "identifier": "${patientresponse.data[0]["id"]}",
        "isOwner": false
      };

      const endpoint = "/services/triage/api/campaign-events/teammates";
      Map<String, dynamic> queryParameters = {
        "event-id": eventId,
        "login-actor-id": actorIdentifier.toString()
      };

      return await _dio
          .post(endpoint, data: newResponse, queryParameters: queryParameters)
          .then((value) {
        return value;
      }).catchError((error) {
        return error;
      });
    }).catchError((error) {
      return error;
    });
  }

  @override
  Future<List<dynamic>> getTeammates(
      {required String eventId, required String actorIdentifier}) async {
    const endpoint = "/services/triage/api/campaign-events/teammates";
    Map<String, dynamic> queryParameters = {
      "event-id": eventId,
      "login-actor-id": actorIdentifier.toString()
    };

    final response = await _dio
        .get(endpoint, queryParameters: queryParameters)
        .then((value) async {
      var responseTeamMates = value.data;
      var listofTeamMates = [];
      for (var i = 0; i < responseTeamMates.length; i++) {
        Map<String, dynamic> queryParameters = {
          "practitionerId": int.parse(responseTeamMates[i]["identifier"]),
        };

        var endpoint = "/services/orchestration/api/practitioners";
        await _dio.get(endpoint, queryParameters: queryParameters).then(
          (value) {
            listofTeamMates.add(value.data);
          },
        ).catchError((onError) {
          return onError;
        });
      }

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
    const endpoint = "/services/triage/api/campaign-events/teammates";
    Map<String, dynamic> queryParameters = {
      "event-id": eventId,
      "login-actor-id": loginActorIdentifier,
      "actor-id": actorIdentifier,
    };

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
    required Map<String, dynamic> queryData,
  }) async {
    try {
      const endpoint =
          "/services/orchestration/api/patients/triage-reports/campaign-events";
      Map<String, dynamic> queryParameters = {
        "campaignEventId": queryData["campaignEventId"],
        "performer-id": queryData["performerId"],
        "page": queryData["pageable"]["page"],
        "size": queryData["pageable"]["size"]
      };
      logger.d(queryParameters);
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
  Future getEventPatientList(
      {required Map<String, dynamic> patientQueryData}) async {
    const endpoint = "/services/orchestration/api/patients/filter";
    var queryParams = {
      "offset": patientQueryData["offset"],
      "limit": patientQueryData["limit"],
      "queryText": patientQueryData["searchParams"],
    };

    logger.d(queryParams);
    try {
      var response = await _dio.get(
        endpoint,
        queryParameters: queryParams,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        List<VisionGuardianEventPatientResponseModel> data =
            (response.data as List)
                .map((e) => VisionGuardianEventPatientResponseModel.fromJson(
                    e["profile"]["patient"]))
                .toList();
        return data;
      } else {
        throw ServerException();
      }
    } catch (error) {
      logger.d(error);
      rethrow;
    }
  }

  @override
  Future getSearchEvent({required eventId}) async {
    var endpoint = "/services/triage/api/campaign-events/$eventId";

    try {
      var response = await _dio.get(
        endpoint,
      );
      return VisionGuardianEventModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
