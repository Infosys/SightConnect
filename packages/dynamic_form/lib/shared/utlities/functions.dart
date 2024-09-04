import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/pages/form_builder_page.dart';
import 'package:dynamic_form/shared/utlities/expression_eval.dart';
import 'package:dynamic_form/widgets/form_check_box.dart';
import 'package:dynamic_form/widgets/form_chips.dart';
import 'package:dynamic_form/widgets/form_conditional_widget.dart';
import 'package:dynamic_form/widgets/form_date_picker.dart';
import 'package:dynamic_form/widgets/form_date_time_picker.dart';
import 'package:dynamic_form/widgets/form_display.dart';
import 'package:dynamic_form/widgets/form_drop_down.dart';
import 'package:dynamic_form/widgets/form_duration.dart';
import 'package:dynamic_form/widgets/form_file.dart';
import 'package:dynamic_form/widgets/form_panel_widget.dart';
import 'package:dynamic_form/widgets/form_radio.dart';
import 'package:dynamic_form/widgets/form_slider.dart';
import 'package:dynamic_form/widgets/form_switch.dart';
import 'package:dynamic_form/widgets/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../widgets/form_text_area.dart';

Widget getField(
  ElementClassEntity? field,
  GlobalKey<FormBuilderState> key,
) {
  if (field == null) {
    return Container();
  }
  switch (field.type) {
    case DynamicFormType.TEXTFIELD:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormTextField(
          field: field,
          onChanged: (value) {
            debugPrint(value);
          },
          formKey: key,
        ),
      );

    case DynamicFormType.DROPDOWN:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormDropDown(
            field: field,
            onChanged: (value) {
              globalRebuildNotifier.value = !globalRebuildNotifier.value;
              debugPrint(value.toString());
            }),
      );

    case DynamicFormType.RADIO:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormRadio(
          field: field,
          onChanged: (value) {
            globalRebuildNotifier.value = !globalRebuildNotifier.value;
            debugPrint(value.toString());
          },
        ),
      );
    case DynamicFormType.CHECKBOX:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormCheckbox(
          field: field,
          onChanged: (value) {
            debugPrint(value.toString());
          },
        ),
      );
    case DynamicFormType.FILE:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormFile(
          field: field,
          onChanged: (docs) {
            if (docs.isEmpty) {
              key.currentState?.setInternalFieldValue(field.name, null);
            } else if (docs.length == 1) {
              key.currentState?.setInternalFieldValue(field.name, docs.first);
            } else {
              key.currentState?.setInternalFieldValue(
                  field.name, docs.map((e) => e).toList());
            }

            debugPrint(docs.toString());
          },
        ),
      );
    case DynamicFormType.SWITCH:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormSwitch(
          field: field,
          onChanged: (value) {
            debugPrint(value.toString());
          },
        ),
      );

    case DynamicFormType.CHIPS:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormChip(
          field: field,
          onChanged: (value) {
            debugPrint(value.toString());
          },
        ),
      );

    case DynamicFormType.TEXTAREA:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormTextArea(
          field: field,
          formKey: key,
          onChanged: (value) {
            debugPrint(value);
          },
        ),
      );
    case DynamicFormType.CONDITIONAL:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: ConditionalWidget(
          field: field,
          formKey: key,
        ),
      );

    case DynamicFormType.DATETIME:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormDateTimePicker(
          field: field,
          onChanged: (value) {
            debugPrint(value.toString());
          },
        ),
      );
    case DynamicFormType.SLIDER:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormSlider(field: field),
      );

    case DynamicFormType.PANEL:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormPanelWidget(
          field: field,
          formKey: key,
        ),
      );

    case DynamicFormType.DATE:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormDatePicker(
          field: field,
          onChanged: (value) {
            debugPrint(value.toString());
          },
        ),
      );

    case DynamicFormType.DISPLAY:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormDisplay(field: field),
      );

    case DynamicFormType.DURATION:
      return Visibility(
        visible: computeExp(field.visibleIf, key.currentState?.instantValue),
        child: FormDuration(
          field: field,
          onChanged: (value) {
            key.currentState?.setInternalFieldValue(field.name, value);
          },
        ),
      );

    default:
      return Container();
  }
}
