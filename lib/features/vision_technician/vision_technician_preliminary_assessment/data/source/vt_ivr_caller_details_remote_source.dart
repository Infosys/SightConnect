import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/ivr_caller_details_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VTIVRCallerDetailsRemoteSource {
  Future<String> saveCallerDetails(IVRCallerDetailsModel callerDetails);
  // Future<IVRCallerDetailsModel> saveIVRCallerDetails(
  //     {required IVRCallerDetailsModel ivrCallerDetails});
}

var vtIVRCallerDetailsRemoteSourceProvider =
    Provider<VTIVRCallerDetailsRemoteSource>((ref) {
  return VTIVRCallerDetailsRemoteSourceImpl(
    ref.read(dioProvider),
  );
});

class VTIVRCallerDetailsRemoteSourceImpl
    implements VTIVRCallerDetailsRemoteSource {
  final Dio dio;
  VTIVRCallerDetailsRemoteSourceImpl(this.dio);

  @override
  Future<String> saveCallerDetails(IVRCallerDetailsModel callerDetails) async {
    try {
      String endPoint = "/services/exotel/api/users/ivr/callerDetails";
      var response = await dio.put(endPoint, data: callerDetails.toJson());
      logger.d("Caller details Saved response ${response.data}");
      return "success";
    } on DioException catch (e) {
      logger.d("this is the error ${e.message}");
      if (e.response != null) {
        logger.d("Error response: ${e.response.toString()}");
      }
      return "error";
    } catch (e) {
      logger.d("Unknown error: ${e.toString()}");
      return "error";
    }
  }
}
