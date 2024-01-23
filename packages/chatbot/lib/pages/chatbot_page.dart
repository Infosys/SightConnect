import 'package:flutter/material.dart';
import 'package:chatbot/constants/app_constants.dart';
import 'package:chatbot/constants/url_endpoints.dart';
import 'package:chatbot/diagnostic_report_template_FHIR_model.dart';
import 'package:chatbot/chat_service.dart';
import 'package:chatbot/standard_responses.dart';
import 'package:chatbot/text_to_speech.dart';
import 'package:chatbot/triage_questionnaire_service.dart';
import 'package:chatbot/widgets/chat_message_composer.dart';
import 'package:chatbot/widgets/chat_message_tile.dart';
import 'package:chatbot/widgets/chat_query_suggestions.dart';
import 'package:chatbot/widgets/language_select_dropdown.dart';
import 'package:chatbot/utils/language_utils.dart';
import 'package:chatbot/third_party/local_storage.dart';
import 'package:chatbot/widgets/loading_indicator.dart';

class ChatBotPage extends StatefulWidget {
  const ChatBotPage({super.key});

  @override
  State<ChatBotPage> createState() => _ChatBotPageState();
}

final chatService = ChatService(
  baseUrl: UrlEndPoints.getChatServiceBaseUrl(
    AppConstants.chatServiceIP,
    AppConstants.chatServicePort,
  ),
  CONTEXT_LIMIT: 8,
);

class _ChatBotPageState extends State<ChatBotPage> {
  // State variables
  LanguageOption _selectedLanguage = LanguageOption.en;
  List<ChatMessage> _chatMessages = [];
  List<String> _querySuggestions = [];
  bool _isLoading = false;
  bool _isLoadingQuerySuggestions = false;
  List<QuestionnaireItemFHIRModel> _triageQuestionnaire = [];
  final Map<QuestionnaireItemFHIRModel, String> _triageResponses = {};
  // List<String> _triageResponses = [];
  int _currentQuestionIndex = -1;
  bool _isAssessmentGoingOn = false;

  // Init methods
  @override
  void initState() {
    _initChat();
    _initTts();
    // LocalStorage.init();

    super.initState();
  }

  Future _initChat() async {
    // Load chat history if any
    final chatHistory = await LocalStorage.getChatHistory();
    debugPrint("Chat History: Loaded: $chatHistory");

    List<String> querySuggestions = AppConstants.defaultQuerySuggestions;

    if (chatHistory.isEmpty) {
      _chatMessage(ChatMessage(
        message: "Hi, How may I help you today?",
        isMe: false,
      ));
    } else {
      chatService.setContext(chatHistory.toList());

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
    _setTtsLang(_selectedLanguage);
  }

  Future _initEyeAssessment() async {
    final questions = await TriageQuestionnaireService.loadQuestions();

    setState(() {
      _isAssessmentGoingOn = true;
      _currentQuestionIndex = 0;
      _triageQuestionnaire = questions.questionnaire?.questionnaireItem ?? [];

      final firstQuestion = _triageQuestionnaire[0];
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
    // List<Map<String, dynamic>> chatHistory =
    //     _chatMessages.reversed.map((e) => e.toJson()).toList();
    // debugPrint("Chat History: ${jsonEncode(chatHistory)}");
    LocalStorage.setChatHistory(_chatMessages);

    chatService.clearContext(); // TODO: Make this conditional
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
      _querySuggestions = AppConstants.defaultQuerySuggestions;
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
  Future _setTtsLang(LanguageOption lang) async {
    // await flutterTts.setLanguage(resolveLocale(_selectedLanguage));
    await flutterTts.setLanguage(resolveLocale(LanguageOption
        .en)); // English option is working for every other language as of now.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("SightConnect"),
            LanguageSelectDropdown(
              selectedLanguage: _selectedLanguage,
              onLanguageChange: _onLanguageChange,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Chat messages
            Flexible(
              child: ListView.builder(
                itemCount: _chatMessages.length,
                reverse: true,
                itemBuilder: (_, ind) {
                  // final messages = [..._chatMessages.reversed];
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
              selectedLanguage: _selectedLanguage,
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
            chatService.clearContext();
            _chatMessages = [];
            LocalStorage.setChatHistory([]).then((value) => _initChat());
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
      // _chatMessages.insert(0, message);
      _chatMessages.add(message);
      _querySuggestions = [];
      _isLoading = true;
    });
  }

  void _chatMessage(ChatMessage message) {
    // debugPrint("Initial Message: ${message.toJson()}");
    setState(() {
      // _chatMessages.insert(0, message);
      _chatMessages.add(message);
      _isLoading = false;
      // if (!_isAssessmentGoingOn) {
      //   _querySuggestions = AppConstants.defaultQuerySuggestions;
      // }
    });
  }

  // Handlers
  void _onLanguageChange(LanguageOption? newLanguage) async {
    final newLang = newLanguage ?? LanguageOption.en;
    debugPrint("LanguageChanged: $newLang");
    await _setTtsLang(newLang);
    setState(() {
      _selectedLanguage = newLang;
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

    StandardAction? action = await resolveStandardAction(message);

    if (action != null) {
      return _handleStandardAction(action);
    }

    _askChatBot(message);
  }

  Future _askChatBot(String message) async {
    final response = await chatService.ask(message);

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
    final suggestions = await chatService.getQuerySuggestions();
    await Future.delayed(Durations.extralong4);
    setState(() {
      _isLoadingQuerySuggestions = false;
      // _querySuggestions = suggestions;
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
