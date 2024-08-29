import 'dart:developer';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:dynamic_form/shared/widgets/app_card.dart';
import 'package:dynamic_form/shared/widgets/app_responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppDynamicPanel extends StatefulWidget {
  final PageElementEntity panel;
  final GlobalKey<FormBuilderState> formKey;
  final String name;
  final int minRepeat;
  final int maxRepeat;
  final bool readOnly;
  final double appCardPadding;

  const AppDynamicPanel({
    super.key,
    this.readOnly = false,
    required this.panel,
    required this.formKey,
    required this.name,
    required this.minRepeat,
    required this.maxRepeat,
    required this.appCardPadding,
  });

  @override
  State<AppDynamicPanel> createState() => _AppDynamicPanelState();
}

class _AppDynamicPanelState extends State<AppDynamicPanel>
    with AutomaticKeepAliveClientMixin {
  // final formKey = GlobalKey<FormBuilderState>();
  List<String> repeatedPanelKeys = [];
  Map<String, dynamic> formatedInitialValue = {};
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    if (widget.panel.initialValue != null) {
      _createdPrefilledPanels();
    } else {
      for (int i = 0; i < widget.minRepeat; i++) {
        repeatedPanelKeys.add(getUniqueKey(i));
      }
    }
  }

  _createdPrefilledPanels() {
    try {
      List<dynamic> prefilledPanels = widget.panel.initialValue ?? [];
      log("Length: ${prefilledPanels.length}");

      for (int i = 0; i < prefilledPanels.length; i++) {
        var key = getUniqueKey(i);
        Log.f(key);
        repeatedPanelKeys.add(key);
      }
      formatedInitialValue = _formatInitialValue(prefilledPanels);
      Log.f(formatedInitialValue);
    } catch (e) {
      Log.e(" AppDynamicPanel _createdPrefilledPanels error: $e");
    }
  }

  Map<String, dynamic> _formatInitialValue(List<dynamic> prefilledPanels) {
    Map<String, dynamic> formattedValue = {};
    for (int i = 0; i < prefilledPanels.length; i++) {
      Map<String, dynamic> temp = prefilledPanels[i];
      for (var element in temp.entries) {
        formattedValue['${element.key}_${repeatedPanelKeys[i]}'] =
            element.value;
      }
    }
    return formattedValue;
  }

  void addPanel() {
    if (repeatedPanelKeys.length >= widget.maxRepeat) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Maximum limit reached'),
        ),
      );
      return;
    }

    setState(() {
      repeatedPanelKeys.add(getUniqueKey(repeatedPanelKeys.length));
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

  String getUniqueKey(int index) {
    return "[$index]";
  }

  // List<dynamic> _formatValue(Map<String, dynamic> value) {
  //   List<dynamic> toConvert = [];

  //   for (var key in repeatedPanelKeys) {
  //     Map<String, dynamic> temp = {};
  //     for (var element in value.entries) {
  //       if (element.key.contains(key)) {
  //         temp[element.key.split('_').first] = element.value;
  //       }
  //     }
  //     toConvert.add(temp);
  //   }

  //   return toConvert;
  // }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppCard(
            paddingAll: widget.appCardPadding,
            title: widget.name,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: repeatedPanelKeys
                  .map((key) => buildRepeatedPanel(key))
                  .toList(),
            ),
          ),
          if (repeatedPanelKeys.length < widget.maxRepeat)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  child: TextButton.icon(
                    onPressed: widget.readOnly ? null : addPanel,
                    icon: const Icon(Icons.add),
                    label: const Text('Add'),
                  ),
                ),
              ],
            ),
        ],
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
              if (repeatedPanelKeys.length > widget.minRepeat)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton.icon(
                      onPressed:
                          widget.readOnly ? null : () => removePanel(key),
                      icon: const Icon(Icons.remove),
                      label: const Text('Remove'),
                    ),
                  ],
                ),
              Wrap(
                runSpacing: 16,
                alignment: WrapAlignment.start,
                children: buildFields(
                  widget.panel.elements,
                  widget.formKey,
                  key,
                ),
              ),
              const SizedBox(height: 16),
              const Divider(),
            ],
          ),
        ),
      ],
    );
  }

  List<Widget> buildFields(
    List<ElementElementClassEntity>? fields,
    GlobalKey<FormBuilderState> key,
    String keyExtension,
  ) {
    if (fields == null || fields.isEmpty) {
      return [];
    }

    return fields.map((ElementElementClassEntity field) {
      String panelName = widget.panel.name;
      String fieldName = field.name;
      List<String> split = fieldName.split(panelName);
      // Log.f("$panelName$keyExtension${split[1]}");

      field = field.copyWith(
        name: "$panelName$keyExtension${split[1]}",
      );
      field = field.copyWith(
        initialValue: formatedInitialValue[field.name],
      );

      return AppResponsiveWidget(
        widget: getField(field, key),
      );
    }).toList();
  }
}
