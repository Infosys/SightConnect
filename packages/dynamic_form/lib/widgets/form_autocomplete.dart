import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/services/api_service.dart';
import 'package:flutter/material.dart';

class FormAutocomplete extends StatelessWidget {
  const FormAutocomplete({
    super.key,
    required this.field,
    this.onChanged,
  });

  final ElementClassEntity field;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
        future:
            ApiService.getOptions(endPoint: 'https://api.example.com/options'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return const Text('Error loading options');
          }
          if (!snapshot.hasData) {
            return const Text('No options available');
          }
          final options = snapshot.data!;

          return Autocomplete<String>(
            fieldViewBuilder: (
              BuildContext context,
              TextEditingController fieldController,
              FocusNode focusNode,
              VoidCallback onFieldSubmitted,
            ) {
              return TextFormField(
                controller: fieldController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                focusNode: focusNode,
                onFieldSubmitted: (_) => onFieldSubmitted(),
                onChanged: (value) {
                  onSelected.call(value);
                },
              );
            },
            displayStringForOption: (String option) => option,
            onSelected: onSelected,
            optionsBuilder: (TextEditingValue textEditingValue) {
              return options.where((option) {
                return option
                    .toLowerCase()
                    .contains(textEditingValue.text.toLowerCase());
              }).toList();
            },
          );
        });
  }

  onSelected(String value) {}
}
