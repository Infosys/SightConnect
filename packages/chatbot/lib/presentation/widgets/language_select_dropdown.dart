import 'package:flutter/material.dart';
import 'package:chatbot/utils/language_utils.dart';

class LanguageSelectDropdown extends StatefulWidget {
  const LanguageSelectDropdown({
    super.key,
    required this.selectedLanguage,
    required this.onLanguageChange,
  });

  final LanguageOption selectedLanguage;
  final void Function(LanguageOption?) onLanguageChange;

  @override
  State<LanguageSelectDropdown> createState() => _LanguageSelectDropdownState();
}

class _LanguageSelectDropdownState extends State<LanguageSelectDropdown> {
  // LanguageOption _selectedLanguage = LanguageOption.en;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: DropdownButton<LanguageOption>(
        value: widget.selectedLanguage,
        onChanged: widget.onLanguageChange,
        items: LanguageOption.values
            .map(
              (languageOption) => DropdownMenuItem<LanguageOption>(
                value: languageOption,
                child: Text(
                  resolveLanguageName(languageOption),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
