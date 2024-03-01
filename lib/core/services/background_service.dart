import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/constants/api_constant.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_db_helper.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/main.dart';

class BackgroundServices {
  static const String postTriage = "workmanager_post_triage";
  static Future<void> dispatchTriageResult() async {
    logger.i("dispatchTriageResult");
    final responses = await TriageDBHelper().getTriageAssessmentResponse();
    logger.f({
      "dispatchTriageResult": responses,
    });

    Dio dio = Dio(BaseOptions(baseUrl: ApiConstant.baseUrl, headers: {
      "Authorization":
          "Bearer ${PersistentAuthStateService.authState.accessToken}",
      "X-Accept-Language": "en",
      "X-Active-Role": PersistentAuthStateService.authState.activeRole,
    }));

    if (responses.isNotEmpty) {
      for (var resp in responses) {
        TriagePostModel triageResponse = TriagePostModel.fromJson(
            json.decode(resp['response_json'].toString()));
        logger.f({
          {"triageResponse ": triageResponse.toString()}
        });
        logger.d("Internet is connected Syncing.. triage to remote");

        triageResponse = triageResponse.copyWith(
            imagingSelection: await convertBase64ToFile(
                dio, triageResponse.imagingSelection));
        logger.f({
          {"triageResponse ": triageResponse.toString()}
        });

        const endpoint = "/services/triage/api/triage-report";
        try {
          logger.d({
            "triage model to be saved in remote source": triageResponse.toJson()
          });
          var response = await dio.post(
            endpoint,
            data: triageResponse.toJson(),
          );

          logger.d({
            "API saveTriage": endpoint,
            "response": response.data,
          });
          if (response.statusCode != null) {
            if (response.statusCode! >= 200 && response.statusCode! < 210) {
              try {
                await TriageDBHelper().deleteTriageResponse();
              } catch (e) {
                logger.d("this is the error ${e.toString()}");
                throw ServerException();
              }
            } else {
              throw ServerException();
            }
          } else {
            throw ServerException();
          }
        } catch (e) {
          logger.d("this is the error ${e.toString()}");
          throw UnknownException();
        }
      }
    }
  }
}
