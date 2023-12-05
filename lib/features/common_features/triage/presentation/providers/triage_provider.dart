import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/srouce.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/models/triage_assessment_model.dart';

var triageProvider = ChangeNotifierProvider(
  (ref) => TriageProvider(ref),
);

class TriageProvider extends ChangeNotifier {
  Ref ref;
  List<QuestionnaireSectionsResponseModel> _questionnaireSections = [];
  List<QuestionnaireSectionsResponseModel> get questionnaireSections =>
      _questionnaireSections;
  TriageProvider(this.ref) {
    getTriage();
  }

  Future<void> getTriage() async {
    var response = await ref.read(triageRepositoryProvider).getTriage();
    response.fold(
      (failure) {
        logger.d("getTriage $failure");
        logger.d("TriageProvider:- $failure");
      },
      (triageAssessment) {
        _questionnaireSections =
            triageAssessment.questionnaireSectionsResponseDTOList!;
      },
    );
    notifyListeners();
  }

  //set triage response based on the TriageResponse model
  Future<void> saveTriage() async {
    var triage = TriageResponseModel(
      patientId: 99000001,
      encounterId: 100001,
      serviceType: 'OPTOMETRY',
      organizationCode: 231000,
      performer: [
        const PerformerModel(
            role: PerformerRole.MEDICAL_DOCTOR, identifier: 200102)
      ],
      assessmentCode: 30001,
      assessmentVersion: "v1",
      issued: DateTime.now(),
      userStartDate: DateTime.now(),
      source: Source.PATIENT_APP,
      sourceVersion: "v1",
      incompleteSection: [],
      imagingSelection:
          await ref.read(triageLocalSourceProvider).getTriageEyeScanResponse(),
      observations: await ref
          .read(triageLocalSourceProvider)
          .getVisionAcuityTumblingResponse(),
      questionResponse:
          await ref.read(triageLocalSourceProvider).getQuestionaireResponse(),
    );
    logger.d("Triage Response before api call:  $triage");
    var response = await ref.read(triageRepositoryProvider).saveTriage(
          triage: triage,
        );
    response.fold(
      (failure) {
        logger.d("saveTriage $failure");
        throw failure;
      },
      (triageResponse) => logger.d("Final Triage Response:  $triageResponse"),
    );
  }

  String _getQuestionaireRemarks() {
    String remarks = ref.read(triageQuestionnaireProvider).questionnaireRemarks;
    logger.d(remarks);
    return remarks;
  }

  resetTriage() {
    ref.invalidate(triageQuestionnaireProvider);
    ref.invalidate(triageEyeScanProvider);

    ref.read(tumblingTestProvider).reset();
    ref.read(triageStepperProvider).reset();
  }
}
