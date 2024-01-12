import 'package:dio/dio.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/main.dart';

abstract class VTSaveTriageRemoteSource {
  Future<TriagePostModel> saveTriage(TriagePostModel triagePostModel);
}

class VTSaveTriageRemoteSourceImpl implements VTSaveTriageRemoteSource {
  final Dio dio;

  VTSaveTriageRemoteSourceImpl(this.dio);
  


  @override
  Future<TriagePostModel> saveTriage(TriagePostModel triagePostModel) async {

    try {
      String endPoint = "/services/triage/api/triage-report";
      var response = await dio.post(endPoint, data: triagePostModel.toJson());

      return TriagePostModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        logger.d("Error response: ${e.response.toString()}");
      }
    } catch (e) {
      logger.d("Unknown error: ${e.toString()}");
    }

    return const TriagePostModel();

  }
}
