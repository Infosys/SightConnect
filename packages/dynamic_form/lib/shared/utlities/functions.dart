import 'package:dynamic_form/data/entities/dynamic_form_json_entity.dart';
import 'package:dynamic_form/data/enums/enums.dart';
import 'package:dynamic_form/shared/utlities/expression_eval.dart';
import 'package:dynamic_form/shared/widgets/page_widget.dart';
import 'package:dynamic_form/widgets/form_check_box.dart';
import 'package:dynamic_form/widgets/form_chips.dart';
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

void handleOnChanged(dynamic value) {
  globalRebuildNotifier.value = !globalRebuildNotifier.value;
  debugPrint(value.toString());
}

Widget getField(
  ElementClassEntity? field,
  GlobalKey<FormBuilderState> key,
  bool readOnly,
) {
  if (field == null) {
    return Container();
  }
  switch (field.type) {
    case DynamicFormType.TEXTFIELD:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormTextField(
          field: field,
          onChanged: (value) => handleOnChanged(value),
          formKey: key,
        ),
      );
    case DynamicFormType.DROPDOWN:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormDropDown(
          field: field,
          onChanged: (value) => handleOnChanged(value),
        ),
      );
    case DynamicFormType.RADIO:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormRadio(
          field: field,
          onChanged: (value) => handleOnChanged(value),
        ),
      );
    case DynamicFormType.CHECKBOX:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormCheckbox(
          field: field,
          onChanged: (value) => handleOnChanged(value),
        ),
      );
    case DynamicFormType.FILE:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormFile(
          readOnly: readOnly,
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
            handleOnChanged(docs);
          },
        ),
      );
    case DynamicFormType.SWITCH:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormSwitch(
          field: field,
          onChanged: (value) => handleOnChanged(value),
        ),
      );
    case DynamicFormType.CHIPS:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormChip(
          field: field,
          onChanged: (value) => handleOnChanged(value),
        ),
      );
    case DynamicFormType.TEXTAREA:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormTextArea(
          field: field,
          formKey: key,
          onChanged: (value) => handleOnChanged(value),
        ),
      );
    case DynamicFormType.DATETIME:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormDateTimePicker(
          field: field,
          onChanged: (value) => handleOnChanged(value),
        ),
      );
    case DynamicFormType.SLIDER:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormSlider(field: field),
      );
    case DynamicFormType.PANEL:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormPanelWidget(
          readOnly: readOnly,
          field: field,
          formKey: key,
        ),
      );
    case DynamicFormType.DATE:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormDatePicker(
          field: field,
          onChanged: (value) => handleOnChanged(value),
        ),
      );
    case DynamicFormType.DISPLAY:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormDisplay(field: field),
      );
    case DynamicFormType.DURATION:
      return VisibilityWrapper(
        field: field,
        formKey: key,
        child: FormDuration(
          field: field,
          onChanged: (value) {
            key.currentState?.setInternalFieldValue(field.name, value);
            handleOnChanged(value);
          },
        ),
      );
    case DynamicFormType.CONDITIONAL:
      return const SizedBox.shrink();
    default:
      return const SizedBox.shrink();
  }
}

class VisibilityWrapper extends StatefulWidget {
  const VisibilityWrapper({
    super.key,
    required this.child,
    required this.field,
    required this.formKey,
  });
  final Widget child;
  final ElementClassEntity field;
  final GlobalKey<FormBuilderState> formKey;

  @override
  State<VisibilityWrapper> createState() => _VisibilityWrapperState();
}

class _VisibilityWrapperState extends State<VisibilityWrapper> {
  @override
  Widget build(BuildContext context) {
    final isVisible = computeExp(
        widget.field.visibleIf, widget.formKey.currentState?.instantValue);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isVisible) {
        widget.formKey.currentState
            ?.setInternalFieldValue(widget.field.name, null);
      }
    });
    return isVisible ? widget.child : const SizedBox.shrink();
  }
}
