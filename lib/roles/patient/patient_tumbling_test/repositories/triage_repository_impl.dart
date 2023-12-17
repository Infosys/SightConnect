import 'dart:developer';

import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/contracts/triage_repository.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/data/remote/triage_remote_source.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/models/triage_DTO.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageRepositoryProvider = Provider<TriageRepository> ((ref) => TriageRepositoryImpl(ref.watch(triageRemoteSource)),);

class TriageRepositoryImpl implements TriageRepository {
  TriageRemoteSource _remoteDataSource;

  TriageRepositoryImpl(this._remoteDataSource);

  Future<TriageDTO> saveTriage(TriageDTO triageDTO) async {
    try {
      final remoteResponse = await _remoteDataSource.saveTriage(triageDTO);
      return remoteResponse;
    }
    catch(e) {
      log(e.toString());
      return TriageDTO();
    }
  }
}