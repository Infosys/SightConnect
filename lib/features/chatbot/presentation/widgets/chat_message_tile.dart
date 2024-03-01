import 'package:eye_care_for_all/features/chatbot/text_to_speech.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:flutter/material.dart';

class ChatMessage {
  final String message;
  final bool isMe;
  final DateTime? time;

  ChatMessage({
    required this.message,
    required this.isMe,
    this.time,
  });

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
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment:
            message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 300),
            decoration: BoxDecoration(
              color: message.isMe ? Colors.blueGrey : (Colors.blue),
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: Text(
              message.message,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.play_circle),
            onPressed: () {
              flutterTts.speak(message.message);
            },
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
