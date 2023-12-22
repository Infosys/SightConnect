import 'dart:convert';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'triage_db_helper.dart';

abstract class TriageLocalSource {
  /// these are for assessment ms
  Future<DiagnosticReportTemplateFHIRModel> getTriage();
  Future<DiagnosticReportTemplateFHIRModel> updateTriage({
    required DiagnosticReportTemplateFHIRModel triage,
  });
  Future<void> saveTriage({
    required DiagnosticReportTemplateFHIRModel triage,
  });
  Future<void> deleteTriage();

  Future<TriagePostModel> saveTriageResponse({
    required TriagePostModel triageResponse,
  });
  Future<TriagePostModel> getTriageResponse();

  Future<void> saveTriageQuestionnaireLocally({
    required List<PostTriageQuestionModel> triageQuestionnaireResponse,
  });
  Future<void> saveTriageVisualAcuityLocally({
    required List<PostTriageObservationsModel> triageVisualAcuity,
  });
  Future<void> saveTriageEyeScanLocally({
    required List<PostTriageImagingSelectionModel> triageEyeScan,
  });
  Future<List<PostTriageQuestionModel>> getQuestionaireResponse();
  Future<List<PostTriageObservationsModel>> getVisionAcuityTumblingResponse();
  Future<List<PostTriageImagingSelectionModel>> getTriageEyeScanResponse();

  Future<void> resetTriage();
  Future<int> getTriageCurrentStep();
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
  Future<DiagnosticReportTemplateFHIRModel> getTriage() async {
    logger.d({
      "getTriage": "Getting Triage Locally",
    });
    final response = await triageDBHelper.getTriageAssessment();
    if (response.isNotEmpty) {
      final triageAssessment =
          DiagnosticReportTemplateFHIRModel.fromJson(response);
      return triageAssessment;
    } else {
      throw Exception("No Triage Assessment Found");
    }
  }

  @override
  Future<void> saveTriage(
      {required DiagnosticReportTemplateFHIRModel triage}) async {
    logger.d({
      "saveTriage": json.encode(triage),
    });
    await triageDBHelper.insertTriageAssessment(triageAssessment: triage);
  }

  @override
  Future<DiagnosticReportTemplateFHIRModel> updateTriage(
      {required DiagnosticReportTemplateFHIRModel triage}) {
    // TODO: implement updateTriage
    throw UnimplementedError();
  }

  @override
  Future<TriagePostModel> getTriageResponse() async {
    final response = await triageDBHelper.getTriageAssessmentResponse();
    if (response.isNotEmpty) {
      final triageAssessment = TriagePostModel.fromJson(response);
      return triageAssessment;
    } else {
      throw Exception("No Triage Assessment Found");
    }
  }

  @override
  Future<TriagePostModel> saveTriageResponse(
      {required TriagePostModel triageResponse}) async {
    logger.d({
      "saveTriageResponse": json.encode(triageResponse),
    });
    await triageDBHelper.insertTriageResponse(triageResponse: triageResponse);
    await triageDBHelper.deleteAllTriageSteps();
    return triageResponse;
  }

  @override
  Future<void> saveTriageQuestionnaireLocally({
    required List<PostTriageQuestionModel> triageQuestionnaireResponse,
  }) async {
    logger.d({
      "saveTriageQuestionnaireLocally":
          json.encode(triageQuestionnaireResponse),
    });

    await triageDBHelper.insertTriageQuestionnaire(
      triageQuestionnaire: triageQuestionnaireResponse,
    );
  }

  @override
  Future<void> saveTriageVisualAcuityLocally({
    required List<PostTriageObservationsModel> triageVisualAcuity,
  }) async {
    logger.d({
      "saveTriageVisualAcuityLocally": json.encode(triageVisualAcuity),
    });

    await triageDBHelper.insertTriageVisualAcuity(
      triageVisualAcuity: triageVisualAcuity,
    );
  }

  @override
  Future<void> saveTriageEyeScanLocally({
    required List<PostTriageImagingSelectionModel> triageEyeScan,
  }) async {
    logger.d({
      "saveTriageEyeScanLocally": json.encode(triageEyeScan),
    });

    triageDBHelper.insertTriageEyeScan(triageEyeScan: triageEyeScan);
  }

  @override
  Future<List<PostTriageQuestionModel>> getQuestionaireResponse() async {
    List<PostTriageQuestionModel> response =
        await triageDBHelper.getTriageQuestionnaire();
    return response;
  }

  @override
  Future<List<PostTriageImagingSelectionModel>>
      getTriageEyeScanResponse() async {
    List<PostTriageImagingSelectionModel> response =
        await triageDBHelper.getTriageEyeScan();
    return response;
  }

  @override
  Future<List<PostTriageObservationsModel>>
      getVisionAcuityTumblingResponse() async {
    List<PostTriageObservationsModel> response =
        await triageDBHelper.getTriageVisualAcuity();
    return response;
  }

  @override
  Future<void> resetTriage() async {
    await triageDBHelper.deleteAllTriageSteps();
  }

  @override
  Future<int> getTriageCurrentStep() async {
    return await triageDBHelper.getTriageCurrentStep();
  }
}

var triageLocalSourceProvider = Provider<TriageLocalSource>(
  (ref) => TriageLocalSourceImpl(ref.watch(triageDBHelperProvider)),
);
