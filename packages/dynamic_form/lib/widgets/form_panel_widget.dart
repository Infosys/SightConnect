import 'dart:developer';

import 'package:dotted_border/dotted_border.dart';
import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormPanelWidget extends StatelessWidget {
  final ElementClassEntity field;
  final GlobalKey<FormBuilderState> formKey;
  const FormPanelWidget({
    super.key,
    required this.field,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    if (field.elements == null) {
      return Container();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          field.title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 8),
        if (field.repeats)
          RepeatingFieldPanel(field: field, formKey: formKey)
        else
          Wrap(
            runSpacing: 16,
            alignment: WrapAlignment.start,
            children: field.elements!.map(
              (field) {
                return getField(field, formKey);
              },
            ).toList(),
          ),
      ],
    );
  }
}

class RepeatingFieldPanel extends StatefulWidget {
  final ElementClassEntity field;
  final GlobalKey<FormBuilderState> formKey;

  const RepeatingFieldPanel({
    super.key,
    required this.field,
    required this.formKey,
  });

  @override
  State<RepeatingFieldPanel> createState() => _RepeatingFieldPanelState();
}

class _RepeatingFieldPanelState extends State<RepeatingFieldPanel> {
  List<String> _panelKeys = [];
  int maxRepeats = 0;
  int minRepeats = 0;

  @override
  void initState() {
    super.initState();
    maxRepeats = widget.field.maxRepeat ?? 1;
    minRepeats = widget.field.minRepeat ?? 0;
    _initializeFields();
  }

  void _initializeFields() {
    final int initialCount = widget.field.minRepeat ?? 0;
    _panelKeys =
        List.generate(initialCount, (index) => _generateUniqueKey(index));
  }

  String _generateUniqueKey(int index) {
    return "${widget.field.name}[$index]";
  }

  void _addPanel() {
    if (_panelKeys.length >= maxRepeats) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Maximum limit reached'),
        ),
      );
      return;
    }
    setState(() {
      _panelKeys.add(_generateUniqueKey(_panelKeys.length));
    });
  }

  void _removePanel(int index) {
    final key = _panelKeys[index];
    log("Panel Key: $key");
    setState(() {
      _panelKeys.removeAt(index);
    });

    List<String> toDeleteKeys = widget.formKey.currentState!.fields.keys
        .where((element) => element.contains(key))
        .toList();
    log(toDeleteKeys.toString());
    for (var element in toDeleteKeys) {
      log(element);
      Future.microtask(() {
        widget.formKey.currentState?.fields[element]?.reset();
        widget.formKey.currentState?.removeInternalFieldValue(element);
      });
    }

    // Update keys of remaining panels
    for (int i = index; i < _panelKeys.length; i++) {
      _panelKeys[i] = _generateUniqueKey(i);
    }

    // Trigger a rebuild to ensure UI updates correctly
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Log.f(_panelKeys);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        for (int i = 0; i < _panelKeys.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(16),
              color: Colors.grey.shade300,
              child: Container(
                padding: const EdgeInsets.all(16),
                key: Key(_panelKeys[i]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (i >= minRepeats)
                      TextButton.icon(
                        onPressed: () => _removePanel(i),
                        icon: const Icon(Icons.remove),
                        label: const Text('Remove'),
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: widget.field.elements!.map((field) {
                        final propertyName =
                            field.name.split(widget.field.name).last;
                        final nameKey = "${widget.field.name}[$i]$propertyName";
                        field = field.copyWith(
                          name: nameKey,
                        );

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: getField(
                            field,
                            widget.formKey,
                          ),
                        );
                      }).toList(),
                    ),
                    if (_panelKeys.length < maxRepeats)
                      TextButton.icon(
                        onPressed: _addPanel,
                        icon: const Icon(Icons.add),
                        label: const Text('Add'),
                      ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
