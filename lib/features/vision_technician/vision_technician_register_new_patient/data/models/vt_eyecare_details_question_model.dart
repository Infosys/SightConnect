class EyeCareDetailsQuestionModel {

  int questionId = 0;

  String question;

  String answer;

  String answerDescription;
 
  EyeCareDetailsQuestionModel({

    required this.questionId,

    required this.question,

    required this.answer,

    this.answerDescription = '', // Field initializer added

  });
 
  @override

  String toString() {

    return 'EyeCareDetailsQuestionModel(question: $question, answer: $answer, answerDescription: $answerDescription)';

  }

}