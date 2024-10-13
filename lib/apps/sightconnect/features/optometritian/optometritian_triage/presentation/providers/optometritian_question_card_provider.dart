/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/triage/data/models/optometrician_triage_response.dart';
import '../../../../../common/triage/domain/models/triage_assessment_model.dart';

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
            if (question.code == questionResponse.questionCode ||
                question.id == questionResponse.questionCode &&
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
