// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:chatbot/presentation/widgets/chat_message_tile.dart';

// final chatService = ChatService();

class ChatService {
  final int CONTEXT_LIMIT;
  final Uri chatResponseUrl;
  final Uri querySuggestionsUrl;
  ChatService({
    required this.chatResponseUrl,
    required this.querySuggestionsUrl,
    this.CONTEXT_LIMIT = 5,
  });

  List<String> _previousConversation = [];

  Future<List<String>> getQuerySuggestions() async {
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({
      "conversation": _previousConversation,
    });

    debugPrint("ChatService: body: $body");
    final response = await http.post(
      querySuggestionsUrl,
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      // Request successful, handle the response
      List<String> suggestions = utf8
          .decode(
            response.body.runes.toList(),
          )
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

  Future<String?> ask(String query) async {
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({
      "message": query,
      "previousConversation": _previousConversation,
    });

    _addUserMessageToContext(query);

    debugPrint("ChatService: body: $body");
    final response = await http.post(
      chatResponseUrl,
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      // Request successful, handle the response
      final responseText = utf8.decode(
        response.body.runes.toList(),
      );
      debugPrint('Response body: ${response.body}');
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
      // (message.isMe ? _addUserMessageToContext : _addUserMessageToContext)(message.message);
      if (message.isMe) {
        _addUserMessageToContext(message.message);
      } else {
        _addChatBotMessageToContext(message.message);
      }
    }
    debugPrint("ChatService: setContext: complete");
  }

  // bool isConversationOngoing() => _previousConversation.isNotEmpty;
  bool isConversationEnded() => _previousConversation.isEmpty;
}
