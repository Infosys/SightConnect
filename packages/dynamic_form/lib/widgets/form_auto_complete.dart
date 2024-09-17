import 'dart:async';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/services/api_service.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormAutoComplete extends StatefulWidget {
  const FormAutoComplete({
    super.key,
    required this.field,
    this.onChanged,
  });

  final ElementClassEntity field;
  final Function(String?)? onChanged;

  @override
  State<FormAutoComplete> createState() => _FormAutoCompleteState();
}

class _FormAutoCompleteState extends State<FormAutoComplete> {
  List<String> _options = [];
  bool _isLoading = false;
  Timer? _debounce;

  Future<void> _fetchOptions(String query) async {
    setState(() {
      _isLoading = true;
    });

    try {
      Log.d('Fetching options for query: $query');
      final options = await ApiService.getOptions(
        endPoint: 'https://api.example.com/options',
        query: query,
      );
      setState(() {
        _options = options;
        _isLoading = false;
      });
      Log.d('Options fetched: $_options');
    } catch (error) {
      setState(() {
        _isLoading = false;
      });
      Log.e('Error fetching options: $error');
    }
  }

  void _onTextChanged(String value) {
    Log.d('Text field changed: $value');
    if (value.isEmpty) {
      return;
    }

    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      _fetchOptions(value);
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<String>(
      name: widget.field.name,
      initialValue: widget.field.initialValue.toString(),
      builder: (field) {
        return Autocomplete<String>(
          fieldViewBuilder: (
            BuildContext context,
            TextEditingController fieldController,
            FocusNode focusNode,
            VoidCallback onFieldSubmitted,
          ) {
            return TextFormField(
              decoration: InputDecoration(
                hintText: widget.field.placeholder,
                labelText: widget.field.title,
                suffix: _isLoading
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(),
                      )
                    : null,
              ),
              controller: fieldController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              focusNode: focusNode,
              onFieldSubmitted: (_) => onFieldSubmitted(),
              onChanged: _onTextChanged,
            );
          },
          displayStringForOption: (String option) => option,
          onSelected: (String value) {
            widget.onChanged?.call(value);
            field.didChange(value);
          },
          optionsBuilder: (TextEditingValue textEditingValue) {
            Log.d('Options builder called with text: ${textEditingValue.text}');
            if (textEditingValue.text.isEmpty) {
              return const Iterable<String>.empty();
            }
            final filteredOptions = _options.where((option) {
              return option
                  .toLowerCase()
                  .contains(textEditingValue.text.toLowerCase());
            });
            Log.d('Filtered options: $filteredOptions');
            return filteredOptions;
          },
        );
      },
    );
  }
}
