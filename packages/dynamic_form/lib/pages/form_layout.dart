import 'dart:developer';

import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/shared/widgets/app_card.dart';
import 'package:dynamic_form/shared/widgets/app_responsive_widget.dart';
import 'package:dynamic_form/widgets/form_check_box.dart';
import 'package:dynamic_form/widgets/form_chips.dart';
import 'package:dynamic_form/widgets/form_data_time_picker.dart';
import 'package:dynamic_form/widgets/form_drop_down.dart';
import 'package:dynamic_form/widgets/form_file.dart';
import 'package:dynamic_form/widgets/form_radio.dart';
import 'package:dynamic_form/widgets/form_slider.dart';
import 'package:dynamic_form/widgets/form_switch.dart';
import 'package:dynamic_form/widgets/form_text_area.dart';
import 'package:dynamic_form/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormLayout extends StatelessWidget {
  const FormLayout({
    super.key,
    required this.pages,
    required this.title,
  });
  final String title;
  final List<PageEntity> pages;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: FormBuilder(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var page in pages)
                ExpansionTile(
                  initiallyExpanded: page.name == pages.first.name,
                  title: Text(
                    page.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  children: page.elements.map((panel) {
                    if (panel.elements.isEmpty) {
                      return Container();
                    }
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AppCard(
                        title: panel.name,
                        child: Wrap(
                          runSpacing: 16,
                          children: _buildFields(panel.elements, formKey),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(
                  right: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 24.0,
                          horizontal: 32.0,
                        ),
                      ),
                      onPressed: () {
                        log(formKey.currentState!.value.toString());
                        if (formKey.currentState!.validate()) {
                          formKey.currentState?.save();
                          log(formKey.currentState!.value.toString());
                        } else {
                          print('Form validation failed');
                        }
                      },
                      child: const Text('Submit Form'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildFields(List<ElementElementClassEntity>? fields,
      GlobalKey<FormBuilderState> key) {
    if (fields == null) {
      return [];
    }

    return fields.map((field) {
      return AppResponsiveWidget(widget: getField(field, key));
    }).toList();
  }
}

Widget getField(
    ElementElementClassEntity? field, GlobalKey<FormBuilderState> key) {
  if (field == null) {
    return Container();
  }
  switch (field.type) {
    case DynamicFormType.TEXTFIELD:
      return _getSubField(field);

    case DynamicFormType.DROPDOWN:
      return FormDropDown(
          field: field,
          onChanged: (value) {
            debugPrint(value);
          });

    case DynamicFormType.RADIO:
      return FormRadio(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );
    case DynamicFormType.CHECKBOX:
      return FormCheckbox(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );
    case DynamicFormType.FILE:
      return FormFile(
        field: field,
        onChanged: (value) {
          key.currentState?.setInternalFieldValue(
              field.name, value.map((e) => e.path).toList());
          debugPrint(value.toString());
        },
      );
    case DynamicFormType.SWITCH:
      return FormSwitch(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );

    case DynamicFormType.CHIPS:
      return FormChip(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );

    case DynamicFormType.TEXTAREA:
      return FormTextArea(
        field: field,
        onChanged: (value) {
          debugPrint(value);
        },
      );

    default:
      return Container();
  }
}

_getSubField(ElementElementClassEntity? field) {
  if (field == null) {
    return Container();
  }

  switch (field.inputType) {
    case DynamicFormType.DATETIME:
      return FormDataTimePicker(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );
    case DynamicFormType.SLIDER:
      return FormSlider(field: field);

    default:
      return FormTextField(
        field: field,
        onChanged: (value) {
          debugPrint(value);
        },
      );
  }
}
