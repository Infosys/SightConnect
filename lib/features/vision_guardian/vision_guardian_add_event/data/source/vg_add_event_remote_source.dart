import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
        '/services/orchestration/api/practitioners/filter?officialMobile=1234567891';
    final response = await _dio.get(endpoint).then((value)async {
      var newResponse={
  "role": "MEDICAL_DOCTOR",
  "identifier": "7412115640728765726746033778035388965009724684348059769236735883896455075920807737461399997",
  "isOwner": true
};

const endpoint = "services/triage/api/campaign-events/teamMates";
Map<String, dynamic> queryParameters = {
      "eventId": eventId,
      "loginActorIdentifier":actorIdentifier
    };

final response=await _dio.post(endpoint,queryParameters: queryParameters);
    });
    logger.f(response.data + "jlaskdhnasuljdhasdilaksdjas");
    return response;
  }
}
