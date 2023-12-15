import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/contracts/ivr_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/ivr_call_history_model.dart';
import '../source/ivr_remote_source.dart';

var ivrRepository = Provider(
  (ref) => IvrRepositoryImpl(
    ref.watch(ivrRemoteSource),
  ),
);

class IvrRepositoryImpl extends IvrRepository {
  IvrRemoteSource remoteDataSource;

  IvrRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<IvrCallHistoryModel>> getIvrCallHistory(
      {required String mobile}) async {
    return await remoteDataSource.getIvrCallHistory(mobile: mobile);
  }
}
