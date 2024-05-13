import 'package:eye_care_for_all/core/services/app_info_service.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/common_features/chatbot/data/enum/standard_action.dart';
import 'package:eye_care_for_all/features/common_features/chatbot/data/models/chat_query_resolver.dart';
import 'package:eye_care_for_all/features/common_features/chatbot/data/source/remote/chat_service.dart';
import 'package:eye_care_for_all/features/common_features/chatbot/presentation/widgets/chat_intent_view.dart';
import 'package:eye_care_for_all/features/common_features/chatbot/presentation/widgets/chat_message_composer.dart';
import 'package:eye_care_for_all/features/common_features/chatbot/presentation/widgets/chat_message_tile.dart';
import 'package:eye_care_for_all/features/common_features/chatbot/presentation/widgets/chat_query_suggestions.dart';
import 'package:eye_care_for_all/features/common_features/chatbot/presentation/widgets/loading_indicator.dart';
import 'package:eye_care_for_all/features/common_features/chatbot/text_to_speech.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/helpers/show_triage_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatBotPage extends ConsumerStatefulWidget {
  const ChatBotPage({
    super.key,
    required this.selectedLanguage,
    required this.selectedLanguageCode,
    required this.welcomeMessage,
    this.defaultQuerySuggestions = const [],
    this.loadChatHistory,
    this.saveChatHistory,
    this.onSendChatMessage,
    this.onReceiveChatMessage,
  });

  final List<String> defaultQuerySuggestions;
  final String selectedLanguage;
  final String selectedLanguageCode;
  final String welcomeMessage;
  final Future<List<ChatMessage>> Function()? loadChatHistory;
  final Future<dynamic> Function(List<ChatMessage>)? saveChatHistory;
  final Future<void> Function(ChatMessage)? onSendChatMessage;
  final Future<void> Function(ChatMessage)? onReceiveChatMessage;

  @override
  ConsumerState<ChatBotPage> createState() => _ChatBotPageState();
}

class _ChatBotPageState extends ConsumerState<ChatBotPage> {
  // State variables
  // LanguageOption _selectedLanguage = LanguageOption.en;
  List<ChatMessage> _chatMessages = [];
  List<String> _querySuggestions = [];
  bool _isLoading = false;
  bool _isLoadingQuerySuggestions = false;
  ChatIntent? _currentIntent;

  late ChatService _chatService;
  late Future<List<ChatMessage>> Function() _loadChatHistory;
  late Future<dynamic> Function(List<ChatMessage>) _saveChatHistory;

  // Init methods
  @override
  void initState() {
    _chatService = ChatService(ref.read(chatbotDioProvider), CONTEXT_LIMIT: 8);

    _loadChatHistory = widget.loadChatHistory != null
        ? widget.loadChatHistory!
        : () async => <ChatMessage>[];

    _saveChatHistory =
        widget.saveChatHistory != null ? widget.saveChatHistory! : (_) async {};

    _initChat();
    _initTts();

    super.initState();
  }

  Future _initChat() async {
    // Load chat history if any

    final chatHistory = await _loadChatHistory();
    logger.d("Chat History: Loaded: $chatHistory");

    List<String> querySuggestions = widget.defaultQuerySuggestions;

    if (chatHistory.isEmpty) {
      _chatMessage(ChatMessage(
        // message: "Hi, How may I help you today?",
        message: widget.welcomeMessage,
        isMe: false,
      ));
    } else {
      if (chatHistory.length > 1) {
        querySuggestions = await _getQuerySuggestions();
      }
      setState(() {
        _chatMessages.addAll(chatHistory);
      });
    }
    setState(() {
      _querySuggestions = querySuggestions;
    });
  }

  Future _initTts() async {
    _setTtsLang(widget.selectedLanguageCode);
  }

  // Cleanup methods
  @override
  void dispose() {
    _saveChatHistory(_chatMessages);
    _chatService.clearContext(); // TODO: Make this conditional
    super.dispose();
  }

  // Utils
  Future _setTtsLang(String language) async {
    await flutterTts.setLanguage(
        language); // English option is working for every other language as of now.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppInfoService.appName),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: _chatMessages.length,
                reverse: true,
                itemBuilder: (_, ind) {
                  final messages = _chatMessages.reversed.toList();
                  return ChatMessageTile(
                    message: messages[ind],
                  );
                },
              ),
            ),

            // Loading indicator
            _buildLoadingIndicator(),

            // List of possible followups
            const SizedBox(
              height: 8,
            ),
            ChatQuerySuggestions(
              suggestions: _querySuggestions,
              onQuerySelection: _onChatMessageSubmit,
              isLoading: _isLoadingQuerySuggestions,
            ),
            const SizedBox(
              height: 16,
            ),

            ChatIntentView(intent: _currentIntent),

            _buildClearChatButton(),

            // Text Field
            ChatMessageComposer(
              selectedLanguage: widget.selectedLanguageCode,
              enabled: !_isLoading,
              onTextChange: (newText) {
                // logger.d("Changed text: $newText");
              },
              onSubmit: _onChatMessageSubmit,
            )
          ],
        ),
      ),
    );
  }

  // UI builders
  Widget _buildLoadingIndicator() {
    if (!_isLoading) return Container();
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LoadingIndicator(),
        ],
      ),
    );
  }

  Widget _buildClearChatButton() {
    final loc = context.loc!;
    if (_chatMessages.length < 2 || _isLoading) {
      return Container();
    }
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _chatService.clearContext();
            _chatMessages = [];
            _saveChatHistory([]).then((value) => _initChat());
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
          margin: const EdgeInsets.only(bottom: 8),
          child: Text(loc.chatClearChat),
        ),
      ),
    );
  }

  // UI Methods
  void _myMessage(ChatMessage message) {
    widget.onSendChatMessage?.call(message);
    setState(() {
      _chatMessages.add(message);
      _querySuggestions = [];
      _isLoading = true;
      _currentIntent = null;
    });
  }

  void _chatMessage(ChatMessage message) {
    widget.onReceiveChatMessage?.call(message);
    setState(() {
      _chatMessages.add(message);
      _isLoading = false;
    });
  }

  Future _onChatMessageSubmit(String message) async {
    _myMessage(
      ChatMessage(
        message: message,
        isMe: true,
      ),
    );

    final standardAction = ChatQueryResolver.getStandardAction(
        message, widget.selectedLanguageCode);

    if (standardAction != null) {
      return _handleStandardAction(standardAction);
    }

    _askChatBot(message);
  }

  Future _handleStandardAction(StandardAction action) async {
    final loc = context.loc!;
    switch (action) {
      case StandardAction.startTriageEyeAssessment:
        setState(() {
          _chatMessage(ChatMessage(
              message: loc.chatEyeAssessmentRecommended, isMe: false));
          _currentIntent = ChatIntent(
            question: loc.chatDoYouWantToTakeTheTriageEyeAssessment,
            yesHandler: () {
              showTriageBottomSheet(context: context);
              setState(() {
                _currentIntent = null;
              });
            },
            noHandler: () {
              setState(() {
                _currentIntent = null;
              });
            },
          );
        });
        break;
      default:
        break;
    }
    return;
  }

  Future _askChatBot(String message) async {
    final loc = context.loc!;
    try {
      final response = await _chatService.ask(message, widget.selectedLanguage);

      if (response != null) {
        _chatMessage(
          ChatMessage(message: response, isMe: false),
        );
      }
    } catch (e) {
      logger.d("ChatBotPage: _askChatBot: Error: $e");
      Fluttertoast.showToast(msg: loc.chatChatbotNotAvailable);
      setState(() {
        _isLoading = false;
      });
      return;
    }

    // Ask for query suggestions
    final suggestions = await _getQuerySuggestions();
    setState(() {
      _querySuggestions = suggestions;
    });
  }

  Future<List<String>> _getQuerySuggestions() async {
    setState(() {
      _isLoadingQuerySuggestions = true;
    });
    final suggestions =
        await _chatService.getQuerySuggestions(widget.selectedLanguage);
    setState(() {
      _isLoadingQuerySuggestions = false;
    });
    return suggestions;
  }
}
