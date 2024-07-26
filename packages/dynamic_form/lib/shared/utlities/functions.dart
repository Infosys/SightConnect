import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/widgets/form_check_box.dart';
import 'package:dynamic_form/widgets/form_chips.dart';
import 'package:dynamic_form/widgets/form_date_time_picker.dart';
import 'package:dynamic_form/widgets/form_drop_down.dart';
import 'package:dynamic_form/widgets/form_file.dart';
import 'package:dynamic_form/widgets/form_radio.dart';
import 'package:dynamic_form/widgets/form_slider.dart';
import 'package:dynamic_form/widgets/form_switch.dart';
import 'package:dynamic_form/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../widgets/form_text_area.dart';

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
    case DynamicFormType.CONDITIONAL:
      return Column(children: _buildConditionalFields(field, key));

    default:
      return Container();
  }
}

List<Widget> _buildConditionalFields(
    ElementElementClassEntity? field, GlobalKey<FormBuilderState> key) {
  if (field == null || field.conditions == null) {
    return [];
  }

  final List<Widget> widgets = [];
  final String? dependantField = field.dependantField;
  String selectedValue = key.currentState?.fields[dependantField]?.value ?? '';

  for (final condition in field.conditions!) {
    if (condition.value == selectedValue) {
      for (final subField in condition.fields) {
        widgets.add(getField(subField, key));
      }
    }
  }

  return widgets;
}

_getSubField(ElementElementClassEntity? field) {
  if (field == null) {
    return Container();
  }

  switch (field.inputType) {
    case DynamicFormType.DATETIME:
      return FormDateTimePicker(
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
