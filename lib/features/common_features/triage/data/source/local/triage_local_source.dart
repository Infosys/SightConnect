import 'dart:convert';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_assessment_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'triage_db_helper.dart';

abstract class TriageLocalSource {
  Future<TriageAssessmentModel> getTriage();
  Future<TriageAssessmentModel> updateTriage({
    required TriageAssessmentModel triage,
  });
  Future<void> saveTriage({
    required TriageAssessmentModel triage,
  });
  Future<void> deleteTriage();

  Future<TriageResponseModel> saveTriageResponse({
    required TriageResponseModel triageResponse,
  });
  Future<TriageResponseModel> getTriageResponse();

  Future<void> saveTriageQuestionnaireLocally({
    required List<PostQuestionResponseModel> triageQuestionnaireResponse,
  });
  Future<void> saveTriageVisualAcuityLocally({
    required List<PostObservationsModel> triageVisualAcuity,
  });
  Future<void> saveTriageEyeScanLocally({
    required List<PostImagingSelectionModel> triageEyeScan,
  });
  Future<List<PostQuestionResponseModel>> getQuestionaireResponse();
  Future<List<PostObservationsModel>> getVisionAcuityTumblingResponse();
  Future<List<PostImagingSelectionModel>> getTriageEyeScanResponse();
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
  Future<TriageAssessmentModel> getTriage() async {
    logger.d({
      "getTriage": "Getting Triage Locally",
    });
    final response = await triageDBHelper.getTriageAssessment();
    if (response.isNotEmpty) {
      final triageAssessment = TriageAssessmentModel.fromJson(response);
      return triageAssessment;
    } else {
      throw Exception("No Triage Assessment Found");
    }
  }

  @override
  Future<TriageResponseModel> getTriageResponse() async {
    final response = await triageDBHelper.getTriageAssessmentResponse();
    if (response.isNotEmpty) {
      final triageAssessment = TriageResponseModel.fromJson(response);
      return triageAssessment;
    } else {
      throw Exception("No Triage Assessment Found");
    }
  }

  @override
  Future<void> saveTriage({required TriageAssessmentModel triage}) async {
    logger.d({
      "saveTriage": json.encode(triage),
    });
    await triageDBHelper.insertTriageAssessment(triageAssessment: triage);
  }

  @override
  Future<TriageResponseModel> saveTriageResponse(
      {required TriageResponseModel triageResponse}) async {
    await triageDBHelper.insertTriageResponse(triageResponse: triageResponse);
    await triageDBHelper.deleteAllTriageSteps();
    return triageResponse;
  }

  @override
  Future<void> saveTriageQuestionnaireLocally({
    required List<PostQuestionResponseModel> triageQuestionnaireResponse,
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
    required List<PostObservationsModel> triageVisualAcuity,
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
    required List<PostImagingSelectionModel> triageEyeScan,
  }) async {
    logger.d({
      "saveTriageEyeScanLocally": json.encode(triageEyeScan),
    });

    triageDBHelper.insertTriageEyeScan(triageEyeScan: triageEyeScan);
  }

  @override
  Future<List<PostQuestionResponseModel>> getQuestionaireResponse() async {
    List<PostQuestionResponseModel> response =
        await triageDBHelper.getTriageQuestionnaire();
    return response;
  }

  @override
  Future<List<PostImagingSelectionModel>> getTriageEyeScanResponse() async {
    List<PostImagingSelectionModel> response =
        await triageDBHelper.getTriageEyeScan();
    return response;
  }

  @override
  Future<List<PostObservationsModel>> getVisionAcuityTumblingResponse() async {
    List<PostObservationsModel> response =
        await triageDBHelper.getTriageVisualAcuity();
    return response;
  }

  @override
  Future<TriageAssessmentModel> updateTriage(
      {required TriageAssessmentModel triage}) {
    // TODO: implement updateTriage
    throw UnimplementedError();
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
