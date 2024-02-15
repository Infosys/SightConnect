import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/chatbot/data/source/remote/chat_service.dart';
import 'package:eye_care_for_all/features/chatbot/presentation/widgets/chat_message_composer.dart';
import 'package:eye_care_for_all/features/chatbot/presentation/widgets/chat_message_tile.dart';
import 'package:eye_care_for_all/features/chatbot/presentation/widgets/chat_query_suggestions.dart';
import 'package:eye_care_for_all/features/chatbot/presentation/widgets/loading_indicator.dart';
import 'package:eye_care_for_all/features/chatbot/standard_responses.dart';
import 'package:eye_care_for_all/features/chatbot/text_to_speech.dart';
import 'package:eye_care_for_all/features/chatbot/utils/triage_utils.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/action_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/questionnaire_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatBotPage extends ConsumerStatefulWidget {
  const ChatBotPage({
    super.key,
    this.defaultQuerySuggestions = const [],
    this.loadedTriageQuestionnaire = const [],
    this.loadChatHistory,
    this.saveChatHistory,
    required this.selectedLanguage,
    required this.selectedLanguageCode,
  });

  final List<String> defaultQuerySuggestions;
  final List<QuestionnaireItemFHIRModel> loadedTriageQuestionnaire;
  final String selectedLanguage;
  final String selectedLanguageCode;
  final Future<List<ChatMessage>> Function()? loadChatHistory;
  final Future<dynamic> Function(List<ChatMessage>)? saveChatHistory;

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
  List<QuestionnaireItemFHIRModel> _triageQuestionnaire = [];
  final Map<QuestionnaireItemFHIRModel, String> _triageResponses = {};
  int _currentQuestionIndex = -1;
  bool _isAssessmentGoingOn = false;

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
    debugPrint("Chat History: Loaded: $chatHistory");

    List<String> querySuggestions = widget.defaultQuerySuggestions;

    if (chatHistory.isEmpty) {
      _chatMessage(ChatMessage(
        message: "Hi, How may I help you today?",
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

  Future _initEyeAssessment() async {
    debugPrint(
        "Loaded Triage Questionnaire: ${widget.loadedTriageQuestionnaire}");

    if (widget.loadedTriageQuestionnaire.isEmpty) {
      debugPrint("No Triage Questionnaire loaded");
      setState(() {
        _querySuggestions = widget.defaultQuerySuggestions;
        _chatMessage(
          ChatMessage(
            message:
                "Unable to load questions at the moment. Is there anything else I can help you with?",
            isMe: false,
          ),
        );
      });
      return;
    }

    setState(() {
      _isAssessmentGoingOn = true;
      _currentQuestionIndex = 0;
      _triageQuestionnaire = widget.loadedTriageQuestionnaire;
      debugPrint("Triage Questions: $_triageQuestionnaire");

      final firstQuestion = _triageQuestionnaire[0];
      debugPrint("First Questions: $firstQuestion");

      _chatMessage(
        ChatMessage(
          message: firstQuestion.text!,
          isMe: false,
          question: firstQuestion,
        ),
      );
    });
  }

  // Cleanup methods
  @override
  void dispose() {
    _saveChatHistory(_chatMessages);
    _chatService.clearContext(); // TODO: Make this conditional
    super.dispose();
  }

  Future _endEyeAssessment() async {
    // Do something with the stored responses
    debugPrint(
        "Eye Assessment Result: Last Question: ${_triageResponses[_triageQuestionnaire[_triageQuestionnaire.length - 1]]}");

    setState(() {
      _isAssessmentGoingOn = false;
      _currentQuestionIndex = -1;
      _triageQuestionnaire = [];
      _querySuggestions = widget.defaultQuerySuggestions;
    });

    _chatMessage(
      ChatMessage(
        message: _triageResponses.length > 1
            ? "Your Eye Assessment is done. You can view the results in \"My Assessments\" Section"
            : "Well that was quick :)",
        isMe: false,
      ),
    );
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
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("SightConnect"),
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
                    onOptionSelect: _onAssessmentResponse,
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

            _buildClearChatButton(),

            // Text Field
            ChatMessageComposer(
              selectedLanguage: widget.selectedLanguageCode,
              enabled: !_isLoading,
              onTextChange: (newText) {
                debugPrint("Changed text: $newText");
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
    if (_chatMessages.length < 2 || _isLoading || _isAssessmentGoingOn) {
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
          child: const Text("Clear Chat"),
        ),
      ),
    );
  }

  // UI Methods
  void _myMessage(ChatMessage message) {
    setState(() {
      _chatMessages.add(message);
      _querySuggestions = [];
      _isLoading = true;
    });
  }

  void _chatMessage(ChatMessage message) {
    setState(() {
      _chatMessages.add(message);
      _isLoading = false;
    });
  }

  Future _onChatMessageSubmit(String message) async {
    if (_isAssessmentGoingOn) {
      final currentQuestion = _triageQuestionnaire[_currentQuestionIndex];
      return _onAssessmentResponse(currentQuestion, message);
    }

    _myMessage(
      ChatMessage(
        message: message,
        isMe: true,
      ),
    );

    StandardAction? action = await resolveStandardAction(message, widget.selectedLanguageCode);

    if (action != null) {
      return _handleStandardAction(action);
    }

    _askChatBot(message);
  }

  Future _askChatBot(String message) async {
    final response = await _chatService.ask(message, widget.selectedLanguage);

    if (response != null) {
      _chatMessage(
        ChatMessage(message: response, isMe: false),
      );
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
    final suggestions = await _chatService.getQuerySuggestions(widget.selectedLanguage);
    setState(() {
      _isLoadingQuerySuggestions = false;
    });
    return suggestions;
  }

  Future _onAssessmentResponse(
    QuestionnaireItemFHIRModel question,
    String response,
  ) async {
    final option = resolveTriageOptionFromText(response);

    if (option == null && question.type != QuestionnaireType.String) return;
    /**
     * option == null       | question.type != QuestionnaireType.String
     * ----------------------------------------------------------------
     * true                 | false         --> Last Question, Something other than YES/NO.         (Continue)    false
     * true                 | true          --> Not the Last Question, Something other than YES/NO. (Do nothing)  true
     * false                | false         --> Last Question, YES/NO                               (Continue)    false
     * false                | true          --> Not the Last Question, YES/NO                       (Continue)    false
     */

    debugPrint("Current index: $_currentQuestionIndex, Response: $option");

    _triageResponses[question] = response;
    // _triageResponses.add(response);
    _currentQuestionIndex += 1;
    setState(() {
      _chatMessages[0].markAsAnswered();
    });

    _myMessage(ChatMessage(message: response, isMe: true));

// Handle checkpoint question
    bool continueAssessment =
        _currentQuestionIndex < _triageQuestionnaire.length;

    if (question.actionOn!.isNotEmpty && option != null) {
      continueAssessment = continueAssessment &&
          await _handleCheckpointQuestion(question, option);
    }

    if (!continueAssessment) {
      return _endEyeAssessment();
    }

    final nextQuestion = _triageQuestionnaire[_currentQuestionIndex];
    _chatMessage(
      ChatMessage(
        message: nextQuestion.text!,
        isMe: false,
        question: nextQuestion,
      ),
    );
  }

  Future<bool> _handleCheckpointQuestion(
      QuestionnaireItemFHIRModel question, TriageOption response) async {
    // Return true to continue assessment, false to end assessment
    if (question.actionOn![0].actionType! == ActionType.EXIT_QUESTIONNAIRE &&
        response == TriageOption.NO) {
      return false;
    }
    return true;
  }

  Future _handleStandardAction(StandardAction action) async {
    debugPrint("Executing a standard action");
    switch (action) {
      case StandardAction.eyeAssessment:
        _initEyeAssessment();
        break;
      default:
        throw Exception("Unhandled Action: $action");
    }
  }
}
