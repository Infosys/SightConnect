import 'dart:async';

import 'package:dotted_border/dotted_border.dart';
import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/modals/dynamic_form_modals.dart';
import 'package:dynamic_form/shared/utlities/arithmetic_expression_eval.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:uuid/uuid.dart';

class FormPanelWidget extends StatelessWidget {
  final ElementClassEntity field;
  final GlobalKey<FormBuilderState> formKey;
  final bool readOnly;
  const FormPanelWidget({
    super.key,
    required this.field,
    required this.formKey,
    this.readOnly = false,
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
        const SizedBox(height: 16),
        if (field.repeats)
          RepeatingFieldPanel(
            field: field,
            globalFormKey: formKey,
            readOnly: readOnly,
          )
        else
          Wrap(
            runSpacing: 16,
            alignment: WrapAlignment.start,
            children: field.elements!.map(
              (field) {
                return getField(field, formKey, readOnly);
              },
            ).toList(),
          ),
      ],
    );
  }
}

class RepeatingFieldPanel extends StatefulWidget {
  final ElementClassEntity field;
  final GlobalKey<FormBuilderState> globalFormKey;
  final bool readOnly;

  const RepeatingFieldPanel({
    super.key,
    required this.field,
    required this.globalFormKey,
    this.readOnly = false,
  });

  @override
  State<RepeatingFieldPanel> createState() => _RepeatingFieldPanelState();
}

class _RepeatingFieldPanelState extends State<RepeatingFieldPanel>
    with AutomaticKeepAliveClientMixin {
  Timer? _debounceTimer;
  final formKey = GlobalKey<FormBuilderState>();
  List<String> repeatedPanelKeys = [];
  Map<String, dynamic> formattedInitialValues = {};
  final Uuid uuid = const Uuid();
  int maxRepeats = 0;
  int minRepeats = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    maxRepeats = widget.field.maxRepeat ?? 0;
    minRepeats = widget.field.minRepeat ?? 0;

    if (widget.field.initialValue != null &&
        widget.field.initialValue!.isNotEmpty) {
      _createdPrefilledPanels();
    } else {
      for (int i = 0; i < minRepeats; i++) {
        repeatedPanelKeys.add(getUniqueKey());
      }
    }
  }

  void _debounceEvaluateAndRebuild() {
    if (_debounceTimer?.isActive ?? false) {
      _debounceTimer?.cancel();
    }
    _debounceTimer = Timer(const Duration(seconds: 2), () {
      evaluateDynamicExpression();
      globalRebuildNotifier.value = !globalRebuildNotifier.value;
    });
  }

  evaluateDynamicExpression() {
    final String setValueExpression = widget.field.setValueExpression ?? '';

    String operatorValue = setValueExpression.split(' ').first;
    String fieldValue = setValueExpression.split(' ').last;
    String finalExpression = '';

    switch (operatorValue) {
      case 'sum':
        for (var key in repeatedPanelKeys) {
          finalExpression += '${fieldValue}_$key + ';
          if (repeatedPanelKeys.last == key) {
            finalExpression =
                finalExpression.substring(0, finalExpression.length - 3);
          }
        }
    }
    final expressionValue = ArithmeticExpressionEvaluator.evaluate(
        finalExpression, formKey.currentState?.instantValue ?? {});

    // Log.f({
    //   'expressionValue': expressionValue,
    //   'finalExpression': finalExpression,
    //   'instantValue': formKey.currentState?.instantValue,
    // });

    widget.globalFormKey.currentState?.setInternalFieldValue(
      widget.field.name,
      expressionValue,
    );
  }

  _createdPrefilledPanels() {
    try {
      List<dynamic> prefilledPanels = widget.field.initialValue ?? [];
      // Log.d("RepeatingFieldPanel _createdPrefilledPanels: $prefilledPanels");

      for (int i = 0; i < prefilledPanels.length; i++) {
        var key = getUniqueKey();
        repeatedPanelKeys.add(key);
      }
      formattedInitialValues = _formatInitialValue(prefilledPanels);
      // Log.d(
      //     "RepeatingFieldPanel _createdPrefilledPanels: $formattedInitialValues");
    } catch (e) {
      Log.e("RepeatingFieldPanel _createdPrefilledPanels error: $e");
    }
  }

  Map<String, dynamic> _formatInitialValue(List<dynamic> prefilledPanels) {
    Map<String, dynamic> formattedValue = {};
    for (int i = 0; i < prefilledPanels.length; i++) {
      Map<String, dynamic>? temp = prefilledPanels[i];
      if (temp == null) {
        continue;
      }
      for (var element in temp.entries) {
        formattedValue['${element.key}_${repeatedPanelKeys[i]}'] =
            element.value;
      }
    }
    return formattedValue;
  }

  void addPanel() {
    if (repeatedPanelKeys.length >= maxRepeats) {
      DynamicFormModals.showSnackBar(
        context: context,
        message: 'Maximum limit reached',
      );
      return;
    }

    setState(() {
      repeatedPanelKeys.add(getUniqueKey());
    });
  }

  void removePanel(String key) {
    setState(() {
      repeatedPanelKeys.remove(key);
    });
    List<String> toDeleteKeys = formKey.currentState!.fields.keys
        .where((element) => element.contains(key))
        .toList();
    for (var element in toDeleteKeys) {
      Future.microtask(() {
        formKey.currentState?.fields[element]?.reset();
        formKey.currentState?.removeInternalFieldValue(element);
      });
    }
    // if (widget.field.setValueExpression != null) {
    //   evaluateDynamicExpression();
    //   globalRebuildNotifier.value = !globalRebuildNotifier.value;
    // }

    // Trigger a rebuild to ensure UI updates correctly
    setState(() {});
  }

  String getUniqueKey() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }

  List<dynamic> _formatValue(Map<String, dynamic> value) {
    List<dynamic> toConvert = [];

    for (var key in repeatedPanelKeys) {
      Map<String, dynamic> temp = {};
      for (var element in value.entries) {
        if (element.key.contains(key)) {
          temp[element.key.split('_').first] = element.value;
        }
      }
      toConvert.add(temp);
    }
    return toConvert;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(16),
      color: Colors.grey.shade300,
      child: Container(
        padding: const EdgeInsets.all(12),
        child: FormBuilderField(
          enabled: !widget.readOnly,
          validator: (value) {
            formKey.currentState?.validate();
            return null;
          },
          name: widget.field.name,
          onSaved: (newValue) {
            formKey.currentState?.save();
            final value = formKey.currentState?.value;
            final formatedValue = _formatValue(value ?? {});
            widget.globalFormKey.currentState?.fields[widget.field.name]
                ?.didChange(formatedValue);
          },
          builder: (field) {
            return FormBuilder(
              onChanged: () {},
              key: formKey,
              enabled: !widget.readOnly,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ...repeatedPanelKeys
                            .map((key) => buildRepeatedPanel(key)),
                        if (repeatedPanelKeys.length < maxRepeats &&
                            !widget.readOnly)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton.icon(
                                  onPressed: widget.readOnly ? null : addPanel,
                                  icon: const Icon(Icons.add),
                                  label: const Text('Add'),
                                  style: TextButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                      vertical: 8.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildRepeatedPanel(String key) {
    return Row(
      key: ValueKey(key), // Ensure each panel has a unique key
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (repeatedPanelKeys.length > minRepeats)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${widget.field.title} ${repeatedPanelKeys.indexOf(key) + 1}",
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed:
                            widget.readOnly ? null : () => removePanel(key),
                        icon: Icon(
                          Icons.delete,
                          color: widget.readOnly
                              ? Colors.grey
                              : const Color.fromARGB(255, 242, 100, 90),
                        ),
                      ),
                    ],
                  ),
                ),
              Wrap(
                runSpacing: 16,
                alignment: WrapAlignment.start,
                children: [
                  for (int i = 0; i < widget.field.elements!.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: getField(
                        widget.field.elements![i].copyWith(
                          name: '${widget.field.elements![i].name}_$key',
                          initialValue: formattedInitialValues[
                              '${widget.field.elements![i].name}_$key'],
                          // choices: _getFilteredChoices(
                          //   '${widget.field.elements![i].name}_$key',
                          //   widget.field.elements?[i].name ?? '',
                          //   widget.field.elements?[i].choices,
                          //   formKey.currentState?.instantValue ?? {},
                          // ),
                        ),
                        widget.globalFormKey,
                        widget.readOnly,
                        callBack: (value) {
                          formattedInitialValues[
                              '${widget.field.elements![i].name}_$key'] = value;

                          if (widget.field.setValueExpression != null) {
                            _debounceEvaluateAndRebuild();
                          }
                        },
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<ChoiceElementEntity> _getFilteredChoices(
    String key,
    String fieldName,
    List<ChoiceElementEntity>? choices,
    Map<String, dynamic> valueMap,
  ) {
    if (choices == null || choices.isEmpty) {
      return [];
    }

    final List<String> occupiedChoices = [];
    for (var element in valueMap.entries) {
      if (element.key.contains(fieldName) && element.key != key) {
        occupiedChoices.add(element.value.toString());
      }
    }

    final List<ChoiceElementEntity> filteredChoices = [];
    for (var element in choices) {
      if (!occupiedChoices.contains(element.name)) {
        filteredChoices.add(element);
      }
    }

    return filteredChoices.isEmpty ? [] : filteredChoices;
  }
}
