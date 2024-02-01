import 'dart:convert';

import 'package:eye_care_for_all/features/chatbot/data/models/diagnostic_report_template_FHIR_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


// ignore: constant_identifier_names
enum TriageOption { YES, NO }

TriageOption? resolveTriageOptionFromText(String option) {
  option = option.trim().toLowerCase();
  switch (option) {
    case "yes":
      return TriageOption.YES;
    case "no":
      return TriageOption.NO;
    default:
      return null;
  }
}

String resolveTriageOptionText(TriageOption option) {
  switch (option) {
    case TriageOption.YES:
      return "Yes";
    case TriageOption.NO:
      return "No";
    default:
      return "NA";
  }
}

class TriageQuestionnaireService {
  const TriageQuestionnaireService({required this.triageQuestionsUrl});
  final Uri triageQuestionsUrl;

  Future<DiagnosticReportTemplateFHIRModel> loadQuestions() async {
    var endpoint = triageQuestionsUrl;
    debugPrint("API getTriageQuestionnaire: $endpoint");
    var response = await http.get(endpoint);
    //var response = await rootBundle.loadString("assets/triage_assessment.json");
    if (response.statusCode >= 200 && response.statusCode < 210) {
      return DiagnosticReportTemplateFHIRModel.fromJson(
          jsonDecode(response.body));
    } else {
      throw Exception("Error loading questions");
    }
  }
}
