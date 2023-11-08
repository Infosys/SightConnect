import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TriageLocalSource {
  Future<TriageAssessment> getTriage();
  Future<TriageAssessment> updateTriage({required TriageAssessment triage});
  Future<void> saveTriage({required TriageAssessment triage});
  Future<void> deleteTriage();
  Future<TriageResponse> saveTriageResponse(
      {required TriageResponse triageResponse});
  Future<TriageResponse> getTriageResponse();
}

class TriageLocalSourceImpl implements TriageLocalSource {
  TriageDBHelper triageDBHelper;
  TriageLocalSourceImpl(this.triageDBHelper);

  @override
  Future<void> deleteTriage() {
    // TODO: implement deleteTriage
    throw UnimplementedError();
  }

  @override
  Future<TriageAssessment> getTriage() {
    // TODO: implement getTriage
    throw UnimplementedError();
  }

  @override
  Future<TriageResponse> getTriageResponse() {
    // TODO: implement getTriageResponse
    throw UnimplementedError();
  }

  @override
  Future<void> saveTriage({required TriageAssessment triage}) {
    // TODO: implement saveTriage
    throw UnimplementedError();
  }

  @override
  Future<TriageResponse> saveTriageResponse(
      {required TriageResponse triageResponse}) {
    // TODO: implement saveTriageResponse
    throw UnimplementedError();
  }

  @override
  Future<TriageAssessment> updateTriage({required TriageAssessment triage}) {
    // TODO: implement updateTriage
    throw UnimplementedError();
  }
}

var triageLocalSource = Provider<TriageLocalSource>(
  (ref) => TriageLocalSourceImpl(ref.watch(triageDBHelperProvider)),
);
