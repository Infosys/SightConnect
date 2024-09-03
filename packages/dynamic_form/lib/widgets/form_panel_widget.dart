import 'package:dotted_border/dotted_border.dart';
import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:uuid/uuid.dart';

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

class _RepeatingFieldPanelState extends State<RepeatingFieldPanel>
    with AutomaticKeepAliveClientMixin {
  List<String> repeatedPanelKeys = [];
  Map<String, dynamic> formatedInitialValue = {};
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

  _createdPrefilledPanels() {
    try {
      List<dynamic> prefilledPanels = widget.field.initialValue ?? [];
      for (int i = 0; i < prefilledPanels.length; i++) {
        var key = getUniqueKey();

        repeatedPanelKeys.add(key);
      }
      formatedInitialValue = _formatInitialValue(prefilledPanels);
    } catch (e) {
      Log.e(" AppDynamicPanel _createdPrefilledPanels error: $e");
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
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Maximum limit reached'),
        ),
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

    List<String> toDeleteKeys = widget.formKey.currentState!.fields.keys
        .where((element) => element.contains(key))
        .toList();
    for (var element in toDeleteKeys) {
      Future.microtask(() {
        widget.formKey.currentState?.fields[element]?.reset();
        widget.formKey.currentState?.removeInternalFieldValue(element);
      });
    }
    // Trigger a rebuild to ensure UI updates correctly
    setState(() {});
  }

  String getUniqueKey() {
    return uuid.v4();
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        for (int i = 0; i < repeatedPanelKeys.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(16),
              color: Colors.grey.shade300,
              child: Container(
                padding: const EdgeInsets.all(16),
                key: Key(repeatedPanelKeys[i]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (i >= minRepeats)
                      TextButton.icon(
                        onPressed: () => removePanel(repeatedPanelKeys[i]),
                        icon: const Icon(Icons.remove),
                        label: const Text('Remove'),
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: widget.field.elements!.map((field) {
                        final keyExtension = repeatedPanelKeys[i];
                        field = field.copyWith(
                          name: '${field.name}_$keyExtension',
                        );
                        field = field.copyWith(
                          initialValue: formatedInitialValue[field.name],
                          elements: field.elements?.map((e) {
                                return e.copyWith(
                                  name: '${e.name}_$keyExtension',
                                  initialValue: formatedInitialValue[
                                      '${widget.field}.${e.name}_$keyExtension'],
                                );
                              }).toList() ??
                              [],
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
                    if (repeatedPanelKeys.length < maxRepeats)
                      TextButton.icon(
                        onPressed: addPanel,
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
