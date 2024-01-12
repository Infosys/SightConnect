import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/contracts/ivr_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/source/ivr_remote_source.dart';
import '../model/ivr_call_history_model.dart';

var ivrRepository = Provider(
  (ref) => IvrRepositoryImpl(
    ref.watch(ivrRemoteSource),
  ),
);

class IvrRepositoryImpl extends IvrRepository {
  IvrRemoteSource remoteDataSource;

  IvrRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<IvrCallHistoryModel>> getIvrCallHistory({
    required String? mobile,
    List<String>? callStatus,
  }) async {
    return await remoteDataSource.getIvrCallHistory(
      mobile: mobile,
      callStatus: callStatus,
    );
  }

  @override
  Future makeIvrCall({required String patientMobile}) async {
    return await remoteDataSource.makeIvrCall(patientMobile: patientMobile);
  }
}
