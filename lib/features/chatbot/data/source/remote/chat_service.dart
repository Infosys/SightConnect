// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/chatbot/presentation/widgets/chat_message_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var chatbotProvider = Provider((ref) {
  return ChatService(ref.read(chatbotDioProvider));
});

class ChatService {
  final Dio dio;
  final int CONTEXT_LIMIT;
  ChatService(this.dio, {this.CONTEXT_LIMIT = 5});

  List<String> _previousConversation = [];

  Future<List<String>> getQuerySuggestions(String language) async {
    await Future.delayed(const Duration(seconds: 1));
    return ["Good Afternoon", "Good Evening", "Good Night"];
    const url = "query-suggestions";
    final body = jsonEncode({
      "conversation": _previousConversation,
      "language": language,
    });

    debugPrint("ChatService: body: $body");
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
          response.data
          .split("|");

      debugPrint('ChatService: unfiltered querySuggestions: $suggestions');

      suggestions = suggestions
          .where((s) => s.length < 75)
          .toList(); // Filters the list of suggestions based on the length of each suggestion. Only suggestions with a length less than 75 characters are included in the filtered list.
      debugPrint('ChatService: filtered querySuggestions: $suggestions');
      return suggestions;
    } else {
      // Request unsuccessful, handle the error
      debugPrint('Error: ${response.statusCode}');
      return [];
    }
  }

  Future<String?> ask(String query, String language) async {
    await Future.delayed(const Duration(seconds: 1));
    return "Good Morning";
    const chatResponseUrl = "stream";
    final body = jsonEncode({
      "message": query,
      "previousConversation": _previousConversation,
      "language": language,
    });

    _addUserMessageToContext(query);

    debugPrint("ChatService: body: $body");
    final response = await dio.post(
      chatResponseUrl,
      options: Options(contentType: "application/json"),
      data: body,
    );

    if (response.statusCode == 200) {
      // Request successful, handle the response
      debugPrint("Response text: ${response.data}");
      // final responseText = utf8.decode(
      //   response.data.runes.toList(),
      // );
      final responseText = response.data;
      debugPrint('Response body: ${response.data}');
      debugPrint('Response decoded body: $responseText');
      _addChatBotMessageToContext(responseText);
      return responseText;
    } else {
      // Request unsuccessful, handle the error
      debugPrint('Error: ${response.statusCode}');
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
    debugPrint("ChatService: clearContext: begin");
    _previousConversation = [];
    debugPrint("ChatService: clearContext: complete");
  }

  void setContext(List<ChatMessage> chatHistory) {
    debugPrint("ChatService: setContext: begin");
    clearContext();
    List<ChatMessage> messages = [];
    if (chatHistory.length <= CONTEXT_LIMIT) {
      // _previousConversation = chatHistory;
      debugPrint(
          "ChatService: setContext: chat history {${chatHistory.length}} <= CONTEXT_LIMIT {$CONTEXT_LIMIT}");

      messages = chatHistory;
    } else {
      debugPrint(
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
    debugPrint("ChatService: setContext: complete");
  }

  bool isConversationEnded() => _previousConversation.isEmpty;
}
