import 'package:flutter_test/flutter_test.dart';

import 'package:chatbot/chatbot.dart';

void main() {
  test('Loads Chatbot Page', () {
    ChatBotPage(
      chatServiceUrl: Uri.parse(""),
      chatServiceQuerySuggestionsUrl: Uri.parse(""),
      triageQuestionnaireUrl: Uri.parse(""),
    );
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
  });
}
