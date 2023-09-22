class TriageQuestion {
  int qNo;
  String question;
  List<TriageQuestionResponse> answers;

  TriageQuestion({
    required this.qNo,
    required this.question,
    required this.answers,
  });

  @override
  String toString() =>
      'TriageQuestion(qNo: $qNo, question: $question, answers: $answers)';
}

class TriageQuestionResponse {
  String answer;
  bool isAnswered;

  TriageQuestionResponse({
    required this.answer,
    this.isAnswered = false,
  });

  @override
  String toString() =>
      'TriageQuestionResponse(answer: $answer, isAnswered: $isAnswered)';
}
