import 'dart:convert';

import 'package:eye_care_for_all/features/common_features/triage/data/models/assessment_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/post_imaging_selection_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/post_observations_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/post_question_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'triage_db_helper.dart';

abstract class TriageLocalSource {
  Future<AssessmentResponseModel> getTriage();
  Future<AssessmentResponseModel> updateTriage(
      {required AssessmentResponseModel triage});
  Future<void> saveTriage({required AssessmentResponseModel triage});
  Future<void> deleteTriage();
  Future<TriageModel> saveTriageResponse({required TriageModel triageResponse});
  Future<TriageModel> getTriageResponse();
  Future<void> saveTriageQuestionnaireLocally(
      {required List<PostQuestionResponseModel> triageQuestionnaireResponse});
  Future<void> saveTriageVisualAcuityLocally(
      {required List<PostObservationsModel> triageVisualAcuity});
  Future<void> saveTriageEyeScanLocally(
      {required List<PostImagingSelectionModel> triageEyeScan});

  Future<List<PostQuestionResponseModel>> getQuestionaireResponse();
  Future<List<PostObservationsModel>> getVisionAcuityTumblingResponse();
  Future<List<PostImagingSelectionModel>> getTriageEyeScanResponse();

  Future<void> resetTriage();
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
  Future<AssessmentResponseModel> getTriage() async {
    logger.f("No Internet Connection - Getting Triage from Local DB");
    final response = await triageDBHelper.getTriageAssessment();
    if (response.isNotEmpty) {
      final triageAssessment = AssessmentResponseModel.fromJson(response);
      return triageAssessment;
    } else {
      throw Exception("No Triage Assessment Found");
    }
  }

  @override
  Future<TriageModel> getTriageResponse() async {
    final response = await triageDBHelper.getTriageAssessmentResponse();
    if (response.isNotEmpty) {
      final triageAssessment = TriageModel.fromJson(response);
      return triageAssessment;
    } else {
      throw Exception("No Triage Assessment Found");
    }
  }

  @override
  Future<void> saveTriage({required AssessmentResponseModel triage}) async {
    logger.f("Saving Triage to Local DB");
    triageDBHelper.insertTriageAssessment(triageAssessment: triage);
  }

  @override
  Future<TriageModel> saveTriageResponse(
      {required TriageModel triageResponse}) async {
    await triageDBHelper.insertTriageResponse(triageResponse: triageResponse);
    await triageDBHelper.deleteAllTriageSteps();
    return triageResponse;
  }

  @override
  Future<void> saveTriageQuestionnaireLocally(
      {required List<PostQuestionResponseModel>
          triageQuestionnaireResponse}) async {
    logger.f(triageQuestionnaireResponse);
    logger.f(
        "Saving Triage Questionnaire to Local DB${json.encode(triageQuestionnaireResponse)}}");
    triageDBHelper.insertTriageQuestionnaire(
        triageQuestionnaire: triageQuestionnaireResponse);
  }

  @override
  Future<void> saveTriageVisualAcuityLocally(
      {required List<PostObservationsModel> triageVisualAcuity}) async {
    logger.f(
        "Saving Triage Visual Acuity to Local DB ${json.encode(triageVisualAcuity)}");
    triageDBHelper.insertTriageVisualAcuity(
        triageVisualAcuity: triageVisualAcuity);
  }

  @override
  Future<void> saveTriageEyeScanLocally(
      {required List<PostImagingSelectionModel> triageEyeScan}) async {
    logger
        .f("Saving Triage Eye Scan to Local DB ${json.encode(triageEyeScan)}}");
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
  Future<AssessmentResponseModel> updateTriage(
      {required AssessmentResponseModel triage}) {
    // TODO: implement updateTriage
    throw UnimplementedError();
  }

  @override
  Future<void> resetTriage() async {
    await triageDBHelper.deleteAllTriageSteps();
  }
}

var triageLocalSourceProvider = Provider<TriageLocalSource>(
  (ref) => TriageLocalSourceImpl(ref.watch(triageDBHelperProvider)),
);
