import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/chatbot/presentation/widgets/chat_message_tile.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var chatbotProvider = Provider((ref) {
  return ChatService(ref.watch(chatbotDioProvider));
});

class ChatService {
  final Dio dio;
  final int CONTEXT_LIMIT;
  ChatService(this.dio, {this.CONTEXT_LIMIT = 5});

  List<String> _previousConversation = [];

  Future<List<String>> getQuerySuggestions(String language) async {
    // await Future.delayed(const Duration(seconds: 1));
    // return ["Good Afternoon", "Good Evening", "Good Night"];
    const url = "query-suggestions";
    final body = jsonEncode({
      "conversation": _previousConversation,
      "language": language,
    });

    logger.d("ChatService: body: $body");
    final response = await dio.post(
      url,
      options: Options(contentType: "application/json"),
      data: body,
    );

    if (response.statusCode == 200) {
      // Request successful, handle the response
      List<String> suggestions =
          // utf8
          //     .decode(
          //       response.data.runes.toList(),
          //     )
          response.data.split("|");

      logger.d('ChatService: unfiltered querySuggestions: $suggestions');

      suggestions = suggestions
          .where((s) => s.length < 75)
          .toList(); // Filters the list of suggestions based on the length of each suggestion. Only suggestions with a length less than 75 characters are included in the filtered list.
      logger.d('ChatService: filtered querySuggestions: $suggestions');
      return suggestions;
    } else {
      // Request unsuccessful, handle the error
      logger.d('Error: ${response.statusCode}');
      return [];
    }
  }

  Future<String?> ask(String query, String language) async {
    // await Future.delayed(const Duration(seconds: 1));
    // return "Good Morning";
    const chatResponseUrl = "stream";
    final body = jsonEncode({
      "message": query,
      "previousConversation": _previousConversation,
      "language": language,
    });

    _addUserMessageToContext(query);

    logger.d("ChatService: body: $body");
    final response = await dio.post(
      chatResponseUrl,
      options: Options(contentType: "application/json"),
      data: body,
    );

    if (response.statusCode == 200) {
      // Request successful, handle the response
      logger.d("Response text: ${response.data}");
      // final responseText = utf8.decode(
      //   response.data.runes.toList(),
      // );
      final responseText = response.data;
      logger.d('Response body: ${response.data}');
      logger.d('Response decoded body: $responseText');
      _addChatBotMessageToContext(responseText);
      return responseText;
    } else {
      // Request unsuccessful, handle the error
      logger.d('Error: ${response.statusCode}');
      return null;
    }
  }

  void _addChatBotMessageToContext(String message) {
    _addMessageToContext("ASSISTANT: $message");
  }

  void _addUserMessageToContext(String message) {
    _addMessageToContext("USER: $message");
  }

  void _addMessageToContext(String message) {
    if (_previousConversation.length >= CONTEXT_LIMIT) {
      // Limit reached
      _previousConversation.removeAt(0);
    }
    _previousConversation.add(message);
  }

  void clearContext() {
    logger.d("ChatService: clearContext: begin");
    _previousConversation = [];
    logger.d("ChatService: clearContext: complete");
  }

  void setContext(List<ChatMessage> chatHistory) {
    logger.d("ChatService: setContext: begin");
    clearContext();
    List<ChatMessage> messages = [];
    if (chatHistory.length <= CONTEXT_LIMIT) {
      // _previousConversation = chatHistory;
      logger.d(
          "ChatService: setContext: chat history {${chatHistory.length}} <= CONTEXT_LIMIT {$CONTEXT_LIMIT}");

      messages = chatHistory;
    } else {
      logger.d(
          "ChatService: setContext: chat history {${chatHistory.length}} > CONTEXT_LIMIT {$CONTEXT_LIMIT}");
      // Get the last CONTEXT_LIMIT messages
      messages = chatHistory.sublist(chatHistory.length - CONTEXT_LIMIT);
    }

    for (final message in messages) {
      if (message.isMe) {
        _addUserMessageToContext(message.message);
      } else {
        _addChatBotMessageToContext(message.message);
      }
    }
    logger.d("ChatService: setContext: complete");
  }

  bool isConversationEnded() => _previousConversation.isEmpty;
}
