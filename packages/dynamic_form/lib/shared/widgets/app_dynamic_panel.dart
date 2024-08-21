import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
import 'package:dynamic_form/shared/widgets/app_card.dart';
import 'package:dynamic_form/shared/widgets/app_responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppDynamicPanel extends StatefulWidget {
  final PageElementEntity panel;
  final GlobalKey<FormBuilderState> globalFormKey;
  final String name;
  final int minRepeat;
  final int maxRepeat;

  const AppDynamicPanel({
    super.key,
    required this.panel,
    required this.globalFormKey,
    required this.name,
    required this.minRepeat,
    required this.maxRepeat,
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
    // Ensure the minimum number of panels is shown by default
    for (int i = 0; i < widget.minRepeat; i++) {
      repeatedPanelKeys.add(getUniqueKey());
    }
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
      name: widget.name,
      onSaved: (newValue) {
        formKey.currentState?.save();
        final value = formKey.currentState?.value;
        widget.globalFormKey.currentState?.fields[widget.panel.name]
            ?.didChange(value);
      },
      builder: (field) {
        return FormBuilder(
          key: formKey,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppCard(
                  child: Column(
                    children: repeatedPanelKeys
                        .map((key) => _buildRepeatedPanel(key))
                        .toList(),
                  ),
                ),
                if (repeatedPanelKeys.length < widget.maxRepeat)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton.icon(
                        onPressed: addPanel,
                        icon: const Icon(Icons.add),
                        label: const Text('Add'),
                      ),
                    ],
                  ),
              ],
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
              if (repeatedPanelKeys.length > widget.minRepeat)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton.icon(
                      onPressed: () => removePanel(key),
                      icon: const Icon(Icons.remove),
                      label: const Text('Remove'),
                    ),
                  ],
                ),
              Wrap(
                runSpacing: 16,
                alignment: WrapAlignment.start,
                children: _buildFields(widget.panel.elements, formKey, key),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'End of Panel',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(),
                    ),
                  ],
                ),
              ),
            ],
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
