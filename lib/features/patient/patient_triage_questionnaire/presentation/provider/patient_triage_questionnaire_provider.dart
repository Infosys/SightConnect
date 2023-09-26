import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/data/model/triage_question.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/model/triage_response.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageQuestionnaireProvider = ChangeNotifierProvider(
  (ref) => PatientTriageQuestionnaireProvider(),
);

class PatientTriageQuestionnaireProvider extends ChangeNotifier {
  int index = 0;

  setIndex(int newIndex) {
    index = newIndex;
    notifyListeners();
  }

  List<TriageQuestion> questions = [
    TriageQuestion(
      qNo: 1,
      question: "Are you facing sudden loss of vision?",
      answers: [
        TriageQuestionResponse(answer: "Yes"),
        TriageQuestionResponse(answer: "No"),
      ],
    ),
    TriageQuestion(
      qNo: 2,
      question:
          "Is your vision not clear or disturbed? Choose the symptoms you are facing.",
      answers: [
        TriageQuestionResponse(answer: "Coloured Haloes"),
        TriageQuestionResponse(answer: "Curtain like appearances"),
        TriageQuestionResponse(answer: "Decreased vision"),
        TriageQuestionResponse(answer: "Double vision Chronic condition"),
        TriageQuestionResponse(answer: "Difficulty looking at light"),
        TriageQuestionResponse(answer: "Waviness of vision"),
        TriageQuestionResponse(answer: "Flashes of light"),
        TriageQuestionResponse(answer: "Floaters seeing dark spots"),
        TriageQuestionResponse(answer: "Loss of field of vision"),
      ],
    ),
    TriageQuestion(
      qNo: 3,
      question: "Are you experiencing any of the below changes in your eye?",
      answers: [
        TriageQuestionResponse(answer: "Watering of eye"),
        TriageQuestionResponse(answer: "Redness of eye"),
        TriageQuestionResponse(answer: "Discharge/stickiness of eye"),
        TriageQuestionResponse(
            answer: "White spots in the black part of the eye"),
        TriageQuestionResponse(answer: "Irritation"),
        TriageQuestionResponse(answer: "Burning of eye"),
        TriageQuestionResponse(answer: "Pain"),
        TriageQuestionResponse(answer: "Foreign body sensation"),
        TriageQuestionResponse(answer: "Twitching of eye"),
        TriageQuestionResponse(answer: "Frequent blinking"),
        TriageQuestionResponse(answer: "Deviation of eyes"),
        TriageQuestionResponse(answer: "Squeezing of eyes"),
        TriageQuestionResponse(answer: "Drooping of eyes"),
        TriageQuestionResponse(answer: "Bulging of eyes"),
        TriageQuestionResponse(answer: "Difference in size of eyes"),
      ],
    )
  ];

  void updateAnswer({
    required int questionIndex,
    required int answerIndex,
  }) {
    questions[questionIndex].answers[answerIndex].isAnswered =
        !questions[questionIndex].answers[answerIndex].isAnswered;
    notifyListeners();
  }

  TriageResponse getTriageQuestionnaireResponse() {
    List<TraigeQuestion> triageResponse = [];
    int counter = 1;

    for (int i = 0; i < questions.length; i++) {
      for (int j = 0; j < questions[i].answers.length; j++) {
        triageResponse.add(
          TraigeQuestion(
            questionID: "q$counter",
            symptoms: questions[i].answers[j].answer,
            weightage: 1,
            isSelected: questions[i].answers[j].isAnswered,
          ),
        );
        counter++;
      }
    }

    return TriageResponse(
      id: 0,
      json: triageResponse.toString(),
    );
  }
}

class TraigeQuestion {
  String questionID; //q1,q2,q3
  String symptoms; //color halos,curtain like appearance
  int weightage; //1,2,3
  bool isSelected; //true,false

  TraigeQuestion({
    required this.questionID,
    required this.symptoms,
    required this.weightage,
    this.isSelected = false,
  });

  @override
  String toString() {
    return 'TraigeQuestion(questionID: $questionID, symptoms: $symptoms, weightage: $weightage, isSelected: $isSelected)';
  }
}
