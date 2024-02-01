import 'package:eye_care_for_all/features/chatbot/presentation/widgets/fading_container.dart';
import 'package:flutter/material.dart';


class ChatQuerySuggestions extends StatelessWidget {
  const ChatQuerySuggestions({
    super.key,
    required this.suggestions,
    required this.onQuerySelection,
    this.isLoading = false,
  });

  final List<String> suggestions;
  final void Function(String) onQuerySelection;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final querySuggestions = isLoading
        ? [
            "bye" * 12,
            "bye" * 13,
            "bye" * 11,
          ]
        : suggestions;
    return Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        spacing: 4,
        runSpacing: 4,
        children: querySuggestions.map((suggestion) {
          int ind = querySuggestions.indexOf(suggestion);
          final suggestionWidget = Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue.withOpacity(0.2),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(
              suggestion,
              style: TextStyle(
                color: isLoading ? Colors.transparent : Colors.blue,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
          );
          return InkWell(
            onTap: () => onQuerySelection(suggestion),
            child: isLoading
                ? FadingContainer(
                    offset: Duration(milliseconds: 250 * ind),
                    child: suggestionWidget,
                  )
                : suggestionWidget,
          );
        }).toList(),
      ),
    );
  }
}
