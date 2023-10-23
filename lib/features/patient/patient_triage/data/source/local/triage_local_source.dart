import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_response.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/triage_assessment.dart';

abstract class TriageLocalDataSource {
  Future<TriageAssessment> getTriage();
  Future<TriageResponse> saveTriage({required TriageResponse triage});
}

class TriageLocalSourceImpl implements TriageLocalDataSource {
  TriageLocalSourceImpl();

  @override
  Future<TriageAssessment> getTriage() {
    // TODO: implement getTriage
    throw UnimplementedError();
  }

  @override
  Future<TriageResponse> saveTriage({required TriageResponse triage}) {
    // TODO: implement saveTriage
    throw UnimplementedError();
  }
}

var triageLocalSource =
    Provider<TriageLocalDataSource>((ref) => TriageLocalSourceImpl());
