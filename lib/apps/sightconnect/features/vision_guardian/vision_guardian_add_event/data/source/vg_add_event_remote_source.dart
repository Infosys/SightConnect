/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/source/remote/triage_remote_source.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/volunteer_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_vg_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../presentation/providers/vg_user_data_provider.dart';

var getEventsDataProvider = FutureProvider<List<VisionGuardianEventModel>>(
  (ref) {
    try {
      final response = ref.watch(vgAddEventRemoteSource).getVGEvents(
        queryData: {
          "actorIdentifier": PersistentAuthStateService.authState.userId,
          "eventStatusFilter": "ALL",
          "pageable": {
            "page": 0,
            "size": 10,
            "title-like": "",
          },
        },
      );
      logger.d("response in getEventsDataProvider: $response");
      return response;
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (error) {
      rethrow;
    }
  },
);

var vgAddEventRemoteSource = Provider(
  (ref) => VgAddEventRemoteSourceImpl(
    ref.watch(dioProvider),
    ref.read(getTriageModelProvider),
    ref.read(globalVGProvider),
    ref.read(vgUserDataProvider),
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
  final VGUserDataProvider vgUserDataProvider;
  VgAddEventRemoteSourceImpl(this._dio, this.getTriageModelProvider,
      this.globalVGProvider, this.vgUserDataProvider);

  @override
  Future<List<VisionGuardianEventModel>> getVGEvents({
    required Map<String, dynamic> queryData,
  }) async {
    const endpoint = "/services/triage/api/v2/campaign-events";
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
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future postVGEvents(
      {required VisionGuardianEventModel vgEventModel,
      required Map<String, dynamic> actor}) async {
    const endpoint = "/services/triage/api/v2/campaign-events";
    var vgeventjson = vgEventModel.toJson();

    vgeventjson["addresses"] = [vgEventModel.addresses![0].toJson()];
    vgeventjson["images"] =
        vgEventModel.images == null ? [] : [vgEventModel.images![0].toJson()];

    vgeventjson["actors"] = [actor];

    logger.d("inside add event data is : ${vgeventjson.toString()}");

    try {
      final response = await _dio.post(endpoint, data: vgeventjson);
      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        return response.data;
      } else {
        throw ServerException();
      }
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future deleteVGEvents({required String eventId}) async {
    final endpoint = "/services/triage/api/v2/campaign-events/$eventId";
    Map<String, dynamic> queryParameters;
    // if (PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER") {
    queryParameters = {
      "login-actor-id": vgUserDataProvider.getUserId!,
    };
    // } else {
    //   queryParameters = {
    //     "login-actor-id": globalVGProvider.user!.id!,
    //   };
    // }

    try {
      final response =
          await _dio.delete(endpoint, queryParameters: queryParameters);
      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        return response.statusCode;
      } else {
        throw ServerException();
      }
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future postAddTeammate(
      {required String eventId,
      required String actorIdentifier,
      required int officialMobile}) async {
    String endpoint;
    if (PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER") {
      endpoint =
          "/services/orchestration/api/v2/volunteers/mobile/$officialMobile";
    } else {
      endpoint =
          '/services/orchestration/api/v2/practitioners/filter?officialMobile=$officialMobile}';
    }

    return await _dio.get(endpoint).then((patientresponse) async {
      if (patientresponse.data == null || patientresponse.data.length == 0) {
        throw ServerException();
      }
      // var roleType = patientresponse.data[0]["practitionerType"];
      // if (roleType == "PROFESSIONAL") {
      //   roleType = "MEDICAL_PRACTITIONER";
      // }
      Map<String, Object> newResponse;

      if (PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER") {
        newResponse = {
          "role": "VOLUNTEER",
          "identifier": "${patientresponse.data["id"]}",
          "isOwner": false
        };
        logger.f("newResponse: $newResponse");
      } else {
        newResponse = {
          "role": "VISION_GUARDIAN",
          "identifier": "${patientresponse.data[0]["id"]}",
          "isOwner": false
        };
      }

      const endpoint = "/services/triage/api/v2/campaign-events/teammates";
      Map<String, dynamic> queryParameters = {
        "event-id": eventId,
        "login-actor-id": actorIdentifier.toString()
      };

      return await _dio
          .post(endpoint, data: newResponse, queryParameters: queryParameters)
          .then((value) {
        return value;
      }).catchError((error) {
        DioErrorHandler.handleDioError(error);

        return error;
      });
    }).catchError((error) {
      DioErrorHandler.handleDioError(error);
      return error;
    });
  }

  @override
  Future<List<dynamic>> getTeammates(
      {required String eventId, required String actorIdentifier}) async {
    const endpoint = "/services/triage/api/v2/campaign-events/teammates";

    Map<String, dynamic> queryParameters = {
      "event-id": eventId,
      "login-actor-id": actorIdentifier.toString()
    };

    final response = await _dio
        .get(endpoint, queryParameters: queryParameters)
        .then((value) async {
      for (var i = 0; i < value.data.length; i++) {
        logger.d(value.data[i]);
      }
      var responseTeamMates = value.data;
      var listofTeamMates = [];
      if (PersistentAuthStateService.authState.activeRole == "ROLE_VOLUNTEER") {
        for (var i = 0; i < responseTeamMates.length; i++) {
          int userId = int.parse(responseTeamMates[i]["identifier"]);

          var endpoint = "/services/orchestration/api/v2/volunteers/$userId";
          await _dio.get(endpoint).then(
            (value) {
              logger.f("value: $value");
              VolunteerPostModel volunteerPostModel =
                  VolunteerPostModel.fromJson(value.data);

              var listofTeamMatesMapped = [
                {
                  "id": volunteerPostModel.id,
                  "officialMobile": volunteerPostModel.profile!.phoneNumber,
                  "profilePhoto": null,
                  "firstName": volunteerPostModel.profile!.firstName,
                  "lastName": volunteerPostModel.profile!.lastName,
                }
              ];

              return listofTeamMates.add(listofTeamMatesMapped);
            },
          ).catchError((onError) {
            DioErrorHandler.handleDioError(onError);
            return onError;
          });
        }
      } else {
        for (var i = 0; i < responseTeamMates.length; i++) {
          Map<String, dynamic> queryParameters = {
            "practitioner-id": int.parse(responseTeamMates[i]["identifier"]),
          };

          var endpoint = "/services/orchestration/api/v2/practitioners/custom";
          await _dio.get(endpoint, queryParameters: queryParameters).then(
            (value) {
              listofTeamMates.add(value.data);
            },
          ).catchError((onError) {
            DioErrorHandler.handleDioError(onError);
            return onError;
          });
        }
      }
      logger.f("listofTeamMates: $listofTeamMates");
      return listofTeamMates;
    }).catchError((onError) {
      DioErrorHandler.handleDioError(onError);
      return onError;
    });

    return response;
  }

  @override
  Future deleteTeamMate(
      {required String eventId,
      required String loginActorIdentifier,
      required String actorIdentifier}) async {
    const endpoint = "/services/triage/api/v2/campaign-events/teammates";
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
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
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
          "/services/orchestration/api/v2/patients/triage-reports/campaign-events";
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
      logger.f("response: $response");
      logger.f("data: $data");

      return data;
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future getEventPatientList(
      {required Map<String, dynamic> patientQueryData}) async {
    logger.f("queryData: $patientQueryData");
    const endpoint = "/services/orchestration/api/v2/patients/filter";
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
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
    } catch (error) {
      logger.d(error);
      rethrow;
    }
  }

  @override
  Future getSearchEvent({required eventId}) async {
    var endpoint = "/services/triage/api/v2/campaign-events/$eventId";

    try {
      var response = await _dio.get(
        endpoint,
      );
      return VisionGuardianEventModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
    } catch (e) {
      rethrow;
    }
  }
}
