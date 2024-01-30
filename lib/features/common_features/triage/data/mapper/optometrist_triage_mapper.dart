import 'dart:math';

import 'package:eye_care_for_all/core/providers/global_optometrician_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/optometrician_triage_response.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/provider/optometritian_feedback_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../../../main.dart';

class OptometristTriageMapper {
  OptometristTriageMapper();
  static List<Map<String, dynamic>> convertTriageQuestionnaire(
    DiagnosticReportTemplateFHIRModel triageResponse,
    List<QuestionResponse> questionnaire,
  ) {
    logger.d("questionnaire in mapper is : $questionnaire");
    List<QuestionnaireItemFHIRModel> questionnaireItem =
        triageResponse.questionnaire!.questionnaireItem!;
    List<Map<String, dynamic>> output = [];

    for (var question in questionnaire) {
      for (var item in questionnaireItem) {
        logger.d({
          "question.questionCode": question.questionCode,
          "item.id": item.id,
        });
        if ((question.questionCode != null && item.id != null) &&
            (question.questionCode == item.id && question.response == true)) {
          output.add({
            'questionCode': question.questionCode,
            'response': item.text,
            // Add other properties from the item or question as needed
          });
        }
      }
    }
    logger.d("output is $output");
    return output;
  }

  static OptometristTriageResponse convertToTriage({
    required List<PostTriageImagingSelectionModel> imagingSelection,
    required List<PostTriageObservationsModel> observations,
    required List<PostTriageQuestionModel> questionResponse,
    required Ref ref,
    required String patientId,
    required String educationalQualification,
    required String profession,
    required double totalUrgency,
    required double questionnaireUrgency,
    required double observationUrgency,
    required DateTime? assessmentStartTime,
    required String questionnaireRemark,
  }) {
    logger.d(
        "imaging selection $imagingSelection \n observations $observations \n questionResponse $questionResponse \n ref $ref \n patientId $patientId \n educationalQualification $educationalQualification \n profession $profession \n totalUrgency $totalUrgency \n questionnaireUrgency $questionnaireUrgency \n observationUrgency $observationUrgency \n assessmentStartTime $assessmentStartTime \n questionnaireRemark $questionnaireRemark");
    return OptometristTriageResponse(
      id: null,
      uuid: _generateUniqueKey(),
      patientId: patientId,
      patientAge: null,
      patientGender: null,
      patientEducation: educationalQualification,
      patientProfession: profession,
      source: ref.read(globalOptometricianProvider).appName,
      reportId: null,
      enounterId: null,
      organizationCode: 7,
      assessmentCode: _generateUniqueNumber(),
      assessmentStartTime: assessmentStartTime,
      assessmentEndTime: DateTime.now(),
      physicalAssessmentStartTime: assessmentStartTime,
      physicalAssessmentEndTime: DateTime.now(),
      capturedBy: ref.read(globalOptometricianProvider).preferredUsername,
      overallUrgency: _totalurgencyMapper(totalUrgency),
      questionnaireRemarks: questionnaireRemark,
      questionResponse: getQuestionnaireResponse(questionResponse),
      questionnaireUrgency: _questionnaireurgencyMapper(questionnaireUrgency),
      questionnaireReview: _review("questionnaire", ref),
      observations: getObservations(observations),
      observationsRemarks: null,
      observationsUrgency: _visualAcuityurgencyMapper(observationUrgency),
      observationReview: _review("observation", ref),
      mediaCapture: getImagingSelection(imagingSelection),
      eyeScanReview: _review("eyeScan", ref),
      assessmentCompleted: true,
      acuityTestcompleted: true,
      eyeScanCompleted: true,
      mobileAssessmentCompleted: true,
      physicalAssessmentCompleted: true,
      overallReview: _review("overall", ref),
      questionnaireScore: questionnaireUrgency.toString(),
      observationScore: observationUrgency.toString(),
      eyeScanScore: "1",
      assessmentAssistance: ref.read(feedBackProvider).assessmentAssistance,
      visualAcuityAssistance: ref.read(feedBackProvider).visualAcuityAssistance,
      visualAcuityAided: ref.read(feedBackProvider).visualAcuityAided,
      eyeScanAssistance: ref.read(feedBackProvider).eyeScanAssistance,
    );
  }

  static List<QuestionResponse>? getQuestionnaireResponse(
    List<PostTriageQuestionModel> questionnaireResponse,
  ) {
    List<QuestionResponse> output = [];
    for (var question in questionnaireResponse) {
      output.add(
        QuestionResponse(
          questionCode: question.linkId,
          response: _getAnswer(question.answers),
        ),
      );
    }
    return output;
  }

  static _getAnswer(List<PostTriageAnswerModel>? answers) {
    if (answers == null) return false;
    for (var answer in answers) {
      if (answer.value.toString().toLowerCase().contains("no")) {
        return false;
      } else {
        return true;
      }
    }
  }

  static List<Observation>? getObservations(
      List<PostTriageObservationsModel> observations) {
    List<Observation> output = [];
    for (var observation in observations) {
      output.add(
        Observation(
          observationCode: observation.id,
          response: observation.score,
        ),
      );
    }
    return output;
  }

  static List<MediaCapture>? getImagingSelection(
      List<PostTriageImagingSelectionModel> imagingSelection) {
    List<MediaCapture> output = [];
    output.addAll([
      MediaCapture(
        mediaCode: imagingSelection.first.id,
        encodingType: "base64-RIGHT",
        fileName:
            "${imagingSelection.first.baseUrl}${imagingSelection.first.endpoint}",
        fileType: "JPG",
      ),
      MediaCapture(
        mediaCode: imagingSelection.last.id,
        encodingType: "base64-LEFT",
        fileName:
            "${imagingSelection.last.baseUrl}${imagingSelection.last.endpoint}",
        fileType: "JPG",
      ),
    ]);

    return output;
  }

  static int _generateUniqueNumber() {
    Random random = Random.secure();
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    int randomNumber = random.nextInt(999999);
    int uniqueNumber = int.parse('$timestamp$randomNumber');
    return uniqueNumber;
  }

  static String _review(String type, Ref ref) {
    final data = ref.read(feedBackProvider);
    if (type == "questionnaire") {
      return data.questionarie;
    } else if (type == "observation") {
      return data.observation;
    } else if (type == "eyeScan") {
      return data.eyeScan;
    } else if (type == "overall") {
      return data.overallReview;
    } else {
      return "";
    }
  }

  static String _generateUniqueKey() {
    String uuid = const Uuid().v4();
    String key = "WA${uuid.substring(0, 6)}";
    return key;
  }

  static Urgency _questionnaireurgencyMapper(double value) {
    if (value == 3) {
      return Urgency.RED;
    } else if (value == 2) {
      return Urgency.YELLOW;
    } else if (value == 1) {
      return Urgency.GREEN;
    } else {
      return Urgency.GREEN;
    }
  }

  static Urgency _visualAcuityurgencyMapper(double value) {
    if (value == 3) {
      return Urgency.RED;
    } else if (value == 2) {
      return Urgency.YELLOW;
    } else if (value == 1) {
      return Urgency.GREEN;
    } else {
      return Urgency.GREEN;
    }
  }

  static Urgency _totalurgencyMapper(double value) {
    if (value >= 5) {
      return Urgency.RED;
    } else if (value >= 3) {
      return Urgency.YELLOW;
    } else {
      return Urgency.GREEN;
    }
  }
}
