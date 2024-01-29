import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/triage/data/models/optometrician_triage_response.dart';
import '../../../../common_features/triage/domain/models/triage_assessment_model.dart';

var optometritianQuestionCardProvider = ChangeNotifierProvider(
  (ref) => OptometritianQuestionCardProvider(),
);

class OptometritianQuestionCardProvider extends ChangeNotifier {
  List<Map<String, List<String>>> getMatchingQuestionStatements(
    List<QuestionResponse> questionResponses,
    TriageAssessment triageAssessment,
  ) {
    final List<Map<String, List<String>>> matchingStatements = [];

    for (final questionnaireSection
        in triageAssessment.questionnaireSections ?? []) {
      for (final questionnaire in questionnaireSection.questionnaire ?? []) {
        final String description = questionnaire.description ?? '';
        final List<String> statements = [];

        for (final question in questionnaire.questions ?? []) {
          for (final questionResponse in questionResponses) {
            if (question.code == questionResponse.questionCode || question.id == questionResponse.questionCode &&
                questionResponse.response == true) {
              statements.add(question.statement ?? '');
            } 
          }
        }
        matchingStatements.add({
          'description': [description],
          'statements': statements,
        });
      }
    }

    return matchingStatements;
  }
}
