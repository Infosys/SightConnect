import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/shared/utlities/functions.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
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
  Map<String, Widget> repeatedField = {};
  List<String> repeatedFieldKeys = [];

  @override
  void initState() {
    super.initState();
    repeatedField = {};
    repeatedFieldKeys = [];
    addField();
  }

  deleteField(String key) {
    Log.f(key);
    return () {
      setState(() {
        repeatedField.remove(key);
        repeatedFieldKeys.remove(key);
        formKey.currentState?.fields
            .removeWhere((key, value) => key.contains(key));
      });
    };
  }

  String getUniqueKey() {
    return DateTime.now().millisecondsSinceEpoch.toString();
  }

  void addField() {
    final key = getUniqueKey();
    setState(() {
      repeatedField[key] = _getRepeatedField(deleteField, key);
      repeatedFieldKeys.add(key);
    });
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
                    children: repeatedFieldKeys
                        .map((key) => repeatedField[key]!)
                        .toList(),
                  ),
                  IconButton(
                    onPressed: () {
                      addField();
                    },
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

  Widget _getRepeatedField(Function(String key) removeField, String fieldKey) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            children: [
              Wrap(
                runSpacing: 16,
                alignment: WrapAlignment.start,
                children:
                    _buildFields(widget.panel.elements, formKey, fieldKey),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 32),
          child: IconButton(
            onPressed: () {
              removeField(fieldKey);
            },
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
