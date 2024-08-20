import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/pages/form_builder_page.dart';
import 'package:dynamic_form/widgets/form_check_box.dart';
import 'package:dynamic_form/widgets/form_chips.dart';
import 'package:dynamic_form/widgets/form_conditional_widget.dart';
import 'package:dynamic_form/widgets/form_date_picker.dart';
import 'package:dynamic_form/widgets/form_date_time_picker.dart';
import 'package:dynamic_form/widgets/form_display.dart';
import 'package:dynamic_form/widgets/form_drop_down.dart';
import 'package:dynamic_form/widgets/form_file.dart';
import 'package:dynamic_form/widgets/form_nested_pannel_widget.dart';
import 'package:dynamic_form/widgets/form_radio.dart';
import 'package:dynamic_form/widgets/form_slider.dart';
import 'package:dynamic_form/widgets/form_switch.dart';
import 'package:dynamic_form/widgets/form_text_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../widgets/form_text_area.dart';

Widget getField(
  ElementElementClassEntity? field,
  GlobalKey<FormBuilderState> key,
) {
  if (field == null) {
    return Container();
  }
  switch (field.type) {
    case DynamicFormType.TEXTFIELD:
      return FormTextField(
        field: field,
        onChanged: (value) {
          // debugPrint(value);
        },
      );

    case DynamicFormType.DROPDOWN:
      return FormDropDown(
          field: field,
          onChanged: (value) {
            globalRebuildNotifier.value = !globalRebuildNotifier.value;
            debugPrint(value);
          });

    case DynamicFormType.RADIO:
      return FormRadio(
        field: field,
        onChanged: (value) {
          globalRebuildNotifier.value = !globalRebuildNotifier.value;
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
              field.name,
              value.map((e) {
                if (kIsWeb) {
                  return e.bytes;
                }
                return e.path;
              }).toList());
          // debugPrint(value.toString());
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
      return ConditionalWidget(
        field: field,
        formKey: key,
      );

    case DynamicFormType.DATETIME:
      return FormDateTimePicker(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );
    case DynamicFormType.SLIDER:
      return FormSlider(field: field);

    case DynamicFormType.PANEL:
      return FormNestedPannelWidget(
        field: field,
        formKey: key,
      );

    case DynamicFormType.DATE:
      return FormDatePicker(
        field: field,
        onChanged: (value) {
          debugPrint(value.toString());
        },
      );

    case DynamicFormType.DISPLAY:
      return FormDisplay(field: field);

    default:
      return Container();
  }
}
