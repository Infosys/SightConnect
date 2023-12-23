import 'package:dio/dio.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/services/dio_service.dart';

abstract class VTPatientSearchRepository {
  Future<List<VTPatientDto>> getPatientProfile(String data);
}

var vtPatientSearchRepositoryProvider = Provider<VTPatientSearchRepository>(
  (ref) => VTPatientSearchRepositoryImpl(
    ref.watch(dioProvider),
  ),
);

class VTPatientSearchRepositoryImpl implements VTPatientSearchRepository {
  final Dio _dio;
  VTPatientSearchRepositoryImpl(this._dio);

  @override
  Future<List<VTPatientDto>> getPatientProfile(String query) async {
    if (query.isEmpty) throw "List is empty";

    var endPoint = '/services/orchestration/api/patients/triage-reports';

    if (isNumeric(query)) {
      endPoint += "?mobile=$query";
    } else {
      endPoint += "?name=$query";
    }

    return _dio.get(endPoint).then((value) {
      List<VTPatientDto> list = [];

      value.data.forEach((element) {
        list.add(VTPatientDto.fromJson(element));
      });
      return list;
    });

    // var response = await rootBundle.loadString("assets/vt_patient.json");
    // var data = jsonDecode(response);
    // var jsonList = data["patients"];
    // List<VTPatientDto> list = [];
    // print(jsonList);
    // for (int i = 0; i < jsonList.length; i++) {
    //   VTPatientDto patient = VTPatientDto.fromJson(jsonList[i]);

    //   if (patient.name!.toLowerCase().contains(query) ||
    //       patient.id!.toString().contains(query) ||
    //       patient.mobile!.contains(query)) {
    //     list.add(patient);
    //   }
    // }
    // print(list);
    // return list;
  }
}

bool isNumeric(String str) {
  return double.tryParse(str) != null;
}
