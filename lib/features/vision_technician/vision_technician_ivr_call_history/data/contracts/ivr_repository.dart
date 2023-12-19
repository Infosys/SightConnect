import '../../domain/model/ivr_call_history_model.dart';

abstract class IvrRepository {
  Future<List<IvrCallHistoryModel>> getIvrCallHistory({required String mobile});
  Future makeIvrCall({required String patientMobile});
}