import 'package:flutter/material.dart';
import 'package:chatbot/models/diagnostic_report_template_FHIR_model.dart';
import 'package:chatbot/text_to_speech.dart';
import 'package:chatbot/triage_questionnaire_service.dart';
import 'package:chatbot/widgets/triage_question_image.dart';

class ChatMessage {
  final String message;
  final bool isMe;
  final DateTime? time;
  final QuestionnaireItemFHIRModel? question;
  bool isAnswered;

  ChatMessage({
    required this.message,
    required this.isMe,
    this.time,
    this.question,
  }) : isAnswered = false;

  void markAsAnswered() {
    isAnswered = true;
  }

  Map<String, dynamic> toJson() {
    return {
      "message": message,
      "isMe": isMe,
      // Add data too
    };
  }

  static ChatMessage fromJson(Map<String, dynamic> jsonMap) {
    return ChatMessage(
      message: jsonMap["message"] ?? "MESSAGE",
      isMe: jsonMap["isMe"] ?? true,
      // Add date too
    );
  }
}

class ChatMessageTile extends StatelessWidget {
  const ChatMessageTile({
    super.key,
    required this.message,
    this.onOptionSelect,
  });
  final ChatMessage message;
  final void Function(QuestionnaireItemFHIRModel, String)? onOptionSelect;

  @override
  Widget build(BuildContext context) {
    final question = message.question;
    bool isQuestion = question != null;
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment:
            message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 300),
            decoration: BoxDecoration(
              color: message.isMe
                  ? Colors.blueGrey
                  : (isQuestion ? Colors.deepPurple : Colors.blue),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: _buildQuestion(message),
          ),
          IconButton(
            icon: const Icon(Icons.play_circle),
            onPressed: () {
              // flutterTts.speak(message.message);
            },
            color: Colors.blue,
          )
        ],
      ),
    );
  }

  Widget _buildQuestion(ChatMessage message) {
    final question = message.question;
    bool isQuestion = question != null;

    final chatText = Text(
      message.message,
      style: TextStyle(
        color: Colors.white,
        fontSize: isQuestion ? 20 : 16.0,
      ),
    );
    return !isQuestion
        ? chatText
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              chatText,
              Container(
                margin: const EdgeInsets.only(bottom: 6),
                child: Stack(
                  children: [
                    question.type == QuestionnaireType.Choice
                        ? TriageQuestionImage(question: question)
                        : Container(),
                    question.type == QuestionnaireType.Choice
                        ? Positioned(
                            bottom: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _buildOptions(),
                            ),
                          )
                        : _buildOptions()
                  ],
                ),
              )
            ],
          );
  }

  Widget _buildOptions() {
    QuestionnaireType? questionType = message.question?.type;
    if (message.isAnswered || questionType == QuestionnaireType.String) {
      return Container();
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildNoOption(),
        _buildYesOption(),
      ],
    );
  }

  IconButton _buildOption(bool isYes) {
    return IconButton(
      onPressed: () {
        // (onOptionSelect ?? () {})(isYes ? TriageOption.YES : TriageOption.NO);
        onOptionSelect!(
            message.question!,
            resolveTriageOptionText(
                (isYes ? TriageOption.YES : TriageOption.NO)));
      },
      icon: (message.question?.type == QuestionnaireType.Group
          ? Text(
              isYes ? "YES" : "NO",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.9),
            )
          : Icon(isYes ? Icons.check : Icons.close)),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            isYes ? Colors.green.shade700 : Colors.pink.shade700),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
    );
    // return message.question?.type == QuestionnaireType.Group
    //     ? Text(
    //         isYes ? "YES" : "NO",
    //         style: TextStyle(
    //             color: Colors.white.withOpacity(0.8),
    //             fontWeight: FontWeight.w700,
    //             letterSpacing: 0.9),
    //       )
    //     : Icon(isYes ? Icons.check : Icons.close);
  }

  IconButton _buildNoOption() => _buildOption(false);
  IconButton _buildYesOption() => _buildOption(true);
}
