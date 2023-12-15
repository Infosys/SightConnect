import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/model/ivr_call_history_model.dart';

abstract class IvrRepository {
  Future<List<IvrCallHistoryModel>> getIvrCallHistory({required String mobile});
  Future makeIvrCall({required String patientMobile});
}