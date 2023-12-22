import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VTHomeRemoteSource {
  Future<List<VTPatientDto>> getListOfPatients();
}

var vtHomeRemoteSource = Provider(
  (ref) => VTHomeRemoteSourceImpl(
    ref.read(dioProvider),
  ),
);

class VTHomeRemoteSourceImpl implements VTHomeRemoteSource {
  final Dio _dio;

  VTHomeRemoteSourceImpl(this._dio);

  @override
  Future<List<VTPatientDto>> getListOfPatients() async {
    const endPoint =
        '/services/orchestration/api/patients/triage-reports/practitioners/2002';

    return _dio.get(endPoint).then((value) {
      List<VTPatientDto> list = [];
      value.data.forEach((element) {
        list.add(VTPatientDto.fromJson(element));
      });

      return list;
    });

    // final response = await rootBundle.loadString("assets/vt_patient.json");
    // var data = jsonDecode(response);
    // List jsonList = data["patients"];
    // List<VTPatientDto> list = [];
    // for (int i = 0; i < jsonList.length; i++) {
    //   list.add(VTPatientDto.fromJson(jsonList[i]));
    // }
    // // print(list);
    // return list;
  }
}
