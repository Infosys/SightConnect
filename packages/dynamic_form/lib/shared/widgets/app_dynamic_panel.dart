import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
import 'package:dynamic_form/shared/widgets/app_card.dart';
import 'package:dynamic_form/shared/widgets/app_responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppDynamicPanel extends StatefulWidget {
  final PageElementEntity panel;
  final GlobalKey<FormBuilderState> globalFormKey;
  const AppDynamicPanel({
    super.key,
    required this.panel,
    required this.globalFormKey,
  });

  @override
  State<AppDynamicPanel> createState() => _AppDynamicPanelState();
}

class _AppDynamicPanelState extends State<AppDynamicPanel> {
  final formKey = GlobalKey<FormBuilderState>();
  List<String> repeatedPanelKeys = [];

  @override
  void initState() {
    super.initState();
    addPanel();
  }

  void addPanel() {
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

    // Trigger a rebuild to ensure UI updates correctly
    setState(() {});
  }

  String getUniqueKey() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      name: widget.panel.name,
      onSaved: (newValue) {
        formKey.currentState?.save();
        final value = formKey.currentState?.value;
        widget.globalFormKey.currentState?.fields[widget.panel.name]
            ?.didChange(value);
      },
      builder: (field) {
        return FormBuilder(
          key: formKey,
          child: AppCard(
            marginBottom: 16,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: repeatedPanelKeys
                        .map((key) => _buildRepeatedPanel(key))
                        .toList(),
                  ),
                  IconButton(
                    onPressed: addPanel,
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildRepeatedPanel(String key) {
    return Row(
      key: ValueKey(key), // Ensure each panel has a unique key
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            children: [
              Wrap(
                runSpacing: 16,
                alignment: WrapAlignment.start,
                children: _buildFields(widget.panel.elements, formKey, key),
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 32),
          child: IconButton(
            onPressed: () => removePanel(key),
            icon: const Icon(Icons.delete),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildFields(
    List<ElementElementClassEntity>? fields,
    GlobalKey<FormBuilderState> key,
    String keyExtension,
  ) {
    if (fields == null || fields.isEmpty) {
      return [];
    }

    return fields.map((ElementElementClassEntity field) {
      field = field.copyWith(
        name: '${field.name}_$keyExtension',
      );
      return AppResponsiveWidget(
        widget: getField(field, key),
      );
    }).toList();
  }
}
